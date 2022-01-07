; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_imc_provide_bind_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_imc_provide_bind_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i64, i64 (i32, i32)*, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TNC: Calling TNC_IMC_ProvideBindFunction for IMC '%s'\00", align 1
@TNC_TNCC_BindFunction = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"TNC: TNC_IMC_ProvideBindFunction: res=%lu\00", align 1
@TNC_RESULT_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tnc_if_imc*)* @tncc_imc_provide_bind_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_imc_provide_bind_function(%struct.tnc_if_imc* %0) #0 {
  %2 = alloca %struct.tnc_if_imc*, align 8
  %3 = alloca i64, align 8
  store %struct.tnc_if_imc* %0, %struct.tnc_if_imc** %2, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %2, align 8
  %6 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @wpa_printf(i32 %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %2, align 8
  %10 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %9, i32 0, i32 1
  %11 = load i64 (i32, i32)*, i64 (i32, i32)** %10, align 8
  %12 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %2, align 8
  %13 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TNC_TNCC_BindFunction, align 4
  %16 = call i64 %11(i32 %14, i32 %15)
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @TNC_RESULT_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 0, i32 -1
  ret i32 %24
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
