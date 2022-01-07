; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_point_get_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_point_get_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@EC_R_POINT_AT_INFINITY = common dso_local global i32 0, align 4
@ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GF2m_simple_point_get_affine_coordinates(i32* %0, %struct.TYPE_4__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %15 = call i64 @EC_POINT_is_at_infinity(i32* %13, %struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES, align 4
  %19 = load i32, i32* @EC_R_POINT_AT_INFINITY, align 4
  %20 = call i32 @ECerr(i32 %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %63

21:                                               ; preds = %5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (...) @BN_value_one()
  %26 = call i64 @BN_cmp(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @EC_F_EC_GF2M_SIMPLE_POINT_GET_AFFINE_COORDINATES, align 4
  %30 = load i32, i32* @ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED, align 4
  %31 = call i32 @ECerr(i32 %29, i32 %30)
  store i32 0, i32* %6, align 4
  br label %63

32:                                               ; preds = %21
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32*, i32** %9, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BN_copy(i32* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %61

43:                                               ; preds = %35
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @BN_set_negative(i32* %44, i32 0)
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32*, i32** %10, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BN_copy(i32* %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  br label %61

57:                                               ; preds = %49
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @BN_set_negative(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %57, %46
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %56, %42
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %28, %17
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i64 @EC_POINT_is_at_infinity(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i64 @BN_cmp(i32, i32) #1

declare dso_local i32 @BN_value_one(...) #1

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i32 @BN_set_negative(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
