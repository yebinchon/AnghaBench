; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_is_on_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec2_smpl.c_ec_GF2m_simple_is_on_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*)* }
%struct.TYPE_12__ = type { i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GF2m_simple_is_on_curve(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, align 8
  %13 = alloca i32 (%struct.TYPE_11__*, i32*, i32*, i32*)*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = call i64 @EC_POINT_is_at_infinity(%struct.TYPE_11__* %14, %struct.TYPE_12__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %134

19:                                               ; preds = %3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)** %23, align 8
  store i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)* %24, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)** %12, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*)** %28, align 8
  store i32 (%struct.TYPE_11__*, i32*, i32*, i32*)* %29, i32 (%struct.TYPE_11__*, i32*, i32*, i32*)** %13, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %134

35:                                               ; preds = %19
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = call i32* (...) @BN_CTX_new()
  store i32* %39, i32** %9, align 8
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %134

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @BN_CTX_start(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @BN_CTX_get(i32* %47)
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32* @BN_CTX_get(i32* %49)
  store i32* %50, i32** %10, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %128

54:                                               ; preds = %44
  %55 = load i32*, i32** %10, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @BN_GF2m_add(i32* %55, i32* %58, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %128

65:                                               ; preds = %54
  %66 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)** %12, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 %66(%struct.TYPE_11__* %67, i32* %68, i32* %69, i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %65
  br label %128

77:                                               ; preds = %65
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @BN_GF2m_add(i32* %78, i32* %79, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  br label %128

86:                                               ; preds = %77
  %87 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*, i32*)** %12, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 %87(%struct.TYPE_11__* %88, i32* %89, i32* %90, i32* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %86
  br label %128

98:                                               ; preds = %86
  %99 = load i32*, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @BN_GF2m_add(i32* %99, i32* %100, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %98
  br label %128

107:                                              ; preds = %98
  %108 = load i32 (%struct.TYPE_11__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_11__*, i32*, i32*, i32*)** %13, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 %108(%struct.TYPE_11__* %109, i32* %110, i32* %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  br label %128

118:                                              ; preds = %107
  %119 = load i32*, i32** %10, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i32 @BN_GF2m_add(i32* %119, i32* %120, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  br label %128

125:                                              ; preds = %118
  %126 = load i32*, i32** %10, align 8
  %127 = call i32 @BN_is_zero(i32* %126)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %125, %124, %117, %106, %97, %85, %76, %64, %53
  %129 = load i32*, i32** %7, align 8
  %130 = call i32 @BN_CTX_end(i32* %129)
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @BN_CTX_free(i32* %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %128, %42, %34, %18
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @EC_POINT_is_at_infinity(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @BN_GF2m_add(i32*, i32*, i32*) #1

declare dso_local i32 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
