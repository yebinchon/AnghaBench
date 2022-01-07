; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_handle_lci_report.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_rrm.c_hostapd_handle_lci_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected LCI report, token %u\00", align 1
@hostapd_lci_rep_timeout_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"LCI report token %u len %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, i64, i64*, i64)* @hostapd_handle_lci_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_handle_lci_report(%struct.hostapd_data* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %10 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13, %4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i64, i64* %6, align 8
  %22 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %21)
  br label %33

23:                                               ; preds = %13
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %25 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @hostapd_lci_rep_timeout_handler, align 4
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %28 = call i32 @eloop_cancel_timeout(i32 %26, %struct.hostapd_data* %27, i32* null)
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %31)
  br label %33

33:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
