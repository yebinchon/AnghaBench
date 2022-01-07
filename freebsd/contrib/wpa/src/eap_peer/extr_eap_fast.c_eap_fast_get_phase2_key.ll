; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_get_phase2_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_get_phase2_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i64, i32* (%struct.eap_sm*, i32*, i64*)*, i32 (%struct.eap_sm*, i32*)* }

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
  br label %111

27:                                               ; preds = %19
  %28 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %29 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %31, align 8
  %33 = icmp eq i32 (%struct.eap_sm*, i32*)* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %36 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32* (%struct.eap_sm*, i32*, i64*)*, i32* (%struct.eap_sm*, i32*, i64*)** %38, align 8
  %40 = icmp eq i32* (%struct.eap_sm*, i32*, i64*)* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %27
  store i32 0, i32* %5, align 4
  br label %111

42:                                               ; preds = %34
  %43 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %44 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %46, align 8
  %48 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %49 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %50 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 %47(%struct.eap_sm* %48, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %42
  %55 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %56 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32* (%struct.eap_sm*, i32*, i64*)*, i32* (%struct.eap_sm*, i32*, i64*)** %58, align 8
  %60 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %61 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %62 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i32* %59(%struct.eap_sm* %60, i32* %63, i64* %11)
  store i32* %64, i32** %10, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %54, %42
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 @wpa_printf(i32 %67, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %111

69:                                               ; preds = %54
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i64, i64* %11, align 8
  %77 = icmp eq i64 %76, 32
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %80 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %103

86:                                               ; preds = %78
  %87 = load %struct.eap_fast_data*, %struct.eap_fast_data** %7, align 8
  %88 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @EAP_TYPE_MSCHAPV2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %86
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 16
  %98 = call i32 @os_memcpy(i32* %95, i32* %97, i64 16)
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 16
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @os_memcpy(i32* %100, i32* %101, i64 16)
  br label %108

103:                                              ; preds = %86, %78, %75
  %104 = load i32*, i32** %8, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @os_memcpy(i32* %104, i32* %105, i64 %106)
  br label %108

108:                                              ; preds = %103, %94
  %109 = load i32*, i32** %10, align 8
  %110 = call i32 @os_free(i32* %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %108, %66, %41, %24
  %112 = load i32, i32* %5, align 4
  ret i32 %112
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
