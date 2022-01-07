; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sake_common.c_eap_sake_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_SAKE_SMS_LEN = common dso_local global i32 0, align 4
@EAP_MSK_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-SAKE: Deriving keys\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EAP-SAKE: Root-Secret-A\00", align 1
@EAP_SAKE_ROOT_SECRET_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"SAKE Master Secret A\00", align 1
@EAP_SAKE_RAND_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"EAP-SAKE: SMS-A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Transient EAP Key\00", align 1
@EAP_SAKE_TEK_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"EAP-SAKE: TEK-Auth\00", align 1
@EAP_SAKE_TEK_AUTH_LEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"EAP-SAKE: TEK-Cipher\00", align 1
@EAP_SAKE_TEK_CIPHER_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"EAP-SAKE: Root-Secret-B\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"SAKE Master Secret B\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"EAP-SAKE: SMS-B\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Master Session Key\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"EAP-SAKE: MSK\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"EAP-SAKE: EMSK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sake_derive_keys(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %28 = load i32, i32* @EAP_MSK_LEN, align 4
  %29 = load i32, i32* @EAP_EMSK_LEN, align 4
  %30 = add nsw i32 %28, %29
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %38 = call i32 @wpa_hexdump_key(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %36, i32 %37)
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %45 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %46 = call i64 @eap_sake_kdf(i32* %39, i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %41, i32 %42, i32* %43, i32 %44, i32* %24, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %121

49:                                               ; preds = %7
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %52 = call i32 @wpa_hexdump_key(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %24, i32 %51)
  %53 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* @EAP_SAKE_TEK_LEN, align 4
  %60 = call i64 @eap_sake_kdf(i32* %24, i32 %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32* %54, i32 %55, i32* %56, i32 %57, i32* %58, i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %121

63:                                               ; preds = %49
  %64 = load i32, i32* @MSG_DEBUG, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32, i32* @EAP_SAKE_TEK_AUTH_LEN, align 4
  %67 = call i32 @wpa_hexdump_key(i32 %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32* %65, i32 %66)
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* @EAP_SAKE_TEK_AUTH_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* @EAP_SAKE_TEK_CIPHER_LEN, align 4
  %74 = call i32 @wpa_hexdump_key(i32 %68, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* %72, i32 %73)
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %78 = call i32 @wpa_hexdump_key(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32* %76, i32 %77)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @EAP_SAKE_ROOT_SECRET_LEN, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %85 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %86 = call i64 @eap_sake_kdf(i32* %79, i32 %80, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32* %81, i32 %82, i32* %83, i32 %84, i32* %27, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %63
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %121

89:                                               ; preds = %63
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %92 = call i32 @wpa_hexdump_key(i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %27, i32 %91)
  %93 = load i32, i32* @EAP_SAKE_SMS_LEN, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* @EAP_SAKE_RAND_LEN, align 4
  %98 = mul nuw i64 4, %31
  %99 = trunc i64 %98 to i32
  %100 = call i64 @eap_sake_kdf(i32* %27, i32 %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* %94, i32 %95, i32* %96, i32 %97, i32* %32, i32 %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %121

103:                                              ; preds = %89
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* @EAP_MSK_LEN, align 4
  %106 = call i32 @os_memcpy(i32* %104, i32* %32, i32 %105)
  %107 = load i32*, i32** %15, align 8
  %108 = load i32, i32* @EAP_MSK_LEN, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %32, i64 %109
  %111 = load i32, i32* @EAP_EMSK_LEN, align 4
  %112 = call i32 @os_memcpy(i32* %107, i32* %110, i32 %111)
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* @EAP_MSK_LEN, align 4
  %116 = call i32 @wpa_hexdump_key(i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32* %114, i32 %115)
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* @EAP_EMSK_LEN, align 4
  %120 = call i32 @wpa_hexdump_key(i32 %117, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32* %118, i32 %119)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %121

121:                                              ; preds = %103, %102, %88, %62, %48
  %122 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i64 @eap_sake_kdf(i32*, i32, i8*, i32*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
