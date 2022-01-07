; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_select_eap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_phase2_select_eap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_ttls_data = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"EAP-TTLS: Selected Phase 2 EAP vendor %d method %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_ttls_data*, i64)* @eap_ttls_phase2_select_eap_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_ttls_phase2_select_eap_method(%struct.eap_ttls_data* %0, i64 %1) #0 {
  %3 = alloca %struct.eap_ttls_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.eap_ttls_data* %0, %struct.eap_ttls_data** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %64, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %9 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %67

12:                                               ; preds = %6
  %13 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %14 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %12
  %23 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %24 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22, %12
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %35 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %42 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %45 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %52 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 %50, i64* %53, align 8
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %56 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %3, align 8
  %60 = getelementptr inbounds %struct.eap_ttls_data, %struct.eap_ttls_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @wpa_printf(i32 %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %58, i64 %62)
  br label %67

64:                                               ; preds = %32
  %65 = load i64, i64* %5, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %6

67:                                               ; preds = %33, %6
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
