; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_ec_GFp_nistp256_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nistp256.c_ec_GFp_nistp256_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@nistp256_curve_params = common dso_local global i32* null, align 8
@EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@EC_R_WRONG_CURVE_PARAMETERS = common dso_local global i32 0, align 4
@BN_nist_mod_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nistp256_group_set_curve(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %5
  %20 = call i32* (...) @BN_CTX_new()
  store i32* %20, i32** %13, align 8
  store i32* %20, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %86

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @BN_CTX_start(i32* %25)
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @BN_CTX_get(i32* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32* @BN_CTX_get(i32* %29)
  store i32* %30, i32** %15, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32* @BN_CTX_get(i32* %31)
  store i32* %32, i32** %16, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %80

36:                                               ; preds = %24
  %37 = load i32*, i32** @nistp256_curve_params, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 @BN_bin2bn(i32 %39, i32 4, i32* %40)
  %42 = load i32*, i32** @nistp256_curve_params, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %15, align 8
  %46 = call i32 @BN_bin2bn(i32 %44, i32 4, i32* %45)
  %47 = load i32*, i32** @nistp256_curve_params, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @BN_bin2bn(i32 %49, i32 4, i32* %50)
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i64 @BN_cmp(i32* %52, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %36
  %57 = load i32*, i32** %15, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @BN_cmp(i32* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %16, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @BN_cmp(i32* %62, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %56, %36
  %67 = load i32, i32* @EC_F_EC_GFP_NISTP256_GROUP_SET_CURVE, align 4
  %68 = load i32, i32* @EC_R_WRONG_CURVE_PARAMETERS, align 4
  %69 = call i32 @ECerr(i32 %67, i32 %68)
  br label %80

70:                                               ; preds = %61
  %71 = load i32, i32* @BN_nist_mod_256, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__* %74, i32* %75, i32* %76, i32* %77, i32* %78)
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %70, %66, %35
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @BN_CTX_end(i32* %81)
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @BN_CTX_free(i32* %83)
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %80, %22
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_bin2bn(i32, i32, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
