; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_EC_KEY_set_public_key_affine_coordinates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_key.c_EC_KEY_set_public_key_affine_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@EC_R_COORDINATES_OUT_OF_RANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EC_KEY_set_public_key_affine_coordinates(%struct.TYPE_8__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %20, %15, %3
  %27 = load i32, i32* @EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES, align 4
  %28 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %29 = call i32 @ECerr(i32 %27, i32 %28)
  store i32 0, i32* %4, align 4
  br label %127

30:                                               ; preds = %23
  %31 = call i32* (...) @BN_CTX_new()
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %127

35:                                               ; preds = %30
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @BN_CTX_start(i32* %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call i32* @EC_POINT_new(%struct.TYPE_9__* %40)
  store i32* %41, i32** %11, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %119

45:                                               ; preds = %35
  %46 = load i32*, i32** %8, align 8
  %47 = call i32* @BN_CTX_get(i32* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @BN_CTX_get(i32* %48)
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %119

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_9__* %56, i32* %57, i32* %58, i32* %59, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %119

64:                                               ; preds = %53
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_9__* %67, i32* %68, i32* %69, i32* %70, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  br label %119

75:                                               ; preds = %64
  %76 = load i32*, i32** %6, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i64 @BN_cmp(i32* %76, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %103, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = call i64 @BN_cmp(i32* %81, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %103, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i64 @BN_cmp(i32* %86, i32* %91)
  %93 = icmp sge i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %85
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @BN_cmp(i32* %95, i32* %100)
  %102 = icmp sge i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94, %85, %80, %75
  %104 = load i32, i32* @EC_F_EC_KEY_SET_PUBLIC_KEY_AFFINE_COORDINATES, align 4
  %105 = load i32, i32* @EC_R_COORDINATES_OUT_OF_RANGE, align 4
  %106 = call i32 @ECerr(i32 %104, i32 %105)
  br label %119

107:                                              ; preds = %94
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @EC_KEY_set_public_key(%struct.TYPE_8__* %108, i32* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  br label %119

113:                                              ; preds = %107
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = call i64 @EC_KEY_check_key(%struct.TYPE_8__* %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %119

118:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  br label %119

119:                                              ; preds = %118, %117, %112, %103, %74, %63, %52, %44
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @BN_CTX_end(i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @BN_CTX_free(i32* %122)
  %124 = load i32*, i32** %11, align 8
  %125 = call i32 @EC_POINT_free(i32* %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %119, %34, %26
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @EC_POINT_new(%struct.TYPE_9__*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @EC_POINT_set_affine_coordinates(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates(%struct.TYPE_9__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @BN_cmp(i32*, i32*) #1

declare dso_local i32 @EC_KEY_set_public_key(%struct.TYPE_8__*, i32*) #1

declare dso_local i64 @EC_KEY_check_key(%struct.TYPE_8__*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
