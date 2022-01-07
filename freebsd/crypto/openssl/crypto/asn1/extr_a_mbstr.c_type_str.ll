; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_mbstr.c_type_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_mbstr.c_type_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@B_ASN1_NUMERICSTRING = common dso_local global i64 0, align 8
@B_ASN1_PRINTABLESTRING = common dso_local global i64 0, align 8
@B_ASN1_IA5STRING = common dso_local global i64 0, align 8
@B_ASN1_T61STRING = common dso_local global i64 0, align 8
@B_ASN1_BMPSTRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @type_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_str(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @INT_MAX, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @INT_MAX, align 8
  br label %19

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @ossl_fromascii(i64 %17)
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i64 [ %15, %14 ], [ %18, %16 ]
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @B_ASN1_NUMERICSTRING, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @ossl_isdigit(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 32
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @B_ASN1_NUMERICSTRING, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %33, %30, %26, %19
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @B_ASN1_PRINTABLESTRING, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @ossl_isasn1print(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @B_ASN1_PRINTABLESTRING, align 8
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %6, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %6, align 8
  br label %52

52:                                               ; preds = %47, %43, %38
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @B_ASN1_IA5STRING, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ossl_isascii(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @B_ASN1_IA5STRING, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %6, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %61, %57, %52
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* @B_ASN1_T61STRING, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load i64, i64* %4, align 8
  %73 = icmp ugt i64 %72, 255
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i64, i64* @B_ASN1_T61STRING, align 8
  %76 = xor i64 %75, -1
  %77 = load i64, i64* %6, align 8
  %78 = and i64 %77, %76
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %74, %71, %66
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @B_ASN1_BMPSTRING, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i64, i64* %4, align 8
  %86 = icmp ugt i64 %85, 65535
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i64, i64* @B_ASN1_BMPSTRING, align 8
  %89 = xor i64 %88, -1
  %90 = load i64, i64* %6, align 8
  %91 = and i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %87, %84, %79
  %93 = load i64, i64* %6, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  store i32 -1, i32* %3, align 4
  br label %100

96:                                               ; preds = %92
  %97 = load i64, i64* %6, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = bitcast i8* %98 to i64*
  store i64 %97, i64* %99, align 8
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %95
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @ossl_fromascii(i64) #1

declare dso_local i64 @ossl_isdigit(i32) #1

declare dso_local i32 @ossl_isasn1print(i32) #1

declare dso_local i32 @ossl_isascii(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
