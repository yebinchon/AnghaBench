; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_openssl.c_openssl_ciphers.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_openssl.c_openssl_ciphers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NID_rc4 = common dso_local global i32 0, align 4
@NID_rc4_40 = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i32**, i32)* @openssl_ciphers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openssl_ciphers(i32* %0, i32** %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32**, i32*** %7, align 8
  %11 = icmp ne i32** %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32**, i32*** %8, align 8
  %14 = call i32 @test_cipher_nids(i32** %13)
  store i32 %14, i32* %5, align 4
  br label %33

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @NID_rc4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = call i32* (...) @test_r4_cipher()
  %21 = load i32**, i32*** %7, align 8
  store i32* %20, i32** %21, align 8
  br label %32

22:                                               ; preds = %15
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NID_rc4_40, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = call i32* (...) @test_r4_40_cipher()
  %28 = load i32**, i32*** %7, align 8
  store i32* %27, i32** %28, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i32**, i32*** %7, align 8
  store i32* null, i32** %30, align 8
  store i32 0, i32* %5, align 4
  br label %33

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %19
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %29, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @test_cipher_nids(i32**) #1

declare dso_local i32* @test_r4_cipher(...) #1

declare dso_local i32* @test_r4_40_cipher(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
