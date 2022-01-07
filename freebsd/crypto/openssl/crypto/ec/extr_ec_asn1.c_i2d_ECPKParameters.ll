; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_i2d_ECPKParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_asn1.c_i2d_ECPKParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_I2D_ECPKPARAMETERS = common dso_local global i32 0, align 4
@EC_R_GROUP2PKPARAMETERS_FAILURE = common dso_local global i32 0, align 4
@EC_R_I2D_ECPKPARAMETERS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2d_ECPKParameters(i32* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32* @EC_GROUP_get_ecpkparameters(i32* %8, i32* null)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @EC_F_I2D_ECPKPARAMETERS, align 4
  %14 = load i32, i32* @EC_R_GROUP2PKPARAMETERS_FAILURE, align 4
  %15 = call i32 @ECerr(i32 %13, i32 %14)
  store i32 0, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = call i32 @i2d_ECPKPARAMETERS(i32* %17, i8** %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @EC_F_I2D_ECPKPARAMETERS, align 4
  %23 = load i32, i32* @EC_R_I2D_ECPKPARAMETERS_FAILURE, align 4
  %24 = call i32 @ECerr(i32 %22, i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @ECPKPARAMETERS_free(i32* %25)
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @ECPKPARAMETERS_free(i32* %28)
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %21, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32* @EC_GROUP_get_ecpkparameters(i32*, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @i2d_ECPKPARAMETERS(i32*, i8**) #1

declare dso_local i32 @ECPKPARAMETERS_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
