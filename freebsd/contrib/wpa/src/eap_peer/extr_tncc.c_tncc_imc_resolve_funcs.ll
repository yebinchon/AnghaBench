; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_imc_resolve_funcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_imc_resolve_funcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i8*, i8*, i8*, i8*, i32*, i32*, i32*, i8* }

@.str = private unnamed_addr constant [19 x i8] c"TNC_IMC_Initialize\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"TNC: IMC does not export TNC_IMC_Initialize\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TNC_IMC_BeginHandshake\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"TNC: IMC does not export TNC_IMC_BeginHandshake\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"TNC_IMC_ProvideBindFunction\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"TNC: IMC does not export TNC_IMC_ProvideBindFunction\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"TNC_IMC_NotifyConnectionChange\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"TNC_IMC_ReceiveMessage\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"TNC_IMC_BatchEnding\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"TNC_IMC_Terminate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tnc_if_imc*)* @tncc_imc_resolve_funcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_imc_resolve_funcs(%struct.tnc_if_imc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tnc_if_imc*, align 8
  %4 = alloca i8*, align 8
  store %struct.tnc_if_imc* %0, %struct.tnc_if_imc** %3, align 8
  %5 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %6 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %5, i32 0, i32 7
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8* @tncc_get_sym(i8* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = bitcast i8* %9 to i32*
  %11 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %12 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %11, i32 0, i32 6
  store i32* %10, i32** %12, align 8
  %13 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %14 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @MSG_ERROR, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

20:                                               ; preds = %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i8* @tncc_get_sym(i8* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %23 = bitcast i8* %22 to i32*
  %24 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %25 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %24, i32 0, i32 5
  store i32* %23, i32** %25, align 8
  %26 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %27 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @MSG_ERROR, align 4
  %32 = call i32 @wpa_printf(i32 %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

33:                                               ; preds = %20
  %34 = load i8*, i8** %4, align 8
  %35 = call i8* @tncc_get_sym(i8* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %38 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %40 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @MSG_ERROR, align 4
  %45 = call i32 @wpa_printf(i32 %44, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %63

46:                                               ; preds = %33
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @tncc_get_sym(i8* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %49 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %50 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i8* @tncc_get_sym(i8* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %53 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %54 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call i8* @tncc_get_sym(i8* %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %57 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %58 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %57, i32 0, i32 1
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = call i8* @tncc_get_sym(i8* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %61 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %62 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %46, %43, %30, %17
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i8* @tncc_get_sym(i8*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
