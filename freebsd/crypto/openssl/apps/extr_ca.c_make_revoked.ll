; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_make_revoked.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/apps/extr_ca.c_make_revoked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCSP_REVOKED_STATUS_NOSTATUS = common dso_local global i32 0, align 4
@NID_crl_reason = common dso_local global i32 0, align 4
@NID_invalidity_date = common dso_local global i32 0, align 4
@NID_hold_instruction_code = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @make_revoked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_revoked(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @unpack_revinfo(i32** %12, i32* %6, i32** %9, i32** %10, i8* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %87

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @X509_REVOKED_set_revocationDate(i32* %22, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %87

27:                                               ; preds = %21, %18
  %28 = load i32*, i32** %3, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @OCSP_REVOKED_STATUS_NOSTATUS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = call i32* (...) @ASN1_ENUMERATED_new()
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ASN1_ENUMERATED_set(i32* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %34
  br label %87

44:                                               ; preds = %38
  %45 = load i32*, i32** %3, align 8
  %46 = load i32, i32* @NID_crl_reason, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @X509_REVOKED_add1_ext_i2d(i32* %45, i32 %46, i32* %47, i32 0, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %87

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %30, %27
  %53 = load i32*, i32** %3, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @NID_invalidity_date, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @X509_REVOKED_add1_ext_i2d(i32* %59, i32 %60, i32* %61, i32 0, i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %87

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %55, %52
  %67 = load i32*, i32** %3, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* @NID_hold_instruction_code, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @X509_REVOKED_add1_ext_i2d(i32* %73, i32 %74, i32* %75, i32 0, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %87

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %69, %66
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @OCSP_REVOKED_STATUS_NOSTATUS, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 2, i32* %8, align 4
  br label %86

85:                                               ; preds = %80
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %78, %64, %50, %43, %26, %17
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @OPENSSL_free(i8* %88)
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @ASN1_OBJECT_free(i32* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @ASN1_GENERALIZEDTIME_free(i32* %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @ASN1_ENUMERATED_free(i32* %94)
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @ASN1_TIME_free(i32* %96)
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @unpack_revinfo(i32**, i32*, i32**, i32**, i8*) #1

declare dso_local i32 @X509_REVOKED_set_revocationDate(i32*, i32*) #1

declare dso_local i32* @ASN1_ENUMERATED_new(...) #1

declare dso_local i32 @ASN1_ENUMERATED_set(i32*, i32) #1

declare dso_local i32 @X509_REVOKED_add1_ext_i2d(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @ASN1_OBJECT_free(i32*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_free(i32*) #1

declare dso_local i32 @ASN1_ENUMERATED_free(i32*) #1

declare dso_local i32 @ASN1_TIME_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
