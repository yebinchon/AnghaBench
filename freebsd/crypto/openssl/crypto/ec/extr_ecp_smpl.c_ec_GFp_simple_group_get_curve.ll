; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_get_curve.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_group_get_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32, i32*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_group_get_curve(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BN_copy(i32* %17, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %117

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %5
  %26 = load i32*, i32** %9, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %112

31:                                               ; preds = %28, %25
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %35, align 8
  %37 = icmp ne i32 (%struct.TYPE_7__*, i32*, i32, i32*)* %36, null
  br i1 %37, label %38, label %86

38:                                               ; preds = %31
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = call i32* (...) @BN_CTX_new()
  store i32* %42, i32** %13, align 8
  store i32* %42, i32** %11, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %117

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 %55(%struct.TYPE_7__* %56, i32* %57, i32 %60, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %50
  br label %113

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_7__*, i32*, i32, i32*)*, i32 (%struct.TYPE_7__*, i32*, i32, i32*)** %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 %74(%struct.TYPE_7__* %75, i32* %76, i32 %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %69
  br label %113

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %66
  br label %111

86:                                               ; preds = %31
  %87 = load i32*, i32** %9, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i32*, i32** %9, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BN_copy(i32* %90, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %113

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %86
  %99 = load i32*, i32** %10, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @BN_copy(i32* %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %113

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %98
  br label %111

111:                                              ; preds = %110, %85
  br label %112

112:                                              ; preds = %111, %28
  store i32 1, i32* %12, align 4
  br label %113

113:                                              ; preds = %112, %108, %96, %83, %64
  %114 = load i32*, i32** %13, align 8
  %115 = call i32 @BN_CTX_free(i32* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %45, %23
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @BN_copy(i32*, i32) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
