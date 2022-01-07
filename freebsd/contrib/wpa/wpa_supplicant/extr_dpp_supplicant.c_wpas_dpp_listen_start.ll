; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_listen_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_listen_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64 }
%struct.wpas_dpp_listen_work = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"DPP: Reject start_listen since dpp_listen_work already exists\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"dpp-listen\00", align 1
@dpp_start_listen_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32)* @wpas_dpp_listen_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_dpp_listen_start(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpas_dpp_listen_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = call i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant* %20)
  br label %22

22:                                               ; preds = %19, %14
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = call %struct.wpas_dpp_listen_work* @os_zalloc(i32 4)
  store %struct.wpas_dpp_listen_work* %26, %struct.wpas_dpp_listen_work** %6, align 8
  %27 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %28 = icmp ne %struct.wpas_dpp_listen_work* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %44

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %33 = getelementptr inbounds %struct.wpas_dpp_listen_work, %struct.wpas_dpp_listen_work* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @dpp_start_listen_cb, align 4
  %37 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %38 = call i64 @radio_add_work(%struct.wpa_supplicant* %34, i32 %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %36, %struct.wpas_dpp_listen_work* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load %struct.wpas_dpp_listen_work*, %struct.wpas_dpp_listen_work** %6, align 8
  %42 = call i32 @wpas_dpp_listen_work_free(%struct.wpas_dpp_listen_work* %41)
  store i32 -1, i32* %3, align 4
  br label %44

43:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40, %29, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpas_dpp_listen_stop(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpas_dpp_listen_work* @os_zalloc(i32) #1

declare dso_local i64 @radio_add_work(%struct.wpa_supplicant*, i32, i8*, i32, i32, %struct.wpas_dpp_listen_work*) #1

declare dso_local i32 @wpas_dpp_listen_work_free(%struct.wpas_dpp_listen_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
