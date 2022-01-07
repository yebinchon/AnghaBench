; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc2.c_rc2_meth_to_magic.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_e_rc2.c_rc2_meth_to_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_CTRL_GET_RC2_KEY_BITS = common dso_local global i32 0, align 4
@RC2_128_MAGIC = common dso_local global i32 0, align 4
@RC2_64_MAGIC = common dso_local global i32 0, align 4
@RC2_40_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rc2_meth_to_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc2_meth_to_magic(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @EVP_CTRL_GET_RC2_KEY_BITS, align 4
  %7 = call i64 @EVP_CIPHER_CTX_ctrl(i32* %5, i32 %6, i32 0, i32* %4)
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 128
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @RC2_128_MAGIC, align 4
  store i32 %14, i32* %2, align 4
  br label %26

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 64
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @RC2_64_MAGIC, align 4
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 40
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @RC2_40_MAGIC, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %18, %13, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
