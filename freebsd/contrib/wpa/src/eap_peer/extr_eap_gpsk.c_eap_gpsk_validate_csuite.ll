; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_csuite.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_validate_csuite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_gpsk_data = type { i32, i32 }
%struct.eap_gpsk_csuite = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-GPSK: Message too short for CSuite_Sel\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"EAP-GPSK: CSuite_Sel (%d:%d) does not match with the one sent in GPSK-2 (%d:%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_gpsk_data*, i32*, i32*)* @eap_gpsk_validate_csuite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_gpsk_validate_csuite(%struct.eap_gpsk_data* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_gpsk_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.eap_gpsk_csuite*, align 8
  store %struct.eap_gpsk_data* %0, %struct.eap_gpsk_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %62

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = ptrtoint i32* %15 to i64
  %18 = ptrtoint i32* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 4
  %21 = icmp slt i64 %20, 8
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %4, align 8
  br label %62

25:                                               ; preds = %14
  %26 = load i32*, i32** %6, align 8
  %27 = bitcast i32* %26 to %struct.eap_gpsk_csuite*
  store %struct.eap_gpsk_csuite* %27, %struct.eap_gpsk_csuite** %10, align 8
  %28 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %29 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WPA_GET_BE32(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.eap_gpsk_csuite*, %struct.eap_gpsk_csuite** %10, align 8
  %33 = getelementptr inbounds %struct.eap_gpsk_csuite, %struct.eap_gpsk_csuite* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WPA_GET_BE16(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 8
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %40 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %46 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43, %25
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %5, align 8
  %57 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %55, i32 %58)
  store i32* null, i32** %4, align 8
  br label %62

60:                                               ; preds = %43
  %61 = load i32*, i32** %6, align 8
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %60, %49, %22, %13
  %63 = load i32*, i32** %4, align 8
  ret i32* %63
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE32(i32) #1

declare dso_local i32 @WPA_GET_BE16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
