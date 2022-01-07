; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_verify_ctx.c_TS_REQ_to_TS_VERIFY_CTX.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ts/extr_ts_verify_ctx.c_TS_REQ_to_TS_VERIFY_CTX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i32, i32*, i32, i32*, i32*, i32* }

@TS_VFY_ALL_IMPRINT = common dso_local global i32 0, align 4
@TS_VFY_TSA_NAME = common dso_local global i32 0, align 4
@TS_VFY_SIGNATURE = common dso_local global i32 0, align 4
@TS_VFY_POLICY = common dso_local global i32 0, align 4
@TS_VFY_NONCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @TS_REQ_to_TS_VERIFY_CTX(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @OPENSSL_assert(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = call i32 @TS_VERIFY_CTX_cleanup(%struct.TYPE_10__* %20)
  br label %27

22:                                               ; preds = %2
  %23 = call %struct.TYPE_10__* (...) @TS_VERIFY_CTX_new()
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %6, align 8
  %24 = icmp eq %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %125

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* @TS_VFY_ALL_IMPRINT, align 4
  %29 = load i32, i32* @TS_VFY_TSA_NAME, align 4
  %30 = load i32, i32* @TS_VFY_SIGNATURE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %27
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @OBJ_dup(i32* %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 5
  store i32* %42, i32** %44, align 8
  %45 = icmp eq i32* %42, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %115

47:                                               ; preds = %40
  br label %55

48:                                               ; preds = %27
  %49 = load i32, i32* @TS_VFY_POLICY, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %8, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = call i32* @X509_ALGOR_dup(i32* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = icmp eq i32* %63, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %115

68:                                               ; preds = %55
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %10, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 @ASN1_STRING_length(i32* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @OPENSSL_malloc(i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  store i32* %79, i32** %81, align 8
  %82 = icmp eq i32* %79, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %115

84:                                               ; preds = %68
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = call i32 @ASN1_STRING_get0_data(i32* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @memcpy(i32* %87, i32 %89, i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  store i32* %96, i32** %11, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %106

98:                                               ; preds = %84
  %99 = load i32*, i32** %11, align 8
  %100 = call i32* @ASN1_INTEGER_dup(i32* %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32* %100, i32** %102, align 8
  %103 = icmp eq i32* %100, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %115

105:                                              ; preds = %98
  br label %113

106:                                              ; preds = %84
  %107 = load i32, i32* @TS_VFY_NONCE, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %105
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %3, align 8
  br label %125

115:                                              ; preds = %104, %83, %67, %46
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = call i32 @TS_VERIFY_CTX_cleanup(%struct.TYPE_10__* %119)
  br label %124

121:                                              ; preds = %115
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %123 = call i32 @TS_VERIFY_CTX_free(%struct.TYPE_10__* %122)
  br label %124

124:                                              ; preds = %121, %118
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %125

125:                                              ; preds = %124, %113, %25
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %126
}

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @TS_VERIFY_CTX_cleanup(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @TS_VERIFY_CTX_new(...) #1

declare dso_local i32* @OBJ_dup(i32*) #1

declare dso_local i32* @X509_ALGOR_dup(i32*) #1

declare dso_local i32 @ASN1_STRING_length(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ASN1_STRING_get0_data(i32*) #1

declare dso_local i32* @ASN1_INTEGER_dup(i32*) #1

declare dso_local i32 @TS_VERIFY_CTX_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
