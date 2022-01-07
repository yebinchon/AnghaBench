; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_get_random_qr_qnr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dragonfly.c_dragonfly_get_random_qr_qnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dragonfly_get_random_qr_qnr(%struct.crypto_bignum* %0, %struct.crypto_bignum** %1, %struct.crypto_bignum** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_bignum*, align 8
  %6 = alloca %struct.crypto_bignum**, align 8
  %7 = alloca %struct.crypto_bignum**, align 8
  %8 = alloca %struct.crypto_bignum*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %5, align 8
  store %struct.crypto_bignum** %1, %struct.crypto_bignum*** %6, align 8
  store %struct.crypto_bignum** %2, %struct.crypto_bignum*** %7, align 8
  %10 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %10, align 8
  %11 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %11, align 8
  br label %12

12:                                               ; preds = %62, %3
  %13 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  %14 = load %struct.crypto_bignum*, %struct.crypto_bignum** %13, align 8
  %15 = icmp ne %struct.crypto_bignum* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  %18 = load %struct.crypto_bignum*, %struct.crypto_bignum** %17, align 8
  %19 = icmp ne %struct.crypto_bignum* %18, null
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %16, %12
  %22 = phi i1 [ true, %12 ], [ %20, %16 ]
  br i1 %22, label %23, label %63

23:                                               ; preds = %21
  %24 = call %struct.crypto_bignum* (...) @crypto_bignum_init()
  store %struct.crypto_bignum* %24, %struct.crypto_bignum** %8, align 8
  %25 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %26 = icmp ne %struct.crypto_bignum* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %29 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %30 = call i64 @crypto_bignum_rand(%struct.crypto_bignum* %28, %struct.crypto_bignum* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27, %23
  %33 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %34 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %33, i32 0)
  br label %63

35:                                               ; preds = %27
  %36 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %37 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %38 = call i32 @crypto_bignum_legendre(%struct.crypto_bignum* %36, %struct.crypto_bignum* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  %43 = load %struct.crypto_bignum*, %struct.crypto_bignum** %42, align 8
  %44 = icmp ne %struct.crypto_bignum* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %47 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  store %struct.crypto_bignum* %46, %struct.crypto_bignum** %47, align 8
  br label %62

48:                                               ; preds = %41, %35
  %49 = load i32, i32* %9, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  %53 = load %struct.crypto_bignum*, %struct.crypto_bignum** %52, align 8
  %54 = icmp ne %struct.crypto_bignum* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %57 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  store %struct.crypto_bignum* %56, %struct.crypto_bignum** %57, align 8
  br label %61

58:                                               ; preds = %51, %48
  %59 = load %struct.crypto_bignum*, %struct.crypto_bignum** %8, align 8
  %60 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %45
  br label %12

63:                                               ; preds = %32, %21
  %64 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  %65 = load %struct.crypto_bignum*, %struct.crypto_bignum** %64, align 8
  %66 = icmp ne %struct.crypto_bignum* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  %69 = load %struct.crypto_bignum*, %struct.crypto_bignum** %68, align 8
  %70 = icmp ne %struct.crypto_bignum* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %81

72:                                               ; preds = %67, %63
  %73 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  %74 = load %struct.crypto_bignum*, %struct.crypto_bignum** %73, align 8
  %75 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %74, i32 0)
  %76 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  %77 = load %struct.crypto_bignum*, %struct.crypto_bignum** %76, align 8
  %78 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %77, i32 0)
  %79 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %7, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %79, align 8
  %80 = load %struct.crypto_bignum**, %struct.crypto_bignum*** %6, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %80, align 8
  store i32 -1, i32* %4, align 4
  br label %81

81:                                               ; preds = %72, %71
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.crypto_bignum* @crypto_bignum_init(...) #1

declare dso_local i64 @crypto_bignum_rand(%struct.crypto_bignum*, %struct.crypto_bignum*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

declare dso_local i32 @crypto_bignum_legendre(%struct.crypto_bignum*, %struct.crypto_bignum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
