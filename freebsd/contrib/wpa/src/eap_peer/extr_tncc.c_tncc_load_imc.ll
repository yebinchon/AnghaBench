; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_load_imc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_tncc.c_tncc_load_imc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnc_if_imc = type { i32*, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"TNC: No IMC configured\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"TNC: Opening IMC: %s (%s)\00", align 1
@RTLD_LAZY = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"TNC: Failed to open IMC '%s' (%s): %s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"TNC: Failed to resolve IMC functions\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"TNC: Failed to initialize IMC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tnc_if_imc*)* @tncc_load_imc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tncc_load_imc(%struct.tnc_if_imc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tnc_if_imc*, align 8
  store %struct.tnc_if_imc* %0, %struct.tnc_if_imc** %3, align 8
  %4 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %5 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %14 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %17 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32* %18)
  %20 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %21 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* @RTLD_LAZY, align 4
  %24 = call i32* @dlopen(i32* %22, i32 %23)
  %25 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %26 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %28 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %11
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %34 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %37 = getelementptr inbounds %struct.tnc_if_imc, %struct.tnc_if_imc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 (...) @dlerror()
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32* %38, i32 %39)
  store i32 -1, i32* %2, align 4
  br label %60

41:                                               ; preds = %11
  %42 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %43 = call i64 @tncc_imc_resolve_funcs(%struct.tnc_if_imc* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @MSG_ERROR, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

48:                                               ; preds = %41
  %49 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %50 = call i64 @tncc_imc_initialize(%struct.tnc_if_imc* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.tnc_if_imc*, %struct.tnc_if_imc** %3, align 8
  %54 = call i64 @tncc_imc_provide_bind_function(%struct.tnc_if_imc* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @MSG_ERROR, align 4
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %60

59:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56, %45, %31, %8
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @dlopen(i32*, i32) #1

declare dso_local i32 @dlerror(...) #1

declare dso_local i64 @tncc_imc_resolve_funcs(%struct.tnc_if_imc*) #1

declare dso_local i64 @tncc_imc_initialize(%struct.tnc_if_imc*) #1

declare dso_local i64 @tncc_imc_provide_bind_function(%struct.tnc_if_imc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
