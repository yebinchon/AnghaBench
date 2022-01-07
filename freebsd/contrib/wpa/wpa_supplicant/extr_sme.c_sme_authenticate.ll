; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_authenticate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wpa_bss = type { i32 }
%struct.wpa_ssid = type { i32 }
%struct.wpa_connect_work = type { i32, %struct.wpa_ssid*, %struct.wpa_bss* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"SME: Reject sme_authenticate() call since connect_work exist\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"sme-connect\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SME: Remove previous pending sme-connect\00", align 1
@sme_auth_start_cb = common dso_local global i32 0, align 4
@SAE_NOTHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sme_authenticate(%struct.wpa_supplicant* %0, %struct.wpa_bss* %1, %struct.wpa_ssid* %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_bss*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.wpa_connect_work*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_bss* %1, %struct.wpa_bss** %5, align 8
  store %struct.wpa_ssid* %2, %struct.wpa_ssid** %6, align 8
  %8 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %9 = icmp eq %struct.wpa_bss* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %12 = icmp eq %struct.wpa_ssid* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %60

14:                                               ; preds = %10
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_dbg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %60

23:                                               ; preds = %14
  %24 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %25 = call i64 @radio_work_pending(%struct.wpa_supplicant* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = call i32 @wpa_dbg(%struct.wpa_supplicant* %28, i32 %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %32 = call i32 @radio_remove_works(%struct.wpa_supplicant* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %33

33:                                               ; preds = %27, %23
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = call i32 @wpas_abort_ongoing_scan(%struct.wpa_supplicant* %34)
  %36 = call %struct.wpa_connect_work* @os_zalloc(i32 24)
  store %struct.wpa_connect_work* %36, %struct.wpa_connect_work** %7, align 8
  %37 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %7, align 8
  %38 = icmp eq %struct.wpa_connect_work* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %60

40:                                               ; preds = %33
  %41 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %42 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %7, align 8
  %43 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %42, i32 0, i32 2
  store %struct.wpa_bss* %41, %struct.wpa_bss** %43, align 8
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %45 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %7, align 8
  %46 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %45, i32 0, i32 1
  store %struct.wpa_ssid* %44, %struct.wpa_ssid** %46, align 8
  %47 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %7, align 8
  %48 = getelementptr inbounds %struct.wpa_connect_work, %struct.wpa_connect_work* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %50 = load %struct.wpa_bss*, %struct.wpa_bss** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @sme_auth_start_cb, align 4
  %54 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %7, align 8
  %55 = call i64 @radio_add_work(%struct.wpa_supplicant* %49, i32 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %53, %struct.wpa_connect_work* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load %struct.wpa_connect_work*, %struct.wpa_connect_work** %7, align 8
  %59 = call i32 @wpas_connect_work_free(%struct.wpa_connect_work* %58)
  br label %60

60:                                               ; preds = %13, %19, %39, %57, %40
  ret void
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @radio_work_pending(%struct.wpa_supplicant*, i8*) #1

declare dso_local i32 @radio_remove_works(%struct.wpa_supplicant*, i8*, i32) #1

declare dso_local i32 @wpas_abort_ongoing_scan(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_connect_work* @os_zalloc(i32) #1

declare dso_local i64 @radio_add_work(%struct.wpa_supplicant*, i32, i8*, i32, i32, %struct.wpa_connect_work*) #1

declare dso_local i32 @wpas_connect_work_free(%struct.wpa_connect_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
