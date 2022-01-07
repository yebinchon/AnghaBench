; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_verify_checkcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_verify_checkcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_aka_data = type { i64, i32* }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"EAP-AKA: Checkcode from server indicates that AKA/Identity messages were used, but they were not\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@EAP_AKA_PRIME_CHECKCODE_LEN = common dso_local global i64 0, align 8
@EAP_AKA_CHECKCODE_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [96 x i8] c"EAP-AKA: Checkcode from server indicates that AKA/Identity message were not used, but they were\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"EAP-AKA: Mismatch in AT_CHECKCODE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_aka_data*, i32*, i64)* @eap_aka_verify_checkcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_aka_verify_checkcode(%struct.eap_aka_data* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_aka_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.eap_aka_data* %0, %struct.eap_aka_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @SHA256_MAC_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

32:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

33:                                               ; preds = %21
  %34 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %35 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i64, i64* @EAP_AKA_PRIME_CHECKCODE_LEN, align 8
  br label %43

41:                                               ; preds = %33
  %42 = load i64, i64* @EAP_AKA_CHECKCODE_LEN, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

51:                                               ; preds = %43
  %52 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %53 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32* @wpabuf_head(i32* %54)
  store i32* %55, i32** %8, align 8
  %56 = load %struct.eap_aka_data*, %struct.eap_aka_data** %5, align 8
  %57 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @wpabuf_len(i32* %58)
  store i64 %59, i64* %9, align 8
  %60 = call i32 @sha1_vector(i32 1, i32** %8, i64* %9, i32* %17)
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @os_memcmp_const(i32* %17, i32* %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %51
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

68:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %65, %48, %32, %29, %20
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32* @wpabuf_head(i32*) #2

declare dso_local i64 @wpabuf_len(i32*) #2

declare dso_local i32 @sha1_vector(i32, i32**, i64*, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
