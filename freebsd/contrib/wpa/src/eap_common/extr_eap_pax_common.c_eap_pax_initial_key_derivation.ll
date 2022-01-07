; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pax_common.c_eap_pax_initial_key_derivation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pax_common.c_eap_pax_initial_key_derivation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"EAP-PAX: initial key derivation\00", align 1
@EAP_PAX_AK_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Master Key\00", align 1
@EAP_PAX_RAND_LEN = common dso_local global i32 0, align 4
@EAP_PAX_MK_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Confirmation Key\00", align 1
@EAP_PAX_CK_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Integrity Check Key\00", align 1
@EAP_PAX_ICK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Method ID\00", align 1
@EAP_PAX_MID_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"EAP-PAX: AK\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"EAP-PAX: MK\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"EAP-PAX: CK\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"EAP-PAX: ICK\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"EAP-PAX: MID\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_pax_initial_key_derivation(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %9, align 4
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* @EAP_PAX_AK_LEN, align 4
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %23 = mul nsw i32 2, %22
  %24 = load i32, i32* @EAP_PAX_MK_LEN, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = call i64 @eap_pax_kdf(i32 %18, i32* %19, i32 %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %21, i32 %23, i32 %24, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %61, label %28

28:                                               ; preds = %7
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* @EAP_PAX_MK_LEN, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %34 = mul nsw i32 2, %33
  %35 = load i32, i32* @EAP_PAX_CK_LEN, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = call i64 @eap_pax_kdf(i32 %29, i32* %30, i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32* %32, i32 %34, i32 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* @EAP_PAX_MK_LEN, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %45 = mul nsw i32 2, %44
  %46 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = call i64 @eap_pax_kdf(i32 %40, i32* %41, i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %43, i32 %45, i32 %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @EAP_PAX_MK_LEN, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* @EAP_PAX_RAND_LEN, align 4
  %56 = mul nsw i32 2, %55
  %57 = load i32, i32* @EAP_PAX_MID_LEN, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = call i64 @eap_pax_kdf(i32 %51, i32* %52, i32 %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %54, i32 %56, i32 %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50, %39, %28, %7
  store i32 -1, i32* %8, align 4
  br label %83

62:                                               ; preds = %50
  %63 = load i32, i32* @MSG_MSGDUMP, align 4
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @EAP_PAX_AK_LEN, align 4
  %66 = call i32 @wpa_hexdump_key(i32 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32* %64, i32 %65)
  %67 = load i32, i32* @MSG_MSGDUMP, align 4
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* @EAP_PAX_MK_LEN, align 4
  %70 = call i32 @wpa_hexdump_key(i32 %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* %68, i32 %69)
  %71 = load i32, i32* @MSG_MSGDUMP, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = load i32, i32* @EAP_PAX_CK_LEN, align 4
  %74 = call i32 @wpa_hexdump_key(i32 %71, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32* %72, i32 %73)
  %75 = load i32, i32* @MSG_MSGDUMP, align 4
  %76 = load i32*, i32** %14, align 8
  %77 = load i32, i32* @EAP_PAX_ICK_LEN, align 4
  %78 = call i32 @wpa_hexdump_key(i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %76, i32 %77)
  %79 = load i32, i32* @MSG_MSGDUMP, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* @EAP_PAX_MID_LEN, align 4
  %82 = call i32 @wpa_hexdump_key(i32 %79, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32* %80, i32 %81)
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %62, %61
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @eap_pax_kdf(i32, i32*, i32, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
