; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_ikev2_common.c_eap_ikev2_validate_icv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_ikev2_common.c_eap_ikev2_validate_icv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ikev2_keys = type { i32, i32*, i32* }
%struct.wpabuf = type { i32 }
%struct.ikev2_integ_alg = type { i64 }

@IKEV2_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"EAP-IKEV2: Unknown INTEG transform / cannot validate ICV\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"EAP-IKEV2: Not enough room in the message for Integrity Checksum Data\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"EAP-IKEV2: No SK_a for ICV validation\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"EAP-IKEV2: Could not calculate ICV\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"EAP-IKEV2: Invalid ICV\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"EAP-IKEV2: Calculated ICV\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"EAP-IKEV2: Received ICV\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"EAP-IKEV2: Valid Integrity Checksum Data in the received message\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_ikev2_validate_icv(i32 %0, %struct.ikev2_keys* %1, i32 %2, %struct.wpabuf* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ikev2_keys*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ikev2_integ_alg*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.ikev2_keys* %1, %struct.ikev2_keys** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* @IKEV2_MAX_HASH_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load %struct.ikev2_keys*, %struct.ikev2_keys** %9, align 8
  %28 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  br label %34

30:                                               ; preds = %6
  %31 = load %struct.ikev2_keys*, %struct.ikev2_keys** %9, align 8
  %32 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i32* [ %29, %26 ], [ %33, %30 ]
  store i32* %35, i32** %18, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call %struct.ikev2_integ_alg* @ikev2_get_integ(i32 %36)
  store %struct.ikev2_integ_alg* %37, %struct.ikev2_integ_alg** %14, align 8
  %38 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %14, align 8
  %39 = icmp eq %struct.ikev2_integ_alg* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %109

43:                                               ; preds = %34
  %44 = load %struct.ikev2_integ_alg*, %struct.ikev2_integ_alg** %14, align 8
  %45 = getelementptr inbounds %struct.ikev2_integ_alg, %struct.ikev2_integ_alg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = ptrtoint i32* %47 to i64
  %50 = ptrtoint i32* %48 to i64
  %51 = sub i64 %49, %50
  %52 = sdiv exact i64 %51, 4
  %53 = load i64, i64* %15, align 8
  %54 = trunc i64 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %109

60:                                               ; preds = %43
  %61 = load i32*, i32** %18, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = call i32 @wpa_printf(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %109

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %18, align 8
  %69 = load %struct.ikev2_keys*, %struct.ikev2_keys** %9, align 8
  %70 = getelementptr inbounds %struct.ikev2_keys, %struct.ikev2_keys* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %73 = call i32 @wpabuf_head(%struct.wpabuf* %72)
  %74 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %75 = call i64 @wpabuf_len(%struct.wpabuf* %74)
  %76 = load i64, i64* %15, align 8
  %77 = sub i64 %75, %76
  %78 = call i64 @ikev2_integ_hash(i32 %67, i32* %68, i32 %71, i32 %73, i64 %77, i32* %23)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %109

83:                                               ; preds = %66
  %84 = load i32*, i32** %13, align 8
  %85 = load i64, i64* %15, align 8
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i64, i64* %15, align 8
  %89 = call i64 @os_memcmp_const(i32* %23, i32* %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load i32, i32* @MSG_INFO, align 4
  %93 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @wpa_hexdump(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32* %23, i64 %95)
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i64, i64* %15, align 8
  %100 = sub i64 0, %99
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i64, i64* %15, align 8
  %103 = call i32 @wpa_hexdump(i32 %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32* %101, i64 %102)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %109

104:                                              ; preds = %83
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = call i32 @wpa_printf(i32 %105, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i64, i64* %15, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %7, align 4
  store i32 1, i32* %19, align 4
  br label %109

109:                                              ; preds = %104, %91, %80, %63, %57, %40
  %110 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ikev2_integ_alg* @ikev2_get_integ(i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @ikev2_integ_hash(i32, i32*, i32, i32, i64, i32*) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
