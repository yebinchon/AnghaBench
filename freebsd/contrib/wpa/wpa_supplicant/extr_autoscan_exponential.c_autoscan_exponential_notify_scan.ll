; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_autoscan_exponential.c_autoscan_exponential_notify_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_autoscan_exponential.c_autoscan_exponential_notify_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i32 }
%struct.autoscan_exponential_data = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"autoscan exponential: scan result notification\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpa_scan_results*)* @autoscan_exponential_notify_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoscan_exponential_notify_scan(i8* %0, %struct.wpa_scan_results* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpa_scan_results*, align 8
  %6 = alloca %struct.autoscan_exponential_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.wpa_scan_results* %1, %struct.wpa_scan_results** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.autoscan_exponential_data*
  store %struct.autoscan_exponential_data* %8, %struct.autoscan_exponential_data** %6, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %12 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %15 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %20 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  br label %59

22:                                               ; preds = %2
  %23 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %24 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %29 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %32 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %55

33:                                               ; preds = %22
  %34 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %35 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %38 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %42 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %44 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %47 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %33
  %51 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %52 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %3, align 4
  br label %59

54:                                               ; preds = %33
  br label %55

55:                                               ; preds = %54, %27
  %56 = load %struct.autoscan_exponential_data*, %struct.autoscan_exponential_data** %6, align 8
  %57 = getelementptr inbounds %struct.autoscan_exponential_data, %struct.autoscan_exponential_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %50, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
