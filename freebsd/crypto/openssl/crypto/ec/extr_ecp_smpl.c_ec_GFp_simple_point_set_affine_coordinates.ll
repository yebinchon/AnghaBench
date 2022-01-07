; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_point_set_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_point_set_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_point_set_affine_coordinates(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = load i32*, i32** %10, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %5
  %18 = load i32, i32* @EC_F_EC_GFP_SIMPLE_POINT_SET_AFFINE_COORDINATES, align 4
  %19 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %20 = call i32 @ECerr(i32 %18, i32 %19)
  store i32 0, i32* %6, align 4
  br label %29

21:                                               ; preds = %14
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 (...) @BN_value_one()
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @EC_POINT_set_Jprojective_coordinates_GFp(i32* %22, i32* %23, i32* %24, i32* %25, i32 %26, i32* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_POINT_set_Jprojective_coordinates_GFp(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @BN_value_one(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
