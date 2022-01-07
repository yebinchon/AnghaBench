; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i64, i32 }

@HOSTAPD_CHAN_SURVEY_LIST_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acs_cleanup(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %5
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %18, i64 %20
  store %struct.hostapd_channel_data* %21, %struct.hostapd_channel_data** %4, align 8
  %22 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %23 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @HOSTAPD_CHAN_SURVEY_LIST_INITIALIZED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %30 = call i32 @acs_clean_chan_surveys(%struct.hostapd_channel_data* %29)
  br label %31

31:                                               ; preds = %28, %13
  %32 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %33 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %32, i32 0, i32 2
  %34 = call i32 @dl_list_init(i32* %33)
  %35 = load i32, i32* @HOSTAPD_CHAN_SURVEY_LIST_INITIALIZED, align 4
  %36 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %37 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %41 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5

45:                                               ; preds = %5
  %46 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %47 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %49 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  ret void
}

declare dso_local i32 @acs_clean_chan_surveys(%struct.hostapd_channel_data*) #1

declare dso_local i32 @dl_list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
