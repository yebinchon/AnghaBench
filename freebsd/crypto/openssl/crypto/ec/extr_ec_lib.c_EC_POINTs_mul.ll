; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_lib.c_EC_POINTs_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_lib.c_EC_POINTs_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }

@EC_F_EC_POINTS_MUL = common dso_local global i32 0, align 4
@EC_R_INCOMPATIBLE_OBJECTS = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_POINTs_mul(%struct.TYPE_9__* %0, i32* %1, i32* %2, i64 %3, i32** %4, i32** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32** %4, i32*** %13, align 8
  store i32** %5, i32*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i32* null, i32** %18, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load i64, i64* %12, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @EC_POINT_set_to_infinity(%struct.TYPE_9__* %25, i32* %26)
  store i32 %27, i32* %8, align 4
  br label %104

28:                                               ; preds = %21, %7
  %29 = load i32*, i32** %10, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = call i32 @ec_point_is_compat(i32* %29, %struct.TYPE_9__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EC_F_EC_POINTS_MUL, align 4
  %35 = load i32, i32* @EC_R_INCOMPATIBLE_OBJECTS, align 4
  %36 = call i32 @ECerr(i32 %34, i32 %35)
  store i32 0, i32* %8, align 4
  br label %104

37:                                               ; preds = %28
  store i64 0, i64* %17, align 8
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i64, i64* %17, align 8
  %40 = load i64, i64* %12, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load i32**, i32*** %13, align 8
  %44 = load i64, i64* %17, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = call i32 @ec_point_is_compat(i32* %46, %struct.TYPE_9__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @EC_F_EC_POINTS_MUL, align 4
  %52 = load i32, i32* @EC_R_INCOMPATIBLE_OBJECTS, align 4
  %53 = call i32 @ECerr(i32 %51, i32 %52)
  store i32 0, i32* %8, align 4
  br label %104

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %17, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %17, align 8
  br label %38

58:                                               ; preds = %38
  %59 = load i32*, i32** %15, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = call i32* (...) @BN_CTX_secure_new()
  store i32* %62, i32** %18, align 8
  store i32* %62, i32** %15, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* @EC_F_EC_POINTS_MUL, align 4
  %66 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %67 = call i32 @ECerr(i32 %65, i32 %66)
  store i32 0, i32* %8, align 4
  br label %104

68:                                               ; preds = %61, %58
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)**
  %74 = load i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)** %73, align 8
  %75 = icmp ne i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %68
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = bitcast {}** %80 to i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)**
  %82 = load i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)*, i32 (%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*)** %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i32**, i32*** %13, align 8
  %88 = load i32**, i32*** %14, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 %82(%struct.TYPE_9__* %83, i32* %84, i32* %85, i64 %86, i32** %87, i32** %88, i32* %89)
  store i32 %90, i32* %16, align 4
  br label %100

91:                                               ; preds = %68
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load i32**, i32*** %13, align 8
  %97 = load i32**, i32*** %14, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @ec_wNAF_mul(%struct.TYPE_9__* %92, i32* %93, i32* %94, i64 %95, i32** %96, i32** %97, i32* %98)
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %91, %76
  %101 = load i32*, i32** %18, align 8
  %102 = call i32 @BN_CTX_free(i32* %101)
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %64, %50, %33, %24
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i32 @EC_POINT_set_to_infinity(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @ec_point_is_compat(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_secure_new(...) #1

declare dso_local i32 @ec_wNAF_mul(%struct.TYPE_9__*, i32*, i32*, i64, i32**, i32**, i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
