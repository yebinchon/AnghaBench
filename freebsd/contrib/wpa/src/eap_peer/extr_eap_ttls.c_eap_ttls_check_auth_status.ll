; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_check_auth_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_check_auth_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.eap_method_ret = type { i64, i64, i32 }

@METHOD_DONE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@DECISION_UNCOND_SUCC = common dso_local global i64 0, align 8
@DECISION_COND_SUCC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EAP-TTLS: Authentication completed successfully\00", align 1
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"EAP-TTLS: Authentication completed successfully (MAY_CONT)\00", align 1
@DECISION_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"EAP-TTLS: Restore success decision after fragmented frame sent completely\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*)* @eap_ttls_check_auth_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_check_auth_status(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_ttls_data*, align 8
  %6 = alloca %struct.eap_method_ret*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %5, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %6, align 8
  %7 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %8 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @METHOD_DONE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %3
  %13 = load i32, i32* @FALSE, align 4
  %14 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %15 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %17 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %12
  %22 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %23 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DECISION_COND_SUCC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21, %12
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_printf(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %31 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %33 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %27, %21
  br label %93

38:                                               ; preds = %3
  %39 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %40 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @METHOD_MAY_CONT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %46 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %52 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DECISION_COND_SUCC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50, %44
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = call i32 @wpa_printf(i32 %57, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %60 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %62 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %65 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  br label %92

66:                                               ; preds = %50, %38
  %67 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %68 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @DECISION_FAIL, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %74 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %79 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %86 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %5, align 8
  %87 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.eap_method_ret*, %struct.eap_method_ret** %6, align 8
  %90 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  br label %91

91:                                               ; preds = %83, %77, %72, %66
  br label %92

92:                                               ; preds = %91, %56
  br label %93

93:                                               ; preds = %92, %37
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
