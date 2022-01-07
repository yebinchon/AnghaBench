; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_BN_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_lib.c_BN_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BN_FLG_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BN_dup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %36

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @bn_check_top(i32* %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @BN_FLG_SECURE, align 4
  %13 = call i64 @BN_get_flags(i32* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32* (...) @BN_secure_new()
  br label %19

17:                                               ; preds = %8
  %18 = call i32* (...) @BN_new()
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32* [ %16, %15 ], [ %18, %17 ]
  store i32* %20, i32** %4, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** %2, align 8
  br label %36

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @BN_copy(i32* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @BN_free(i32* %30)
  store i32* null, i32** %2, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @bn_check_top(i32* %33)
  %35 = load i32*, i32** %4, align 8
  store i32* %35, i32** %2, align 8
  br label %36

36:                                               ; preds = %32, %29, %23, %7
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

declare dso_local i32 @bn_check_top(i32*) #1

declare dso_local i64 @BN_get_flags(i32*, i32) #1

declare dso_local i32* @BN_secure_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_copy(i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
