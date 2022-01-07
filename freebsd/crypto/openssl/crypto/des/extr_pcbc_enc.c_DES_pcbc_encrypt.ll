; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_pcbc_enc.c_DES_pcbc_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_pcbc_enc.c_DES_pcbc_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4
@DES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_pcbc_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8** %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %20, align 8
  %24 = load i8*, i8** %8, align 8
  store i8* %24, i8** %21, align 8
  %25 = load i8**, i8*** %11, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8* %27, i8** %22, align 8
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %6
  %31 = load i8*, i8** %22, align 8
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @c2l(i8* %31, i32 %32)
  %34 = load i8*, i8** %22, align 8
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @c2l(i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %85, %30
  %38 = load i64, i64* %9, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %88

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = icmp sge i64 %41, 8
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i8*, i8** %20, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @c2l(i8* %44, i32 %45)
  %47 = load i8*, i8** %20, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @c2l(i8* %47, i32 %48)
  br label %56

50:                                               ; preds = %40
  %51 = load i8*, i8** %20, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @c2ln(i8* %51, i32 %52, i32 %53, i64 %54)
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %15, align 4
  %59 = xor i32 %57, %58
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %16, align 4
  %63 = xor i32 %61, %62
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* @DES_ENCRYPT, align 4
  %68 = call i32 @DES_encrypt1(i32* %65, i32* %66, i32 %67)
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %17, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %17, align 4
  %75 = xor i32 %73, %74
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %18, align 4
  %78 = xor i32 %76, %77
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = load i8*, i8** %21, align 8
  %81 = call i32 @l2c(i32 %79, i8* %80)
  %82 = load i32, i32* %18, align 4
  %83 = load i8*, i8** %21, align 8
  %84 = call i32 @l2c(i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %56
  %86 = load i64, i64* %9, align 8
  %87 = sub nsw i64 %86, 8
  store i64 %87, i64* %9, align 8
  br label %37

88:                                               ; preds = %37
  br label %148

89:                                               ; preds = %6
  %90 = load i8*, i8** %22, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @c2l(i8* %90, i32 %91)
  %93 = load i8*, i8** %22, align 8
  %94 = load i32, i32* %16, align 4
  %95 = call i32 @c2l(i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %144, %89
  %97 = load i64, i64* %9, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %147

99:                                               ; preds = %96
  %100 = load i8*, i8** %20, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @c2l(i8* %100, i32 %101)
  %103 = load i8*, i8** %20, align 8
  %104 = load i32, i32* %14, align 4
  %105 = call i32 @c2l(i8* %103, i32 %104)
  %106 = load i32, i32* %13, align 4
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %14, align 4
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* @DES_DECRYPT, align 4
  %113 = call i32 @DES_encrypt1(i32* %110, i32* %111, i32 %112)
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %15, align 4
  %117 = xor i32 %115, %116
  store i32 %117, i32* %17, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %16, align 4
  %121 = xor i32 %119, %120
  store i32 %121, i32* %18, align 4
  %122 = load i64, i64* %9, align 8
  %123 = icmp sge i64 %122, 8
  br i1 %123, label %124, label %131

124:                                              ; preds = %99
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %21, align 8
  %127 = call i32 @l2c(i32 %125, i8* %126)
  %128 = load i32, i32* %18, align 4
  %129 = load i8*, i8** %21, align 8
  %130 = call i32 @l2c(i32 %128, i8* %129)
  br label %137

131:                                              ; preds = %99
  %132 = load i32, i32* %17, align 4
  %133 = load i32, i32* %18, align 4
  %134 = load i8*, i8** %21, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @l2cn(i32 %132, i32 %133, i8* %134, i64 %135)
  br label %137

137:                                              ; preds = %131, %124
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %13, align 4
  %140 = xor i32 %138, %139
  store i32 %140, i32* %15, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %14, align 4
  %143 = xor i32 %141, %142
  store i32 %143, i32* %16, align 4
  br label %144

144:                                              ; preds = %137
  %145 = load i64, i64* %9, align 8
  %146 = sub nsw i64 %145, 8
  store i64 %146, i64* %9, align 8
  br label %96

147:                                              ; preds = %96
  br label %148

148:                                              ; preds = %147, %88
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  store i32 0, i32* %149, align 4
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  store i32 0, i32* %150, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i32) #1

declare dso_local i32 @c2ln(i8*, i32, i32, i64) #1

declare dso_local i32 @DES_encrypt1(i32*, i32*, i32) #1

declare dso_local i32 @l2c(i32, i8*) #1

declare dso_local i32 @l2cn(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
