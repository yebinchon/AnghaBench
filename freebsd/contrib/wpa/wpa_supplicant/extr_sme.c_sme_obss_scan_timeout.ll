; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_obss_scan_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_sme.c_sme_obss_scan_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wpa_driver_scan_params = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"SME OBSS: Ignore scan request\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SME OBSS: Request an OBSS scan\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"SME OBSS: Failed to trigger scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @sme_obss_scan_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sme_obss_scan_timeout(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_driver_scan_params, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %8, %struct.wpa_supplicant** %5, align 8
  %9 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %43

16:                                               ; preds = %2
  %17 = call i32 @os_memset(%struct.wpa_driver_scan_params* %6, i32 0, i32 8)
  %18 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %19 = call i32 @wpa_obss_scan_freqs_list(%struct.wpa_supplicant* %18, %struct.wpa_driver_scan_params* %6)
  %20 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %6, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = call i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant* %23, %struct.wpa_driver_scan_params* %6)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 @wpa_printf(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %31 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @os_free(i32 %35)
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %42 = call i32 @eloop_register_timeout(i32 %40, i32 0, void (i8*, i8*)* @sme_obss_scan_timeout, %struct.wpa_supplicant* %41, i32* null)
  br label %43

43:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local i32 @wpa_obss_scan_freqs_list(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i64 @wpa_supplicant_trigger_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
