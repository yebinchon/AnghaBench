; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_mont.c_bn_mul_mont_fixed_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bn/extr_bn_mont.c_bn_mul_mont_fixed_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32 }

@BN_FLG_FIXED_TOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bn_mul_mont_fixed_top(%struct.TYPE_24__* %0, %struct.TYPE_24__* %1, %struct.TYPE_24__* %2, %struct.TYPE_23__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* %14, align 4
  %27 = mul nsw i32 2, %26
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %74

30:                                               ; preds = %5
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @BN_CTX_start(i32* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = call %struct.TYPE_24__* @BN_CTX_get(i32* %33)
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %12, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %36 = icmp eq %struct.TYPE_24__* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %70

38:                                               ; preds = %30
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %40 = call i32 @bn_check_top(%struct.TYPE_24__* %39)
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %43 = icmp eq %struct.TYPE_24__* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @bn_sqr_fixed_top(%struct.TYPE_24__* %45, %struct.TYPE_24__* %46, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %70

51:                                               ; preds = %44
  br label %61

52:                                               ; preds = %38
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @bn_mul_fixed_top(%struct.TYPE_24__* %53, %struct.TYPE_24__* %54, %struct.TYPE_24__* %55, i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %70

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @BN_from_montgomery(%struct.TYPE_24__* %62, %struct.TYPE_24__* %63, %struct.TYPE_23__* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %70

69:                                               ; preds = %61
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %68, %59, %50, %37
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @BN_CTX_end(i32* %71)
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %29
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local %struct.TYPE_24__* @BN_CTX_get(i32*) #1

declare dso_local i32 @bn_check_top(%struct.TYPE_24__*) #1

declare dso_local i32 @bn_sqr_fixed_top(%struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @bn_mul_fixed_top(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32*) #1

declare dso_local i32 @BN_from_montgomery(%struct.TYPE_24__*, %struct.TYPE_24__*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
