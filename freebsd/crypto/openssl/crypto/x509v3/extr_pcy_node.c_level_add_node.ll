; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_pcy_node.c_level_add_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_pcy_node.c_level_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32* }

@X509V3_F_LEVEL_ADD_NODE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@NID_any_policy = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @level_add_node(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_15__* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  %11 = call %struct.TYPE_15__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %10, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %13 = icmp eq %struct.TYPE_15__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @X509V3_F_LEVEL_ADD_NODE, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @X509V3err(i32 %15, i32 %16)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %121

18:                                               ; preds = %4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %21, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = icmp ne %struct.TYPE_16__* %25, null
  br i1 %26, label %27, label %75

27:                                               ; preds = %18
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @OBJ_obj2nid(i32 %30)
  %32 = load i64, i64* @NID_any_policy, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %118

40:                                               ; preds = %34
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %43, align 8
  br label %74

44:                                               ; preds = %27
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i32* (...) @policy_node_cmp_new()
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @X509V3_F_LEVEL_ADD_NODE, align 4
  %60 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %61 = call i32 @X509V3err(i32 %59, i32 %60)
  br label %118

62:                                               ; preds = %53
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = call i32 @sk_X509_POLICY_NODE_push(i32* %65, %struct.TYPE_15__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @X509V3_F_LEVEL_ADD_NODE, align 4
  %71 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %72 = call i32 @X509V3err(i32 %70, i32 %71)
  br label %118

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %40
  br label %75

75:                                               ; preds = %74, %18
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %77 = icmp ne %struct.TYPE_14__* %76, null
  br i1 %77, label %78, label %108

78:                                               ; preds = %75
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = call i32* (...) @sk_X509_POLICY_DATA_new_null()
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  br label %87

87:                                               ; preds = %83, %78
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %87
  %93 = load i32, i32* @X509V3_F_LEVEL_ADD_NODE, align 4
  %94 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %95 = call i32 @X509V3err(i32 %93, i32 %94)
  br label %118

96:                                               ; preds = %87
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %101 = call i32 @sk_X509_POLICY_DATA_push(i32* %99, %struct.TYPE_17__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %96
  %104 = load i32, i32* @X509V3_F_LEVEL_ADD_NODE, align 4
  %105 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %106 = call i32 @X509V3err(i32 %104, i32 %105)
  br label %118

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107, %75
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %110 = icmp ne %struct.TYPE_15__* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %5, align 8
  br label %121

118:                                              ; preds = %103, %92, %69, %58, %39
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %120 = call i32 @policy_node_free(%struct.TYPE_15__* %119)
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %5, align 8
  br label %121

121:                                              ; preds = %118, %116, %14
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  ret %struct.TYPE_15__* %122
}

declare dso_local %struct.TYPE_15__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @X509V3err(i32, i32) #1

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32* @policy_node_cmp_new(...) #1

declare dso_local i32 @sk_X509_POLICY_NODE_push(i32*, %struct.TYPE_15__*) #1

declare dso_local i32* @sk_X509_POLICY_DATA_new_null(...) #1

declare dso_local i32 @sk_X509_POLICY_DATA_push(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @policy_node_free(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
