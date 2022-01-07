; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_eke_data = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SUCCESS = common dso_local global i64 0, align 8
@EAP_TYPE_EKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_eke_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_eke_get_session_id(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_eke_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_eke_data*
  store %struct.eap_eke_data* %12, %struct.eap_eke_data** %8, align 8
  %13 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %14 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 1, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32* @os_malloc(i64 %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %65

32:                                               ; preds = %19
  %33 = load i32, i32* @EAP_TYPE_EKE, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %33, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %39 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %42 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @os_memcpy(i32* %37, i32 %40, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %49 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %55 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.eap_eke_data*, %struct.eap_eke_data** %8, align 8
  %58 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @os_memcpy(i32* %53, i32 %56, i32 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32*, i32** %9, align 8
  store i32* %64, i32** %4, align 8
  br label %65

65:                                               ; preds = %32, %31, %18
  %66 = load i32*, i32** %4, align 8
  ret i32* %66
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
