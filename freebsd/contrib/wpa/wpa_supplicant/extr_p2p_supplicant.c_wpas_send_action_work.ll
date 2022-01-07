; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_send_action_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_send_action_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.send_action_work = type { i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"p2p-send-action\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"P2P: Cannot schedule new p2p-send-action work since one is already pending\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@wpas_send_action_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32, i32*, i32*, i32*, i32*, i64, i32)* @wpas_send_action_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_send_action_work(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i64 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.send_action_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %20 = call i64 @radio_work_pending(%struct.wpa_supplicant* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %77

25:                                               ; preds = %8
  %26 = load i64, i64* %16, align 8
  %27 = add i64 40, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.send_action_work* @os_zalloc(i32 %28)
  store %struct.send_action_work* %29, %struct.send_action_work** %18, align 8
  %30 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %31 = icmp eq %struct.send_action_work* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %9, align 4
  br label %77

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %36 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %38 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load i32*, i32** %12, align 8
  %41 = load i64, i64* @ETH_ALEN, align 8
  %42 = call i32 @os_memcpy(i32 %39, i32* %40, i64 %41)
  %43 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %44 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i64, i64* @ETH_ALEN, align 8
  %48 = call i32 @os_memcpy(i32 %45, i32* %46, i64 %47)
  %49 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %50 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i64, i64* @ETH_ALEN, align 8
  %54 = call i32 @os_memcpy(i32 %51, i32* %52, i64 %53)
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %57 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %60 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %62 = getelementptr inbounds %struct.send_action_work, %struct.send_action_work* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = load i64, i64* %16, align 8
  %66 = call i32 @os_memcpy(i32 %63, i32* %64, i64 %65)
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @wpas_send_action_cb, align 4
  %70 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %71 = call i64 @radio_add_work(%struct.wpa_supplicant* %67, i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 1, i32 %69, %struct.send_action_work* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %33
  %74 = load %struct.send_action_work*, %struct.send_action_work** %18, align 8
  %75 = call i32 @os_free(%struct.send_action_work* %74)
  store i32 -1, i32* %9, align 4
  br label %77

76:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %73, %32, %22
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i64 @radio_work_pending(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.send_action_work* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i64) #1

declare dso_local i64 @radio_add_work(%struct.wpa_supplicant*, i32, i8*, i32, i32, %struct.send_action_work*) #1

declare dso_local i32 @os_free(%struct.send_action_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
