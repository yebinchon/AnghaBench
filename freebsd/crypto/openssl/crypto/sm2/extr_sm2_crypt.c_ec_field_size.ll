; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_crypt.c_ec_field_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/sm2/extr_sm2_crypt.c_ec_field_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ec_field_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ec_field_size(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %7 = call i32* (...) @BN_new()
  store i32* %7, i32** %3, align 8
  %8 = call i32* (...) @BN_new()
  store i32* %8, i32** %4, align 8
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %1
  br label %33

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @EC_GROUP_get_curve(i32* %20, i32* %21, i32* %22, i32* %23, i32* null)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %33

27:                                               ; preds = %19
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @BN_num_bits(i32* %28)
  %30 = add nsw i32 %29, 7
  %31 = sdiv i32 %30, 8
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %27, %26, %18
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @BN_free(i32* %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @BN_free(i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @BN_free(i32* %38)
  %40 = load i64, i64* %6, align 8
  ret i64 %40
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @EC_GROUP_get_curve(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
