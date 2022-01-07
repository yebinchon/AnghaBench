; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_check.c_EC_GROUP_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_check.c_EC_GROUP_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EC_FLAGS_CUSTOM_CURVE = common dso_local global i32 0, align 4
@EC_F_EC_GROUP_CHECK = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EC_R_DISCRIMINANT_IS_ZERO = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_GENERATOR = common dso_local global i32 0, align 4
@EC_R_POINT_IS_NOT_ON_CURVE = common dso_local global i32 0, align 4
@EC_R_UNDEFINED_ORDER = common dso_local global i32 0, align 4
@EC_R_INVALID_GROUP_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_GROUP_check(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @EC_FLAGS_CUSTOM_CURVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %104

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = call i32* (...) @BN_CTX_new()
  store i32* %23, i32** %8, align 8
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %28 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %29 = call i32 @ECerr(i32 %27, i32 %28)
  br label %98

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %19
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @EC_GROUP_check_discriminant(%struct.TYPE_11__* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %38 = load i32, i32* @EC_R_DISCRIMINANT_IS_ZERO, align 4
  %39 = call i32 @ECerr(i32 %37, i32 %38)
  br label %98

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %47 = load i32, i32* @EC_R_UNDEFINED_GENERATOR, align 4
  %48 = call i32 @ECerr(i32 %46, i32 %47)
  br label %98

49:                                               ; preds = %40
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @EC_POINT_is_on_curve(%struct.TYPE_11__* %50, i32* %53, i32* %54)
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %59 = load i32, i32* @EC_R_POINT_IS_NOT_ON_CURVE, align 4
  %60 = call i32 @ECerr(i32 %58, i32 %59)
  br label %98

61:                                               ; preds = %49
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = call i32* @EC_POINT_new(%struct.TYPE_11__* %62)
  store i32* %63, i32** %9, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %98

66:                                               ; preds = %61
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = call i32* @EC_GROUP_get0_order(%struct.TYPE_11__* %67)
  store i32* %68, i32** %7, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %98

72:                                               ; preds = %66
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @BN_is_zero(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %78 = load i32, i32* @EC_R_UNDEFINED_ORDER, align 4
  %79 = call i32 @ECerr(i32 %77, i32 %78)
  br label %98

80:                                               ; preds = %72
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = call i32 @EC_POINT_mul(%struct.TYPE_11__* %81, i32* %82, i32* %83, i32* null, i32* null, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  br label %98

88:                                               ; preds = %80
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @EC_POINT_is_at_infinity(%struct.TYPE_11__* %89, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EC_F_EC_GROUP_CHECK, align 4
  %95 = load i32, i32* @EC_R_INVALID_GROUP_ORDER, align 4
  %96 = call i32 @ECerr(i32 %94, i32 %95)
  br label %98

97:                                               ; preds = %88
  store i32 1, i32* %6, align 4
  br label %98

98:                                               ; preds = %97, %93, %87, %76, %71, %65, %57, %45, %36, %26
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @BN_CTX_free(i32* %99)
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @EC_POINT_free(i32* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %18
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @EC_GROUP_check_discriminant(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @EC_POINT_is_on_curve(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_11__*) #1

declare dso_local i32* @EC_GROUP_get0_order(%struct.TYPE_11__*) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @EC_POINT_mul(%struct.TYPE_11__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_is_at_infinity(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
