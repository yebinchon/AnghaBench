; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_get_rand_1_to_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_get_rand_1_to_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_bignum* (%struct.crypto_bignum*)* @dragonfly_get_rand_1_to_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_bignum* @dragonfly_get_rand_1_to_p_1(%struct.crypto_bignum* %0) #0 {
  %2 = alloca %struct.crypto_bignum*, align 8
  %3 = alloca %struct.crypto_bignum*, align 8
  %4 = alloca %struct.crypto_bignum*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %2, align 8
  %6 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %6, %struct.crypto_bignum** %3, align 8
  %7 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %7, %struct.crypto_bignum** %4, align 8
  %8 = call %struct.crypto_bignum* @crypto_bignum_init_set(i32* bitcast ([2 x i8]* @.str to i32*), i32 1)
  store %struct.crypto_bignum* %8, %struct.crypto_bignum** %5, align 8
  %9 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %10 = icmp ne %struct.crypto_bignum* %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %13 = icmp ne %struct.crypto_bignum* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %16 = icmp ne %struct.crypto_bignum* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.crypto_bignum*, %struct.crypto_bignum** %2, align 8
  %19 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %20 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %21 = call i64 @crypto_bignum_sub(%struct.crypto_bignum* %18, %struct.crypto_bignum* %19, %struct.crypto_bignum* %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %17
  %24 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %25 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %26 = call i64 @crypto_bignum_rand(%struct.crypto_bignum* %24, %struct.crypto_bignum* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %30 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %31 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %32 = call i64 @crypto_bignum_add(%struct.crypto_bignum* %29, %struct.crypto_bignum* %30, %struct.crypto_bignum* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %23, %17, %14, %11, %1
  %35 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  %36 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %35, i32 0)
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %3, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %39 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %38, i32 0)
  %40 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %41 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %40, i32 0)
  %42 = load %struct.crypto_bignum*, %struct.crypto_bignum** %3, align 8
  ret %struct.crypto_bignum* %42
}

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #1

declare dso_local %struct.crypto_bignum* @crypto_bignum_init_set(i32*, i32) #1

declare dso_local i64 @crypto_bignum_sub(%struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_rand(%struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i64 @crypto_bignum_add(%struct.crypto_bignum*, %struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
