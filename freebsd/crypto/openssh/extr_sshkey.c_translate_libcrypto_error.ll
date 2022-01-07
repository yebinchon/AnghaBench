; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_translate_libcrypto_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshkey.c_translate_libcrypto_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSH_ERR_KEY_WRONG_PASSPHRASE = common dso_local global i32 0, align 4
@SSH_ERR_INVALID_FORMAT = common dso_local global i32 0, align 4
@SSH_ERR_LIBCRYPTO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @translate_libcrypto_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_libcrypto_error(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i32 @ERR_GET_REASON(i64 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @ERR_GET_LIB(i64 %7)
  switch i32 %8, label %25 [
    i32 135, label %9
    i32 136, label %15
    i32 137, label %23
  ]

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %13 [
    i32 129, label %11
    i32 128, label %11
    i32 130, label %11
  ]

11:                                               ; preds = %9, %9, %9
  %12 = load i32, i32* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 4
  store i32 %12, i32* %2, align 4
  br label %27

13:                                               ; preds = %9
  %14 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %14, i32* %2, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %21 [
    i32 134, label %17
    i32 133, label %19
    i32 132, label %19
    i32 131, label %19
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @SSH_ERR_KEY_WRONG_PASSPHRASE, align 4
  store i32 %18, i32* %2, align 4
  br label %27

19:                                               ; preds = %15, %15, %15
  %20 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %20, i32* %2, align 4
  br label %27

21:                                               ; preds = %15
  %22 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @SSH_ERR_INVALID_FORMAT, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @SSH_ERR_LIBCRYPTO_ERROR, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %17, %13, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ERR_GET_REASON(i64) #1

declare dso_local i32 @ERR_GET_LIB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
