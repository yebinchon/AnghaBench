; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_free_dialogs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_gas_serv_free_dialogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GAS_DIALOG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i32*)* @gas_serv_free_dialogs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gas_serv_free_dialogs(%struct.hostapd_data* %0, i32* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %7, i32* %8)
  store %struct.sta_info* %9, %struct.sta_info** %5, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %11 = icmp eq %struct.sta_info* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %14 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  br label %45

18:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @GAS_DIALOG_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %45

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %40 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @os_free(%struct.TYPE_2__* %41)
  %43 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %44 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %43, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %44, align 8
  br label %45

45:                                               ; preds = %38, %33, %17
  ret void
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @os_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
