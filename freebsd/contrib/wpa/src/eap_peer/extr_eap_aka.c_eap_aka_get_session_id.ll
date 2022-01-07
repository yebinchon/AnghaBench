; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_get_session_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_get_session_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i64, i32, i32, i32, i32, i32, i32 }

@SUCCESS = common dso_local global i64 0, align 8
@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@EAP_AKA_AUTN_LEN = common dso_local global i32 0, align 4
@EAP_SIM_NONCE_S_LEN = common dso_local global i32 0, align 4
@EAP_SIM_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"EAP-AKA: Derived Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_aka_get_session_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_aka_get_session_id(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_aka_data*, align 8
  %9 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.eap_aka_data*
  store %struct.eap_aka_data* %11, %struct.eap_aka_data** %8, align 8
  %12 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %13 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %20 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %25 = add nsw i32 1, %24
  %26 = load i32, i32* @EAP_AKA_AUTN_LEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  br label %37

30:                                               ; preds = %18
  %31 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %32 = add nsw i32 1, %31
  %33 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %37

37:                                               ; preds = %30, %23
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i32* @os_malloc(i64 %39)
  store i32* %40, i32** %9, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32* null, i32** %4, align 8
  br label %97

44:                                               ; preds = %37
  %45 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %46 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %51 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %44
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %58 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %61 = call i32 @os_memcpy(i32* %56, i32 %59, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %68 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EAP_AKA_AUTN_LEN, align 4
  %71 = call i32 @os_memcpy(i32* %66, i32 %69, i32 %70)
  br label %90

72:                                               ; preds = %44
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %76 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %79 = call i32 @os_memcpy(i32* %74, i32 %77, i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* @EAP_SIM_NONCE_S_LEN, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %86 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @EAP_SIM_MAC_LEN, align 4
  %89 = call i32 @os_memcpy(i32* %84, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %72, %54
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i64*, i64** %7, align 8
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @wpa_hexdump(i32 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32* %92, i64 %94)
  %96 = load i32*, i32** %9, align 8
  store i32* %96, i32** %4, align 8
  br label %97

97:                                               ; preds = %90, %43, %17
  %98 = load i32*, i32** %4, align 8
  ret i32* %98
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
