; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check_pub_key_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_check.c_DH_check_pub_key_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_CHECK_PUBKEY_TOO_SMALL = common dso_local global i32 0, align 4
@DH_F_DH_CHECK_PUB_KEY_EX = common dso_local global i32 0, align 4
@DH_R_CHECK_PUBKEY_TOO_SMALL = common dso_local global i32 0, align 4
@DH_CHECK_PUBKEY_TOO_LARGE = common dso_local global i32 0, align 4
@DH_R_CHECK_PUBKEY_TOO_LARGE = common dso_local global i32 0, align 4
@DH_CHECK_PUBKEY_INVALID = common dso_local global i32 0, align 4
@DH_R_CHECK_PUBKEY_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_check_pub_key_ex(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @DH_check_pub_key(i32* %7, i32* %8, i32* %6)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DH_CHECK_PUBKEY_TOO_SMALL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @DH_F_DH_CHECK_PUB_KEY_EX, align 4
  %19 = load i32, i32* @DH_R_CHECK_PUBKEY_TOO_SMALL, align 4
  %20 = call i32 @DHerr(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @DH_CHECK_PUBKEY_TOO_LARGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @DH_F_DH_CHECK_PUB_KEY_EX, align 4
  %28 = load i32, i32* @DH_R_CHECK_PUBKEY_TOO_LARGE, align 4
  %29 = call i32 @DHerr(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DH_CHECK_PUBKEY_INVALID, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @DH_F_DH_CHECK_PUB_KEY_EX, align 4
  %37 = load i32, i32* @DH_R_CHECK_PUBKEY_INVALID, align 4
  %38 = call i32 @DHerr(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @DH_check_pub_key(i32*, i32*, i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
