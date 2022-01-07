; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_blind_coordinates.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecp_smpl.c_ec_GFp_simple_blind_coordinates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)* }
%struct.TYPE_13__ = type { i64, i32*, i32*, i32* }

@EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_BN_LIB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ec_GFp_simple_blind_coordinates(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @BN_CTX_start(i32* %10)
  %12 = load i32*, i32** %6, align 8
  %13 = call i32* @BN_CTX_get(i32* %12)
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32* @BN_CTX_get(i32* %14)
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, align 4
  %20 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %21 = call i32 @ECerr(i32 %19, i32 %20)
  br label %143

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32*, i32** %8, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @BN_priv_rand_range(i32* %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @EC_F_EC_GFP_SIMPLE_BLIND_COORDINATES, align 4
  %32 = load i32, i32* @ERR_R_BN_LIB, align 4
  %33 = call i32 @ECerr(i32 %31, i32 %32)
  br label %143

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32*, i32** %8, align 8
  %37 = call i64 @BN_is_zero(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %23, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)** %43, align 8
  %45 = icmp ne i32 (%struct.TYPE_14__*, i32*, i32*, i32*)* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %39
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)** %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 %51(%struct.TYPE_14__* %52, i32* %53, i32* %54, i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  br label %143

59:                                               ; preds = %46, %39
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %63, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 %64(%struct.TYPE_14__* %65, i32* %68, i32* %71, i32* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %59
  br label %143

77:                                               ; preds = %59
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*)** %81, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 %82(%struct.TYPE_14__* %83, i32* %84, i32* %85, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %143

90:                                               ; preds = %77
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 %95(%struct.TYPE_14__* %96, i32* %99, i32* %102, i32* %103, i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %90
  br label %143

108:                                              ; preds = %90
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %112, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 %113(%struct.TYPE_14__* %114, i32* %115, i32* %116, i32* %117, i32* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %108
  br label %143

122:                                              ; preds = %108
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)*, i32 (%struct.TYPE_14__*, i32*, i32*, i32*, i32*)** %126, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32*, i32** %9, align 8
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 %127(%struct.TYPE_14__* %128, i32* %131, i32* %134, i32* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %122
  br label %143

140:                                              ; preds = %122
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  store i32 1, i32* %7, align 4
  br label %143

143:                                              ; preds = %140, %139, %121, %107, %89, %76, %58, %30, %18
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @BN_CTX_end(i32* %144)
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32 @BN_priv_rand_range(i32*, i32) #1

declare dso_local i64 @BN_is_zero(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
