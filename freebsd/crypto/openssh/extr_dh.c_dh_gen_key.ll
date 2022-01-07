; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_gen_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_dh.c_dh_gen_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dh_gen_key(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @DH_get0_pqg(i32* %9, i32** %7, i32* null, i32* null)
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @BN_num_bits(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = sdiv i32 %22, 2
  %24 = icmp sgt i32 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 2, %26
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25, %20, %16, %13, %2
  %31 = load i32, i32* @SSH_ERR_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 256, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %32
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @MINIMUM(i32 %39, i32 %41)
  %43 = call i32 @DH_set_length(i32* %37, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %36
  %48 = load i32*, i32** %4, align 8
  %49 = call i64 @DH_generate_key(i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @DH_get0_key(i32* %54, i32** %8, i32* null)
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @dh_pub_is_valid(i32* %56, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %60, %51, %45, %30
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @DH_get0_pqg(i32*, i32**, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @DH_set_length(i32*, i32) #1

declare dso_local i32 @MINIMUM(i32, i32) #1

declare dso_local i64 @DH_generate_key(i32*) #1

declare dso_local i32 @DH_get0_key(i32*, i32**, i32*) #1

declare dso_local i32 @dh_pub_is_valid(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
