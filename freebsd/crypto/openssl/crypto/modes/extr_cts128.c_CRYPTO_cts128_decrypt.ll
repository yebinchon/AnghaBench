; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [24 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_cts128_decrypt(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i32, i8*, i8*, i32)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i32, i8*, i8*, i32)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.anon, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i8*, i32, i8*, i8*, i32)* %5, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ule i64 %16, 16
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %85

19:                                               ; preds = %6
  %20 = load i64, i64* %10, align 8
  %21 = urem i64 %20, 16
  store i64 %21, i64* %14, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 16, i64* %14, align 8
  br label %24

24:                                               ; preds = %23, %19
  %25 = load i64, i64* %14, align 8
  %26 = add i64 16, %25
  %27 = load i64, i64* %10, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %24
  %32 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = call i32 %32(i8* %33, i8* %34, i32 %36, i8* %37, i8* %38, i32 0)
  %40 = load i64, i64* %10, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 %40
  store i8* %42, i8** %8, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %31, %24
  %47 = bitcast %union.anon* %15 to [32 x i8]*
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %47, i64 0, i64 0
  %49 = call i32 @memset(i8* %48, i32 0, i32 32)
  %50 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast %union.anon* %15 to [32 x i8]*
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %52, i64 0, i64 0
  %54 = load i8*, i8** %11, align 8
  %55 = bitcast %union.anon* %15 to [32 x i8]*
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %55, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 16
  %58 = call i32 %50(i8* %51, i8* %53, i32 16, i8* %54, i8* %57, i32 0)
  %59 = bitcast %union.anon* %15 to [32 x i8]*
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %59, i64 0, i64 0
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 16
  %63 = load i64, i64* %14, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %60, i8* %62, i32 %64)
  %66 = load i32 (i8*, i8*, i32, i8*, i8*, i32)*, i32 (i8*, i8*, i32, i8*, i8*, i32)** %13, align 8
  %67 = bitcast %union.anon* %15 to [32 x i8]*
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %67, i64 0, i64 0
  %69 = bitcast %union.anon* %15 to [32 x i8]*
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %69, i64 0, i64 0
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 %66(i8* %68, i8* %70, i32 32, i8* %71, i8* %72, i32 0)
  %74 = load i8*, i8** %9, align 8
  %75 = bitcast %union.anon* %15 to [32 x i8]*
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %75, i64 0, i64 0
  %77 = load i64, i64* %14, align 8
  %78 = add i64 16, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @memcpy(i8* %74, i8* %76, i32 %79)
  %81 = load i64, i64* %10, align 8
  %82 = add i64 16, %81
  %83 = load i64, i64* %14, align 8
  %84 = add i64 %82, %83
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %46, %18
  %86 = load i64, i64* %7, align 8
  ret i64 %86
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
