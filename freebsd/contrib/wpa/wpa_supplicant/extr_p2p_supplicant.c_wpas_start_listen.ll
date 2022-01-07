; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_listen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.wpa_supplicant = type { i64 }
%struct.wpas_p2p_listen_work = type { i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"P2P: Reject start_listen since p2p_listen_work already exists\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"p2p-listen\00", align 1
@wpas_start_listen_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.wpabuf*)* @wpas_start_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_start_listen(i8* %0, i32 %1, i32 %2, %struct.wpabuf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca %struct.wpas_p2p_listen_work*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %13, %struct.wpa_supplicant** %10, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 @wpa_printf(i32 %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  %22 = call %struct.wpas_p2p_listen_work* @os_zalloc(i32 16)
  store %struct.wpas_p2p_listen_work* %22, %struct.wpas_p2p_listen_work** %11, align 8
  %23 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %24 = icmp eq %struct.wpas_p2p_listen_work* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %59

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %29 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %32 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %34 = icmp ne %struct.wpabuf* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %37 = call i32* @wpabuf_dup(%struct.wpabuf* %36)
  %38 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %39 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %38, i32 0, i32 2
  store i32* %37, i32** %39, align 8
  %40 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %41 = getelementptr inbounds %struct.wpas_p2p_listen_work, %struct.wpas_p2p_listen_work* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %46 = call i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work* %45)
  store i32 -1, i32* %5, align 4
  br label %59

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @wpas_start_listen_cb, align 4
  %52 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %53 = call i64 @radio_add_work(%struct.wpa_supplicant* %49, i32 %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %51, %struct.wpas_p2p_listen_work* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load %struct.wpas_p2p_listen_work*, %struct.wpas_p2p_listen_work** %11, align 8
  %57 = call i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work* %56)
  store i32 -1, i32* %5, align 4
  br label %59

58:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %55, %44, %25, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpas_p2p_listen_work* @os_zalloc(i32) #1

declare dso_local i32* @wpabuf_dup(%struct.wpabuf*) #1

declare dso_local i32 @wpas_p2p_listen_work_free(%struct.wpas_p2p_listen_work*) #1

declare dso_local i64 @radio_add_work(%struct.wpa_supplicant*, i32, i8*, i32, i32, %struct.wpas_p2p_listen_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
