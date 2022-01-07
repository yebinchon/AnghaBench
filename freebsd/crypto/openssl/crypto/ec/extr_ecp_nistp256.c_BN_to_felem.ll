; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_BN_to_felem.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_BN_to_felem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_BN_TO_FELEM = common dso_local global i32 0, align 4
@EC_R_BIGNUM_OUT_OF_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @BN_to_felem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BN_to_felem(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i64 @BN_is_negative(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @EC_F_BN_TO_FELEM, align 4
  %13 = load i32, i32* @EC_R_BIGNUM_OUT_OF_RANGE, align 4
  %14 = call i32 @ECerr(i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %29

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BN_bn2lebinpad(i32* %16, i32 %17, i32 4)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @EC_F_BN_TO_FELEM, align 4
  %23 = load i32, i32* @EC_R_BIGNUM_OUT_OF_RANGE, align 4
  %24 = call i32 @ECerr(i32 %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %29

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @bin32_to_felem(i32 %26, i32 %27)
  store i32 1, i32* %3, align 4
  br label %29

29:                                               ; preds = %25, %21, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @BN_is_negative(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_bn2lebinpad(i32*, i32, i32) #1

declare dso_local i32 @bin32_to_felem(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
