; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_select_phase2_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_select_phase2_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_data = type { i64, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EAP_TYPE_MSCHAPV2 = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"EAP-FAST: Only EAP-MSCHAPv2 is allowed during unauthenticated provisioning; reject phase2 type %d\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"EAP-FAST: Selected Phase 2 EAP vendor %d method %d\00", align 1
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@EAP_TYPE_TNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_fast_data*, i64)* @eap_fast_select_phase2_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_select_phase2_method(%struct.eap_fast_data* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_fast_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.eap_fast_data* %0, %struct.eap_fast_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %8 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @EAP_TYPE_MSCHAPV2, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i32 -1, i32* %3, align 4
  br label %94

19:                                               ; preds = %11, %2
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %23 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %81

26:                                               ; preds = %20
  %27 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %28 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %38 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %26
  br label %78

47:                                               ; preds = %36
  %48 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %49 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %56 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %59 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %66 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %70 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %74 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i32, i8*, i64, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %76)
  br label %81

78:                                               ; preds = %46
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %20

81:                                               ; preds = %47, %20
  %82 = load i64, i64* %5, align 8
  %83 = load %struct.eap_fast_data*, %struct.eap_fast_data** %4, align 8
  %84 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %82, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @EAP_TYPE_NONE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %81
  store i32 -1, i32* %3, align 4
  br label %94

93:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %92, %15
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
