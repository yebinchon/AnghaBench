; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_EC_KEY_calc_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_keys.c_ldns_EC_KEY_calc_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @ldns_EC_KEY_calc_public to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_EC_KEY_calc_public(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @EC_KEY_get0_group(i32* %6)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32* @EC_POINT_new(i32* %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @EC_GROUP_get0_generator(i32* %15)
  %17 = call i32 @EC_POINT_copy(i32* %14, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @EC_POINT_free(i32* %20)
  store i32 0, i32* %2, align 4
  br label %43

22:                                               ; preds = %13
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @EC_KEY_get0_private_key(i32* %25)
  %27 = call i32 @EC_POINT_mul(i32* %23, i32* %24, i32 %26, i32* null, i32* null, i32* null)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @EC_POINT_free(i32* %30)
  store i32 0, i32* %2, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load i32*, i32** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = call i64 @EC_KEY_set_public_key(i32* %33, i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @EC_POINT_free(i32* %38)
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %32
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @EC_POINT_free(i32* %41)
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %37, %29, %19, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32* @EC_KEY_get0_group(i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32 @EC_POINT_copy(i32*, i32) #1

declare dso_local i32 @EC_GROUP_get0_generator(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @EC_POINT_mul(i32*, i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @EC_KEY_get0_private_key(i32*) #1

declare dso_local i64 @EC_KEY_set_public_key(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
