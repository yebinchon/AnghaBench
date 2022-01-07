; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_bss_info_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_bss_info_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_msg = type { i32 }
%struct.nl80211_bss_info_arg = type { i32, %struct.wpa_scan_results* }
%struct.wpa_scan_results = type { %struct.wpa_scan_res**, i64 }
%struct.wpa_scan_res = type { i32 }

@NL_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nl_msg*, i8*)* @bss_info_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bss_info_handler(%struct.nl_msg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nl80211_bss_info_arg*, align 8
  %7 = alloca %struct.wpa_scan_results*, align 8
  %8 = alloca %struct.wpa_scan_res**, align 8
  %9 = alloca %struct.wpa_scan_res*, align 8
  store %struct.nl_msg* %0, %struct.nl_msg** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.nl80211_bss_info_arg*
  store %struct.nl80211_bss_info_arg* %11, %struct.nl80211_bss_info_arg** %6, align 8
  %12 = load %struct.nl80211_bss_info_arg*, %struct.nl80211_bss_info_arg** %6, align 8
  %13 = getelementptr inbounds %struct.nl80211_bss_info_arg, %struct.nl80211_bss_info_arg* %12, i32 0, i32 1
  %14 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %13, align 8
  store %struct.wpa_scan_results* %14, %struct.wpa_scan_results** %7, align 8
  %15 = load %struct.nl80211_bss_info_arg*, %struct.nl80211_bss_info_arg** %6, align 8
  %16 = getelementptr inbounds %struct.nl80211_bss_info_arg, %struct.nl80211_bss_info_arg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %19 = call %struct.wpa_scan_res* @nl80211_parse_bss_info(i32 %17, %struct.nl_msg* %18)
  store %struct.wpa_scan_res* %19, %struct.wpa_scan_res** %9, align 8
  %20 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %21 = icmp ne %struct.wpa_scan_res* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @NL_SKIP, align 4
  store i32 %23, i32* %3, align 4
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %26 = icmp ne %struct.wpa_scan_results* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %29 = call i32 @os_free(%struct.wpa_scan_res* %28)
  %30 = load i32, i32* @NL_SKIP, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %24
  %32 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %33 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %32, i32 0, i32 0
  %34 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %33, align 8
  %35 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %36 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = call %struct.wpa_scan_res** @os_realloc_array(%struct.wpa_scan_res** %34, i64 %38, i32 8)
  store %struct.wpa_scan_res** %39, %struct.wpa_scan_res*** %8, align 8
  %40 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %8, align 8
  %41 = icmp eq %struct.wpa_scan_res** %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %44 = call i32 @os_free(%struct.wpa_scan_res* %43)
  %45 = load i32, i32* @NL_SKIP, align 4
  store i32 %45, i32* %3, align 4
  br label %58

46:                                               ; preds = %31
  %47 = load %struct.wpa_scan_res*, %struct.wpa_scan_res** %9, align 8
  %48 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %8, align 8
  %49 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %50 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.wpa_scan_res*, %struct.wpa_scan_res** %48, i64 %51
  store %struct.wpa_scan_res* %47, %struct.wpa_scan_res** %53, align 8
  %54 = load %struct.wpa_scan_res**, %struct.wpa_scan_res*** %8, align 8
  %55 = load %struct.wpa_scan_results*, %struct.wpa_scan_results** %7, align 8
  %56 = getelementptr inbounds %struct.wpa_scan_results, %struct.wpa_scan_results* %55, i32 0, i32 0
  store %struct.wpa_scan_res** %54, %struct.wpa_scan_res*** %56, align 8
  %57 = load i32, i32* @NL_SKIP, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %46, %42, %27, %22
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.wpa_scan_res* @nl80211_parse_bss_info(i32, %struct.nl_msg*) #1

declare dso_local i32 @os_free(%struct.wpa_scan_res*) #1

declare dso_local %struct.wpa_scan_res** @os_realloc_array(%struct.wpa_scan_res**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
