; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ec_validate_private.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_sshkey_ec_validate_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_KEY_INVALID_EC_VALUE = common dso_local global i32 0, align 4
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sshkey_ec_validate_private(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32, i32* @SSH_ERR_KEY_INVALID_EC_VALUE, align 4
  store i32 %8, i32* %7, align 4
  %9 = call i32* (...) @BN_CTX_new()
  store i32* %9, i32** %4, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %12, i32* %2, align 4
  br label %63

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @BN_CTX_start(i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @BN_CTX_get(i32* %16)
  store i32* %17, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @BN_CTX_get(i32* %20)
  store i32* %21, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %13
  %24 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %24, i32* %7, align 4
  br label %59

25:                                               ; preds = %19
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @EC_KEY_get0_group(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @EC_GROUP_get_order(i32 %27, i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %33, i32* %7, align 4
  br label %59

34:                                               ; preds = %25
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @EC_KEY_get0_private_key(i32* %35)
  %37 = call i32 @BN_num_bits(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @BN_num_bits(i32* %38)
  %40 = sdiv i32 %39, 2
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %34
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 (...) @BN_value_one()
  %47 = call i32 @BN_sub(i32* %44, i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %50, i32* %7, align 4
  br label %59

51:                                               ; preds = %43
  %52 = load i32*, i32** %3, align 8
  %53 = call i32* @EC_KEY_get0_private_key(i32* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @BN_cmp(i32* %53, i32* %54)
  %56 = icmp sge i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %58, %57, %49, %42, %32, %23
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @BN_CTX_free(i32* %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_GROUP_get_order(i32, i32*, i32*) #1

declare dso_local i32 @EC_KEY_get0_group(i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32* @EC_KEY_get0_private_key(i32*) #1

declare dso_local i32 @BN_sub(i32*, i32*, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
