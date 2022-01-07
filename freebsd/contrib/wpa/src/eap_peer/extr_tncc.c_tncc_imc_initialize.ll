; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_imc_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_imc_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i64 (i32, i32, i32, i64*)*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"TNC: Calling TNC_IMC_Initialize for IMC '%s'\00", align 1
@TNC_IFIMC_VERSION_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"TNC: TNC_IMC_Initialize: res=%lu imc_ver=%lu\00", align 1
@TNC_RESULT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tnc_if_imc*)* @tncc_imc_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_imc_initialize(%struct.tnc_if_imc* %0) #0 {
  %2 = alloca %struct.tnc_if_imc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.tnc_if_imc* %0, %struct.tnc_if_imc** %2, align 8
  %5 = load i32, i32* @MSG_DEBUG, align 4
  %6 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %2, align 8
  %7 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %2, align 8
  %12 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %11, i32 0, i32 0
  %13 = load i64 (i32, i32, i32, i64*)*, i64 (i32, i32, i32, i64*)** %12, align 8
  %14 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %2, align 8
  %15 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @TNC_IFIMC_VERSION_1, align 4
  %18 = load i32, i32* @TNC_IFIMC_VERSION_1, align 4
  %19 = call i64 %13(i32 %16, i32 %17, i32 %18, i64* %4)
  store i64 %19, i64* %3, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @TNC_RESULT_SUCCESS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 -1
  ret i32 %28
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
