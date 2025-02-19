; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_mp.c_rsa_multip_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_mp.c_rsa_multip_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RSA_MAX_PRIME_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_multip_cap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 5, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 1024
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 2, i32* %3, align 4
  br label %17

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 4096
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 3, i32* %3, align 4
  br label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 8192
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %11
  br label %16

16:                                               ; preds = %15, %10
  br label %17

17:                                               ; preds = %16, %6
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @RSA_MAX_PRIME_NUM, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @RSA_MAX_PRIME_NUM, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
