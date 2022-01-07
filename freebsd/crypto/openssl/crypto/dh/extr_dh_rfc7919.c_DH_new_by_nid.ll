; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_rfc7919.c_DH_new_by_nid.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_rfc7919.c_DH_new_by_nid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_bignum_ffdhe2048_p = common dso_local global i32 0, align 4
@_bignum_ffdhe3072_p = common dso_local global i32 0, align 4
@_bignum_ffdhe4096_p = common dso_local global i32 0, align 4
@_bignum_ffdhe6144_p = common dso_local global i32 0, align 4
@_bignum_ffdhe8192_p = common dso_local global i32 0, align 4
@DH_F_DH_NEW_BY_NID = common dso_local global i32 0, align 4
@DH_R_INVALID_PARAMETER_NID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @DH_new_by_nid(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 132, label %5
    i32 131, label %7
    i32 130, label %9
    i32 129, label %11
    i32 128, label %13
  ]

5:                                                ; preds = %1
  %6 = call i32* @dh_param_init(i32* @_bignum_ffdhe2048_p, i32 225)
  store i32* %6, i32** %2, align 8
  br label %19

7:                                                ; preds = %1
  %8 = call i32* @dh_param_init(i32* @_bignum_ffdhe3072_p, i32 275)
  store i32* %8, i32** %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = call i32* @dh_param_init(i32* @_bignum_ffdhe4096_p, i32 325)
  store i32* %10, i32** %2, align 8
  br label %19

11:                                               ; preds = %1
  %12 = call i32* @dh_param_init(i32* @_bignum_ffdhe6144_p, i32 375)
  store i32* %12, i32** %2, align 8
  br label %19

13:                                               ; preds = %1
  %14 = call i32* @dh_param_init(i32* @_bignum_ffdhe8192_p, i32 400)
  store i32* %14, i32** %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @DH_F_DH_NEW_BY_NID, align 4
  %17 = load i32, i32* @DH_R_INVALID_PARAMETER_NID, align 4
  %18 = call i32 @DHerr(i32 %16, i32 %17)
  store i32* null, i32** %2, align 8
  br label %19

19:                                               ; preds = %15, %13, %11, %9, %7, %5
  %20 = load i32*, i32** %2, align 8
  ret i32* %20
}

declare dso_local i32* @dh_param_init(i32*, i32) #1

declare dso_local i32 @DHerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
