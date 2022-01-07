; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_int.c_c2i_ibuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/asn1/extr_a_int.c_c2i_ibuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASN1_F_C2I_IBUF = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_ZERO_CONTENT = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i8*, i64)* @c2i_ibuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @c2i_ibuf(i8* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @ASN1_F_C2I_IBUF, align 4
  %17 = load i32, i32* @ASN1_R_ILLEGAL_ZERO_CONTENT, align 4
  %18 = call i32 @ASN1err(i32 %16, i32 %17)
  store i64 0, i64* %5, align 8
  br label %129

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 128
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i64, i64* %9, align 8
  %32 = icmp eq i64 %31, 1
  br i1 %32, label %33, label %57

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = xor i32 %43, 255
  %45 = add nsw i32 %44, 1
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %46, i8* %48, align 1
  br label %55

49:                                               ; preds = %36
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  store i8 %52, i8* %54, align 1
  br label %55

55:                                               ; preds = %49, %39
  br label %56

56:                                               ; preds = %55, %33
  store i64 1, i64* %5, align 8
  br label %129

57:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %92

64:                                               ; preds = %57
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 255
  br i1 %69, label %70, label %91

70:                                               ; preds = %64
  store i32 0, i32* %11, align 4
  store i64 1, i64* %12, align 8
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %75
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %12, align 8
  br label %71

86:                                               ; preds = %71
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %86, %64
  br label %92

92:                                               ; preds = %91, %63
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %8, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 1
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 128
  %102 = icmp eq i32 %96, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i32, i32* @ASN1_F_C2I_IBUF, align 4
  %105 = load i32, i32* @ASN1_R_ILLEGAL_PADDING, align 4
  %106 = call i32 @ASN1err(i32 %104, i32 %105)
  store i64 0, i64* %5, align 8
  br label %129

107:                                              ; preds = %95, %92
  %108 = load i32, i32* %11, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %8, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %9, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %107
  %119 = load i8*, i8** %6, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 255, i32 0
  %126 = call i32 @twos_complement(i8* %119, i8* %120, i64 %121, i32 %125)
  br label %127

127:                                              ; preds = %118, %107
  %128 = load i64, i64* %9, align 8
  store i64 %128, i64* %5, align 8
  br label %129

129:                                              ; preds = %127, %103, %56, %15
  %130 = load i64, i64* %5, align 8
  ret i64 %130
}

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @twos_complement(i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
