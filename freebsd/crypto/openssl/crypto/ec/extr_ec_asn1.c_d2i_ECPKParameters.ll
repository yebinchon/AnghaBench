; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_d2i_ECPKParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_d2i_ECPKParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_D2I_ECPKPARAMETERS = common dso_local global i32 0, align 4
@EC_R_D2I_ECPKPARAMETERS_FAILURE = common dso_local global i32 0, align 4
@EC_R_PKPARAMETERS2GROUP_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @d2i_ECPKParameters(i32** %0, i8** %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32** %0, i32*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %11 = load i8**, i8*** %6, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32* @d2i_ECPKPARAMETERS(i32* null, i8** %10, i64 %13)
  store i32* %14, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* @EC_F_D2I_ECPKPARAMETERS, align 4
  %18 = load i32, i32* @EC_R_D2I_ECPKPARAMETERS_FAILURE, align 4
  %19 = call i32 @ECerr(i32 %17, i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @ECPKPARAMETERS_free(i32* %20)
  store i32* null, i32** %4, align 8
  br label %47

22:                                               ; preds = %3
  %23 = load i32*, i32** %9, align 8
  %24 = call i32* @EC_GROUP_new_from_ecpkparameters(i32* %23)
  store i32* %24, i32** %8, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @EC_F_D2I_ECPKPARAMETERS, align 4
  %28 = load i32, i32* @EC_R_PKPARAMETERS2GROUP_FAILURE, align 4
  %29 = call i32 @ECerr(i32 %27, i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @ECPKPARAMETERS_free(i32* %30)
  store i32* null, i32** %4, align 8
  br label %47

32:                                               ; preds = %22
  %33 = load i32**, i32*** %5, align 8
  %34 = icmp ne i32** %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @EC_GROUP_free(i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = load i32**, i32*** %5, align 8
  store i32* %39, i32** %40, align 8
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @ECPKPARAMETERS_free(i32* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = load i8**, i8*** %6, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %4, align 8
  br label %47

47:                                               ; preds = %41, %26, %16
  %48 = load i32*, i32** %4, align 8
  ret i32* %48
}

declare dso_local i32* @d2i_ECPKPARAMETERS(i32*, i8**, i64) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ECPKPARAMETERS_free(i32*) #1

declare dso_local i32* @EC_GROUP_new_from_ecpkparameters(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
