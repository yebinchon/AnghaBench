; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_field_inv.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_field_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)* }

@EC_F_EC_GFP_SIMPLE_FIELD_INV = common dso_local global i32 0, align 4
@EC_R_CANNOT_INVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_field_inv(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %9, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = call i32* (...) @BN_CTX_secure_new()
  store i32* %16, i32** %11, align 8
  store i32* %16, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %88

19:                                               ; preds = %15, %4
  %20 = load i32*, i32** %9, align 8
  %21 = call i32 @BN_CTX_start(i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @BN_CTX_get(i32* %22)
  store i32* %23, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %82

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32*, i32** %10, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @BN_priv_rand_range(i32* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %82

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @BN_is_zero(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %27, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 %45(%struct.TYPE_7__* %46, i32* %47, i32* %48, i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %40
  br label %82

54:                                               ; preds = %40
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @BN_mod_inverse(i32* %55, i32* %56, i32 %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @EC_F_EC_GFP_SIMPLE_FIELD_INV, align 4
  %65 = load i32, i32* @EC_R_CANNOT_INVERT, align 4
  %66 = call i32 @ECerr(i32 %64, i32 %65)
  br label %82

67:                                               ; preds = %54
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*)** %71, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 %72(%struct.TYPE_7__* %73, i32* %74, i32* %75, i32* %76, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %67
  br label %82

81:                                               ; preds = %67
  store i32 1, i32* %12, align 4
  br label %82

82:                                               ; preds = %81, %80, %63, %53, %34, %25
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @BN_CTX_end(i32* %83)
  %85 = load i32*, i32** %11, align 8
  %86 = call i32 @BN_CTX_free(i32* %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %82, %18
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32* @BN_CTX_secure_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_mod_inverse(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
