; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_csuite_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_gpsk.c_eap_gpsk_process_csuite_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_gpsk_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Too short GPSK-1 packet\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"EAP-GPSK: CSuite_List overflow\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-GPSK: Invalid CSuite_List len %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, %struct.eap_gpsk_data*, i32**, i64*, i32*, i32*)* @eap_gpsk_process_csuite_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_gpsk_process_csuite_list(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, i32** %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_gpsk_data*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store i32* null, i32** %7, align 8
  br label %73

18:                                               ; preds = %6
  %19 = load i32*, i32** %13, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = ptrtoint i32* %19 to i64
  %22 = ptrtoint i32* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = icmp slt i64 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %73

29:                                               ; preds = %18
  %30 = load i32*, i32** %12, align 8
  %31 = call i64 @WPA_GET_BE16(i32* %30)
  store i64 %31, i64* %14, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32* %33, i32** %12, align 8
  %34 = load i64, i64* %14, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = icmp ugt i64 %34, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %7, align 8
  br label %73

45:                                               ; preds = %29
  %46 = load i64, i64* %14, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* %14, align 8
  %50 = urem i64 %49, 4
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load i64, i64* %14, align 8
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %54)
  store i32* null, i32** %7, align 8
  br label %73

56:                                               ; preds = %48
  %57 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %58 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %9, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i64, i64* %14, align 8
  %61 = call i64 @eap_gpsk_select_csuite(%struct.eap_sm* %57, %struct.eap_gpsk_data* %58, i32* %59, i64 %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32* null, i32** %7, align 8
  br label %73

64:                                               ; preds = %56
  %65 = load i32*, i32** %12, align 8
  %66 = load i32**, i32*** %10, align 8
  store i32* %65, i32** %66, align 8
  %67 = load i64, i64* %14, align 8
  %68 = load i64*, i64** %11, align 8
  store i64 %67, i64* %68, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 %69
  store i32* %71, i32** %12, align 8
  %72 = load i32*, i32** %12, align 8
  store i32* %72, i32** %7, align 8
  br label %73

73:                                               ; preds = %64, %63, %52, %42, %26, %17
  %74 = load i32*, i32** %7, align 8
  ret i32* %74
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i64 @eap_gpsk_select_csuite(%struct.eap_sm*, %struct.eap_gpsk_data*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
