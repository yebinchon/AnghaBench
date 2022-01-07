; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_int_ctx_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/evp/extr_pmeth_lib.c_int_ctx_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_13__*)* }
%struct.TYPE_14__ = type { i32, i32*, i32* }

@EVP_F_INT_CTX_NEW = common dso_local global i32 0, align 4
@ERR_R_ENGINE_LIB = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i32*, i32)* @int_ctx_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @int_ctx_new(%struct.TYPE_14__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %14 = icmp eq %struct.TYPE_14__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %123

16:                                               ; preds = %12
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %25 = icmp ne %struct.TYPE_14__* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i32* [ %34, %31 ], [ %38, %35 ]
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %39, %23, %20
  %42 = load i32*, i32** %6, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @ENGINE_init(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EVP_F_INT_CTX_NEW, align 4
  %50 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %51 = call i32 @EVPerr(i32 %49, i32 %50)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %123

52:                                               ; preds = %44
  br label %56

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  %55 = call i32* @ENGINE_get_pkey_meth_engine(i32 %54)
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.TYPE_12__* @ENGINE_get_pkey_meth(i32* %60, i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %9, align 8
  br label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %7, align 4
  %65 = call %struct.TYPE_12__* @EVP_PKEY_meth_find(i32 %64)
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %9, align 8
  br label %66

66:                                               ; preds = %63, %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = icmp eq %struct.TYPE_12__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @ENGINE_finish(i32* %70)
  %72 = load i32, i32* @EVP_F_INT_CTX_NEW, align 4
  %73 = load i32, i32* @EVP_R_UNSUPPORTED_ALGORITHM, align 4
  %74 = call i32 @EVPerr(i32 %72, i32 %73)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %123

75:                                               ; preds = %66
  %76 = call %struct.TYPE_13__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = icmp eq %struct.TYPE_13__* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32*, i32** %6, align 8
  %81 = call i32 @ENGINE_finish(i32* %80)
  %82 = load i32, i32* @EVP_F_INT_CTX_NEW, align 4
  %83 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %84 = call i32 @EVPerr(i32 %82, i32 %83)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %123

85:                                               ; preds = %75
  %86 = load i32*, i32** %6, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 3
  store i32* %86, i32** %88, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store %struct.TYPE_12__* %89, %struct.TYPE_12__** %91, align 8
  %92 = load i32, i32* @EVP_PKEY_OP_UNDEFINED, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store %struct.TYPE_14__* %95, %struct.TYPE_14__** %97, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %99 = icmp ne %struct.TYPE_14__* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_14__* %101)
  br label %103

103:                                              ; preds = %100, %85
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %105, align 8
  %107 = icmp ne i64 (%struct.TYPE_13__*)* %106, null
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %110, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %113 = call i64 %111(%struct.TYPE_13__* %112)
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %117, align 8
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %119 = call i32 @EVP_PKEY_CTX_free(%struct.TYPE_13__* %118)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %123

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %103
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %4, align 8
  br label %123

123:                                              ; preds = %121, %115, %79, %69, %48, %15
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %124
}

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @ENGINE_get_pkey_meth_engine(i32) #1

declare dso_local %struct.TYPE_12__* @ENGINE_get_pkey_meth(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @EVP_PKEY_meth_find(i32) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local %struct.TYPE_13__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_14__*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
