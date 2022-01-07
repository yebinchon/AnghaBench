; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_reduce_2k_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_libtommath.c_mp_reduce_2k_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MP_OKAY = common dso_local global i32 0, align 4
@MP_LT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @mp_reduce_2k_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_reduce_2k_l(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = call i32 @mp_init(i32* %8)
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @MP_OKAY, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %4, align 4
  br label %55

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @mp_count_bits(i32* %17)
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %46, %16
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @mp_div_2d(i32* %20, i32 %21, i32* %8, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @MP_OKAY, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %52

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @mp_mul(i32* %8, i32* %28, i32* %8)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @MP_OKAY, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %52

33:                                               ; preds = %27
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @s_mp_add(i32* %34, i32* %8, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* @MP_OKAY, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %52

40:                                               ; preds = %33
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i64 @mp_cmp_mag(i32* %41, i32* %42)
  %44 = load i64, i64* @MP_LT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @s_mp_sub(i32* %47, i32* %48, i32* %49)
  br label %19

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %39, %32, %26
  %53 = call i32 @mp_clear(i32* %8)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mp_init(i32*) #1

declare dso_local i32 @mp_count_bits(i32*) #1

declare dso_local i32 @mp_div_2d(i32*, i32, i32*, i32*) #1

declare dso_local i32 @mp_mul(i32*, i32*, i32*) #1

declare dso_local i32 @s_mp_add(i32*, i32*, i32*) #1

declare dso_local i64 @mp_cmp_mag(i32*, i32*) #1

declare dso_local i32 @s_mp_sub(i32*, i32*, i32*) #1

declare dso_local i32 @mp_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
