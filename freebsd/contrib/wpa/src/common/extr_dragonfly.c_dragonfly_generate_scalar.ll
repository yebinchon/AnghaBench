; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_generate_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_generate_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"dragonfly: Unable to get randomness for own scalar\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dragonfly_generate_scalar(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1, %struct.crypto_bignum* %2, %struct.crypto_bignum* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_bignum*, align 8
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca %struct.crypto_bignum*, align 8
  %9 = alloca %struct.crypto_bignum*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %6, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %7, align 8
  store %struct.crypto_bignum* %2, %struct.crypto_bignum** %8, align 8
  store %struct.crypto_bignum* %3, %struct.crypto_bignum** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %46, %4
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 100
  br i1 %13, label %14, label %49

14:                                               ; preds = %11
  %15 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %16 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %17 = call i64 @dragonfly_get_rand_2_to_r_1(%struct.crypto_bignum* %15, %struct.crypto_bignum* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %14
  %20 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %21 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %22 = call i64 @dragonfly_get_rand_2_to_r_1(%struct.crypto_bignum* %20, %struct.crypto_bignum* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %26 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %27 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %28 = call i64 @crypto_bignum_add(%struct.crypto_bignum* %25, %struct.crypto_bignum* %26, %struct.crypto_bignum* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %32 = load %struct.crypto_bignum*, %struct.crypto_bignum** %6, align 8
  %33 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %34 = call i64 @crypto_bignum_mod(%struct.crypto_bignum* %31, %struct.crypto_bignum* %32, %struct.crypto_bignum* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %38 = call i32 @crypto_bignum_is_zero(%struct.crypto_bignum* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.crypto_bignum*, %struct.crypto_bignum** %9, align 8
  %42 = call i32 @crypto_bignum_is_one(%struct.crypto_bignum* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %52

45:                                               ; preds = %40, %36, %30, %24, %19, %14
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = call i32 @wpa_printf(i32 %50, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i64 @dragonfly_get_rand_2_to_r_1(%struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_add(%struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_mod(%struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_is_zero(%struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_is_one(%struct.crypto_bignum*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
