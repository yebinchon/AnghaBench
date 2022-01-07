; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_dane_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_vfy.c_dane_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, %struct.TYPE_12__*)*, i32, i32*, i64, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32 }

@DANE_FLAG_NO_DANE_EE_NAMECHECKS = common dso_local global i32 0, align 4
@X509_V_ERR_OUT_OF_MEM = common dso_local global i32 0, align 4
@X509_V_ERR_DANE_NO_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @dane_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dane_verify(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %5, align 8
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = call i32 @dane_reset(%struct.TYPE_13__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @dane_match(%struct.TYPE_12__* %16, i32* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = call i32 @DANETLS_HAS_TA(%struct.TYPE_13__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %30, 0
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br label %34

34:                                               ; preds = %32, %1
  %35 = phi i1 [ true, %1 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @X509_get_pubkey_parameters(i32* null, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %76

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @check_leaf_suiteb(%struct.TYPE_12__* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %105

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @DANE_FLAG_NO_DANE_EE_NAMECHECKS, align 4
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = call i32 @check_id(%struct.TYPE_12__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %105

65:                                               ; preds = %60, %53
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i32 (i32, %struct.TYPE_12__*)*, i32 (i32, %struct.TYPE_12__*)** %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %75 = call i32 %73(i32 1, %struct.TYPE_12__* %74)
  store i32 %75, i32* %2, align 4
  br label %105

76:                                               ; preds = %44
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load i32*, i32** %4, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load i32, i32* @X509_V_ERR_OUT_OF_MEM, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  store i32 -1, i32* %2, align 4
  br label %105

88:                                               ; preds = %76
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @check_leaf_suiteb(%struct.TYPE_12__* %92, i32* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  store i32 0, i32* %2, align 4
  br label %105

97:                                               ; preds = %91
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* @X509_V_ERR_DANE_NO_MATCH, align 4
  %101 = call i32 @verify_cb_cert(%struct.TYPE_12__* %98, i32* %99, i32 0, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %105

102:                                              ; preds = %88
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i32 @verify_chain(%struct.TYPE_12__* %103)
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %102, %97, %96, %79, %65, %64, %52
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @dane_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @dane_match(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @DANETLS_HAS_TA(%struct.TYPE_13__*) #1

declare dso_local i32 @X509_get_pubkey_parameters(i32*, i32) #1

declare dso_local i32 @check_leaf_suiteb(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @check_id(%struct.TYPE_12__*) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_12__*, i32*, i32, i32) #1

declare dso_local i32 @verify_chain(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
