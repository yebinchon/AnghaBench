; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nist.c_ec_GFp_nist_group_set_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_nist.c_ec_GFp_nist_group_set_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@BN_nist_mod_192 = common dso_local global i32 0, align 4
@BN_nist_mod_224 = common dso_local global i32 0, align 4
@BN_nist_mod_256 = common dso_local global i32 0, align 4
@BN_nist_mod_384 = common dso_local global i32 0, align 4
@BN_nist_mod_521 = common dso_local global i32 0, align 4
@EC_F_EC_GFP_NIST_GROUP_SET_CURVE = common dso_local global i32 0, align 4
@EC_R_NOT_A_NIST_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_nist_group_set_curve(%struct.TYPE_4__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = call i32* (...) @BN_CTX_new()
  store i32* %17, i32** %13, align 8
  store i32* %17, i32** %11, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %89

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %5
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @BN_CTX_start(i32* %22)
  %24 = call i32 (...) @BN_get0_nist_prime_192()
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @BN_ucmp(i32 %24, i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @BN_nist_mod_192, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  br label %76

32:                                               ; preds = %21
  %33 = call i32 (...) @BN_get0_nist_prime_224()
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @BN_ucmp(i32 %33, i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @BN_nist_mod_224, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %75

41:                                               ; preds = %32
  %42 = call i32 (...) @BN_get0_nist_prime_256()
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @BN_ucmp(i32 %42, i32* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @BN_nist_mod_256, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %74

50:                                               ; preds = %41
  %51 = call i32 (...) @BN_get0_nist_prime_384()
  %52 = load i32*, i32** %8, align 8
  %53 = call i64 @BN_ucmp(i32 %51, i32* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @BN_nist_mod_384, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %73

59:                                               ; preds = %50
  %60 = call i32 (...) @BN_get0_nist_prime_521()
  %61 = load i32*, i32** %8, align 8
  %62 = call i64 @BN_ucmp(i32 %60, i32* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @BN_nist_mod_521, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %59
  %69 = load i32, i32* @EC_F_EC_GFP_NIST_GROUP_SET_CURVE, align 4
  %70 = load i32, i32* @EC_R_NOT_A_NIST_PRIME, align 4
  %71 = call i32 @ECerr(i32 %69, i32 %70)
  br label %83

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75, %28
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @ec_GFp_simple_group_set_curve(%struct.TYPE_4__* %77, i32* %78, i32* %79, i32* %80, i32* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %76, %68
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @BN_CTX_end(i32* %84)
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @BN_CTX_free(i32* %86)
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %83, %19
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i64 @BN_ucmp(i32, i32*) #1

declare dso_local i32 @BN_get0_nist_prime_192(...) #1

declare dso_local i32 @BN_get0_nist_prime_224(...) #1

declare dso_local i32 @BN_get0_nist_prime_256(...) #1

declare dso_local i32 @BN_get0_nist_prime_384(...) #1

declare dso_local i32 @BN_get0_nist_prime_521(...) #1

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
