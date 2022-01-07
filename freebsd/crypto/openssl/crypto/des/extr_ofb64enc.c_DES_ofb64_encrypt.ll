; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ofb64enc.c_DES_ofb64_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/des/extr_ofb64enc.c_DES_ofb64_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DES_ofb64_encrypt(i8* %0, i8* %1, i64 %2, i32* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca [2 x i64], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i32* %5, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %17, align 8
  store i32 0, i32* %22, align 4
  %26 = load i8**, i8*** %11, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8* %28, i8** %21, align 8
  %29 = load i8*, i8** %21, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @c2l(i8* %29, i64 %30)
  %32 = load i8*, i8** %21, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @c2l(i8* %32, i64 %33)
  %35 = load i64, i64* %13, align 8
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 %35, i64* %36, align 16
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = load i8*, i8** %18, align 8
  store i8* %39, i8** %19, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = call i32 @l2c(i64 %40, i8* %41)
  %43 = load i64, i64* %14, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = call i32 @l2c(i64 %43, i8* %44)
  br label %46

46:                                               ; preds = %71, %6
  %47 = load i64, i64* %17, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %17, align 8
  %49 = icmp ne i64 %47, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %50
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* @DES_ENCRYPT, align 4
  %57 = call i32 @DES_encrypt1(i64* %54, i32* %55, i32 %56)
  %58 = load i8*, i8** %18, align 8
  store i8* %58, i8** %19, align 8
  %59 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %60 = load i64, i64* %59, align 16
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = call i32 @l2c(i64 %61, i8* %62)
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %15, align 8
  %66 = load i64, i64* %15, align 8
  %67 = load i8*, i8** %19, align 8
  %68 = call i32 @l2c(i64 %66, i8* %67)
  %69 = load i32, i32* %22, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %22, align 4
  br label %71

71:                                               ; preds = %53, %50
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %7, align 8
  %74 = load i8, i8* %72, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %18, align 8
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = xor i32 %75, %81
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  %88 = and i32 %87, 7
  store i32 %88, i32* %16, align 4
  br label %46

89:                                               ; preds = %46
  %90 = load i32, i32* %22, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %94 = load i64, i64* %93, align 16
  store i64 %94, i64* %13, align 8
  %95 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  %97 = load i8**, i8*** %11, align 8
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 0
  store i8* %99, i8** %21, align 8
  %100 = load i64, i64* %13, align 8
  %101 = load i8*, i8** %21, align 8
  %102 = call i32 @l2c(i64 %100, i8* %101)
  %103 = load i64, i64* %14, align 8
  %104 = load i8*, i8** %21, align 8
  %105 = call i32 @l2c(i64 %103, i8* %104)
  br label %106

106:                                              ; preds = %92, %89
  %107 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %108, align 16
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %15, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32*, i32** %12, align 8
  store i32 %109, i32* %110, align 4
  ret void
}

declare dso_local i32 @c2l(i8*, i64) #1

declare dso_local i32 @l2c(i64, i8*) #1

declare dso_local i32 @DES_encrypt1(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
