; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_getKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_getKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32*, i32, i32, i64, i32 }

@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Session Key Generating Function\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"EAP-PEAP: CSK\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-PEAP: Derived key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.eap_sm*, i8*, i64*)* @eap_peap_getKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @eap_peap_getKey(%struct.eap_sm* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.eap_peap_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [128 x i32], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %12, %struct.eap_peap_data** %8, align 8
  %13 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %14 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %19 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  store i32* null, i32** %4, align 8
  br label %72

23:                                               ; preds = %17
  %24 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %25 = call i32* @os_malloc(i64 %24)
  store i32* %25, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %72

29:                                               ; preds = %23
  %30 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  %32 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %33 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %38 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %41 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %44 = call i64 @peap_prfplus(i32 %39, i32 %42, i32 40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* bitcast ([2 x i8]* @.str.1 to i32*), i32 1, i32* %43, i32 512)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @os_free(i32* %47)
  store i32* null, i32** %4, align 8
  br label %72

49:                                               ; preds = %36
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %52 = call i32 @wpa_hexdump_key(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %51, i32 512)
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %55 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %56 = call i32 @os_memcpy(i32* %53, i32* %54, i64 %55)
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %60 = call i32 @wpa_hexdump(i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %58, i64 %59)
  %61 = getelementptr inbounds [128 x i32], [128 x i32]* %10, i64 0, i64 0
  %62 = call i32 @forced_memzero(i32* %61, i32 512)
  br label %70

63:                                               ; preds = %29
  %64 = load i32*, i32** %9, align 8
  %65 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %66 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %69 = call i32 @os_memcpy(i32* %64, i32* %67, i64 %68)
  br label %70

70:                                               ; preds = %63, %49
  %71 = load i32*, i32** %9, align 8
  store i32* %71, i32** %4, align 8
  br label %72

72:                                               ; preds = %70, %46, %28, %22
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i64 @peap_prfplus(i32, i32, i32, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @forced_memzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
