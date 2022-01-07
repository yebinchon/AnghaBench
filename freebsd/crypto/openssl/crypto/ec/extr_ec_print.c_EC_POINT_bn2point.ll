; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_print.c_EC_POINT_bn2point.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_print.c_EC_POINT_bn2point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_EC_POINT_BN2POINT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @EC_POINT_bn2point(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i64 @BN_num_bytes(i32* %13)
  store i64 %14, i64* %10, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %68

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  %19 = call i8* @OPENSSL_malloc(i64 %18)
  store i8* %19, i8** %11, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @EC_F_EC_POINT_BN2POINT, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @ECerr(i32 %22, i32 %23)
  store i32* null, i32** %5, align 8
  br label %68

25:                                               ; preds = %17
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @BN_bn2bin(i32* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @OPENSSL_free(i8* %31)
  store i32* null, i32** %5, align 8
  br label %68

33:                                               ; preds = %25
  %34 = load i32*, i32** %8, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i32* @EC_POINT_new(i32* %37)
  store i32* %38, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @OPENSSL_free(i8* %41)
  store i32* null, i32** %5, align 8
  br label %68

43:                                               ; preds = %36
  br label %46

44:                                               ; preds = %33
  %45 = load i32*, i32** %8, align 8
  store i32* %45, i32** %12, align 8
  br label %46

46:                                               ; preds = %44, %43
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @EC_POINT_oct2point(i32* %47, i32* %48, i8* %49, i64 %50, i32* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %46
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @EC_POINT_clear_free(i32* %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @OPENSSL_free(i8* %62)
  store i32* null, i32** %5, align 8
  br label %68

64:                                               ; preds = %46
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @OPENSSL_free(i8* %65)
  %67 = load i32*, i32** %12, align 8
  store i32* %67, i32** %5, align 8
  br label %68

68:                                               ; preds = %64, %61, %40, %30, %21, %16
  %69 = load i32*, i32** %5, align 8
  ret i32* %69
}

declare dso_local i64 @BN_num_bytes(i32*) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_bn2bin(i32*, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_oct2point(i32*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @EC_POINT_clear_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
