; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_get_phase2_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_get_phase2_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i64, i32* (%struct.eap_sm*, i32*, i64*)* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EAP-FAST: Phase 2 method not available\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"EAP-FAST: Could not get key material from Phase 2\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_MSCHAPV2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, i32*, i64)* @eap_fast_get_phase2_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_get_phase2_key(%struct.eap_sm* %0, %struct.eap_fast_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_fast_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @os_memset(i32* %12, i32 0, i64 %13)
  %15 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %16 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %21 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %4
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %92

27:                                               ; preds = %19
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32* (%struct.eap_sm*, i32*, i64*)*, i32* (%struct.eap_sm*, i32*, i64*)** %31, align 8
  %33 = icmp eq i32* (%struct.eap_sm*, i32*, i64*)* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %92

35:                                               ; preds = %27
  %36 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %37 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32* (%struct.eap_sm*, i32*, i64*)*, i32* (%struct.eap_sm*, i32*, i64*)** %39, align 8
  %41 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %42 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %43 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32* %40(%struct.eap_sm* %41, i32* %44, i64* %11)
  store i32* %45, i32** %10, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %92

50:                                               ; preds = %35
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i64, i64* %11, align 8
  %58 = icmp eq i64 %57, 32
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %61 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %59
  %68 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %69 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EAP_TYPE_MSCHAPV2, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %67
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 16
  %79 = call i32 @os_memcpy(i32* %76, i32* %78, i64 16)
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 16
  %82 = load i32*, i32** %10, align 8
  %83 = call i32 @os_memcpy(i32* %81, i32* %82, i64 16)
  br label %89

84:                                               ; preds = %67, %59, %56
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @os_memcpy(i32* %85, i32* %86, i64 %87)
  br label %89

89:                                               ; preds = %84, %75
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @os_free(i32* %90)
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %89, %47, %34, %24
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
