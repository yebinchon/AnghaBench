; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ofb64ede.c_DES_ede3_ofb64_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ofb64ede.c_DES_ede3_ofb64_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ede3_ofb64_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5, i8** %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [2 x i64], align 16
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32* %7, i32** %16, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %20, align 8
  store i32 0, i32* %25, align 4
  %29 = load i8**, i8*** %15, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  store i8* %31, i8** %24, align 8
  %32 = load i8*, i8** %24, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i32 @c2l(i8* %32, i64 %33)
  %35 = load i8*, i8** %24, align 8
  %36 = load i64, i64* %18, align 8
  %37 = call i32 @c2l(i8* %35, i64 %36)
  %38 = load i64, i64* %17, align 8
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 0
  store i64 %38, i64* %39, align 16
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 1
  store i64 %40, i64* %41, align 8
  %42 = load i8*, i8** %21, align 8
  store i8* %42, i8** %22, align 8
  %43 = load i64, i64* %17, align 8
  %44 = load i8*, i8** %22, align 8
  %45 = call i32 (i64, ...) @l2c(i64 %43, i8* %44)
  %46 = load i64, i64* %18, align 8
  %47 = load i8*, i8** %22, align 8
  %48 = call i32 (i64, ...) @l2c(i64 %46, i8* %47)
  br label %49

49:                                               ; preds = %75, %8
  %50 = load i64, i64* %20, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %20, align 8
  %52 = icmp ne i64 %50, 0
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load i32, i32* %19, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %53
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 0
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @DES_encrypt3(i64* %57, i32* %58, i32* %59, i32* %60)
  %62 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 0
  %63 = load i64, i64* %62, align 16
  store i64 %63, i64* %17, align 8
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %18, align 8
  %66 = load i8*, i8** %21, align 8
  store i8* %66, i8** %22, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i8*, i8** %22, align 8
  %69 = call i32 (i64, ...) @l2c(i64 %67, i8* %68)
  %70 = load i64, i64* %18, align 8
  %71 = load i8*, i8** %22, align 8
  %72 = call i32 (i64, ...) @l2c(i64 %70, i8* %71)
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %25, align 4
  br label %75

75:                                               ; preds = %56, %53
  %76 = load i8*, i8** %9, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %9, align 8
  %78 = load i8, i8* %76, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %21, align 8
  %81 = load i32, i32* %19, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = xor i32 %79, %85
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  store i8 %87, i8* %88, align 1
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %90, 1
  %92 = and i32 %91, 7
  store i32 %92, i32* %19, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load i32, i32* %25, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i8**, i8*** %15, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8* %99, i8** %24, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i8*, i8** %24, align 8
  %102 = call i32 (i64, ...) @l2c(i64 %100, i8* %101)
  %103 = load i64, i64* %18, align 8
  %104 = load i8*, i8** %24, align 8
  %105 = call i32 (i64, ...) @l2c(i64 %103, i8* %104)
  br label %106

106:                                              ; preds = %96, %93
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 1
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 0
  store i64 0, i64* %108, align 16
  store i64 0, i64* %18, align 8
  store i64 0, i64* %17, align 8
  %109 = load i32, i32* %19, align 4
  %110 = load i32*, i32** %16, align 8
  store i32 %109, i32* %110, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i64) #1

declare dso_local i32 @l2c(i64, ...) #1

declare dso_local i32 @DES_encrypt3(i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
