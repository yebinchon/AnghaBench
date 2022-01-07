; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_notify_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_bgscan_simple.c_bgscan_simple_notify_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_scan_results = type { i32 }
%struct.bgscan_simple_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bgscan simple: scan result notification\00", align 1
@bgscan_simple_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.wpa_scan_results*)* @bgscan_simple_notify_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgscan_simple_notify_scan(i8* %0, %struct.wpa_scan_results* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.wpa_scan_results*, align 8
  %5 = alloca %struct.bgscan_simple_data*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.wpa_scan_results* %1, %struct.wpa_scan_results** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bgscan_simple_data*
  store %struct.bgscan_simple_data* %7, %struct.bgscan_simple_data** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 @wpa_printf(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @bgscan_simple_timeout, align 4
  %11 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %12 = call i32 @eloop_cancel_timeout(i32 %10, %struct.bgscan_simple_data* %11, i32* null)
  %13 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %14 = getelementptr inbounds %struct.bgscan_simple_data, %struct.bgscan_simple_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @bgscan_simple_timeout, align 4
  %17 = load %struct.bgscan_simple_data*, %struct.bgscan_simple_data** %5, align 8
  %18 = call i32 @eloop_register_timeout(i32 %15, i32 0, i32 %16, %struct.bgscan_simple_data* %17, i32* null)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.bgscan_simple_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.bgscan_simple_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
