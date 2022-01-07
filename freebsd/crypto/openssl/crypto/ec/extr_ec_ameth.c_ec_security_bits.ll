; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ec_security_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_ameth.c_ec_security_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ec_security_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_security_bits(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @ec_bits(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 512
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 256, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 384
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 192, i32* %2, align 4
  br label %29

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 256
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 128, i32* %2, align 4
  br label %29

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = icmp sge i32 %19, 224
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 112, i32* %2, align 4
  br label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 160
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 80, i32* %2, align 4
  br label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %25, %21, %17, %13, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @ec_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
