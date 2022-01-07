; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_imv_notify_connection_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_tncs.c_tncs_imv_notify_connection_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imv = type { i64 (i32, i32, i64)*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TNC: Calling TNC_IMV_NotifyConnectionChange(%d) for IMV '%s'\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"TNC: TNC_IMC_NotifyConnectionChange: %lu\00", align 1
@TNC_RESULT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tnc_if_imv*, i32, i64)* @tncs_imv_notify_connection_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncs_imv_notify_connection_change(%struct.tnc_if_imv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnc_if_imv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tnc_if_imv* %0, %struct.tnc_if_imv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %10 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %9, i32 0, i32 0
  %11 = load i64 (i32, i32, i64)*, i64 (i32, i32, i64)** %10, align 8
  %12 = icmp eq i64 (i32, i32, i64)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

14:                                               ; preds = %3
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %20 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %21)
  %23 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %24 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %23, i32 0, i32 0
  %25 = load i64 (i32, i32, i64)*, i64 (i32, i32, i64)** %24, align 8
  %26 = load %struct.tnc_if_imv*, %struct.tnc_if_imv** %5, align 8
  %27 = getelementptr inbounds %struct.tnc_if_imv, %struct.tnc_if_imv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i64 %25(i32 %28, i32 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @TNC_RESULT_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 0, i32 -1
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %14, %13
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
