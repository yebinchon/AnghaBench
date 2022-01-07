; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_parse_tagging.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_asn1_gen.c_parse_tagging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_PARSE_TAGGING = common dso_local global i32 0, align 4
@ASN1_R_INVALID_NUMBER = common dso_local global i32 0, align 4
@V_ASN1_UNIVERSAL = common dso_local global i32 0, align 4
@V_ASN1_APPLICATION = common dso_local global i32 0, align 4
@V_ASN1_PRIVATE = common dso_local global i32 0, align 4
@V_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@ASN1_R_INVALID_MODIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Char=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @parse_tagging to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tagging(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [2 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %92

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strtoul(i8* %17, i8** %12, i32 10)
  store i64 %18, i64* %11, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = icmp ugt i8* %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %92

34:                                               ; preds = %26, %21, %16
  %35 = load i64, i64* %11, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @ASN1_F_PARSE_TAGGING, align 4
  %39 = load i32, i32* @ASN1_R_INVALID_NUMBER, align 4
  %40 = call i32 @ASN1err(i32 %38, i32 %39)
  store i32 0, i32* %5, align 4
  br label %92

41:                                               ; preds = %34
  %42 = load i64, i64* %11, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i8*, i8** %12, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %58

57:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %47
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %88

61:                                               ; preds = %58
  %62 = load i8*, i8** %12, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %77 [
    i32 85, label %65
    i32 65, label %68
    i32 80, label %71
    i32 67, label %74
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %87

68:                                               ; preds = %61
  %69 = load i32, i32* @V_ASN1_APPLICATION, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %87

71:                                               ; preds = %61
  %72 = load i32, i32* @V_ASN1_PRIVATE, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %87

74:                                               ; preds = %61
  %75 = load i32, i32* @V_ASN1_CONTEXT_SPECIFIC, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %87

77:                                               ; preds = %61
  %78 = load i8*, i8** %12, align 8
  %79 = load i8, i8* %78, align 1
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %79, i8* %80, align 1
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %81, align 1
  %82 = load i32, i32* @ASN1_F_PARSE_TAGGING, align 4
  %83 = load i32, i32* @ASN1_R_INVALID_MODIFIER, align 4
  %84 = call i32 @ASN1err(i32 %82, i32 %83)
  %85 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %86 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %85)
  store i32 0, i32* %5, align 4
  br label %92

87:                                               ; preds = %74, %71, %68, %65
  br label %91

88:                                               ; preds = %58
  %89 = load i32, i32* @V_ASN1_CONTEXT_SPECIFIC, align 4
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %87
  store i32 1, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %77, %37, %33, %15
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
