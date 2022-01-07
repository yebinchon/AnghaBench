; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_survey_all_chans_intereference_factor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_survey_all_chans_intereference_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ACS: Survey analysis for channel %d (%d MHz)\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ACS:  * interference factor average: %Lg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_iface*)* @acs_survey_all_chans_intereference_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acs_survey_all_chans_intereference_factor(%struct.hostapd_iface* %0) #0 {
  %2 = alloca %struct.hostapd_iface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %49, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %8 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %6, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %5
  %14 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %15 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %18, i64 %20
  store %struct.hostapd_channel_data* %21, %struct.hostapd_channel_data** %4, align 8
  %22 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %23 = call i32 @acs_usable_chan(%struct.hostapd_channel_data* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  br label %49

26:                                               ; preds = %13
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %28 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %29 = call i32 @is_in_chanlist(%struct.hostapd_iface* %27, %struct.hostapd_channel_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %49

32:                                               ; preds = %26
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %35 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %38 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.hostapd_iface*, %struct.hostapd_iface** %2, align 8
  %42 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %43 = call i32 @acs_survey_chan_interference_factor(%struct.hostapd_iface* %41, %struct.hostapd_channel_data* %42)
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %4, align 8
  %46 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %32, %31, %25
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %5

52:                                               ; preds = %5
  ret void
}

declare dso_local i32 @acs_usable_chan(%struct.hostapd_channel_data*) #1

declare dso_local i32 @is_in_chanlist(%struct.hostapd_iface*, %struct.hostapd_channel_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @acs_survey_chan_interference_factor(%struct.hostapd_iface*, %struct.hostapd_channel_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
