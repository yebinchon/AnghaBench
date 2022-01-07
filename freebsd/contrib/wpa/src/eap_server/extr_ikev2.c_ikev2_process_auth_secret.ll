; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_auth_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_ikev2.c_ikev2_process_auth_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_initiator_data = type { %struct.TYPE_2__, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ikev2_prf_alg = type { i64 }

@IKEV2_MAX_HASH_LEN = common dso_local global i32 0, align 4
@AUTH_SHARED_KEY_MIC = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"IKEV2: Unsupported authentication method %d\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"IKEV2: Could not derive AUTH data\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"IKEV2: Invalid Authentication Data\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"IKEV2: Received Authentication Data\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"IKEV2: Expected Authentication Data\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"IKEV2: Peer authenticated successfully using shared keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ikev2_initiator_data*, i64, i64*, i64)* @ikev2_process_auth_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ikev2_process_auth_secret(%struct.ikev2_initiator_data* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ikev2_initiator_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ikev2_prf_alg*, align 8
  %13 = alloca i32, align 4
  store %struct.ikev2_initiator_data* %0, %struct.ikev2_initiator_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @IKEV2_MAX_HASH_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @AUTH_SHARED_KEY_MIC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i64, i64* %7, align 8
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %23)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %108

25:                                               ; preds = %4
  %26 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %27 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %31 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %34 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %33, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %37 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %40 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %43 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %42, i32 0, i32 8
  %44 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %45 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %48 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %51 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %54 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %57 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %60 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @ikev2_derive_auth_data(i32 %29, i32* %32, i32 %35, i32 %38, i32 %41, i32* %43, i32 0, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i64* %17)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %25
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %108

67:                                               ; preds = %25
  %68 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %69 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @wpabuf_free(i32* %70)
  %72 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %73 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %72, i32 0, i32 1
  store i32* null, i32** %73, align 8
  %74 = load %struct.ikev2_initiator_data*, %struct.ikev2_initiator_data** %6, align 8
  %75 = getelementptr inbounds %struct.ikev2_initiator_data, %struct.ikev2_initiator_data* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call %struct.ikev2_prf_alg* @ikev2_get_prf(i32 %77)
  store %struct.ikev2_prf_alg* %78, %struct.ikev2_prf_alg** %12, align 8
  %79 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %12, align 8
  %80 = icmp eq %struct.ikev2_prf_alg* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %67
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %108

82:                                               ; preds = %67
  %83 = load i64, i64* %9, align 8
  %84 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %12, align 8
  %85 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load i64*, i64** %8, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i64 @os_memcmp_const(i64* %89, i64* %17, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88, %82
  %94 = load i32, i32* @MSG_INFO, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load i64*, i64** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @wpa_hexdump(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64* %97, i64 %98)
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load %struct.ikev2_prf_alg*, %struct.ikev2_prf_alg** %12, align 8
  %102 = getelementptr inbounds %struct.ikev2_prf_alg, %struct.ikev2_prf_alg* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @wpa_hexdump(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i64* %17, i64 %103)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %108

105:                                              ; preds = %88
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %105, %93, %81, %64, %21
  %109 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i64 @ikev2_derive_auth_data(i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i64*) #2

declare dso_local i32 @wpabuf_free(i32*) #2

declare dso_local %struct.ikev2_prf_alg* @ikev2_get_prf(i32) #2

declare dso_local i64 @os_memcmp_const(i64*, i64*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
