; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_pcy_map.c_policy_cache_set_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509v3/extr_pcy_map.c_policy_cache_set_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@NID_any_policy = common dso_local global i64 0, align 8
@POLICY_DATA_FLAG_CRITICAL = common dso_local global i32 0, align 4
@POLICY_DATA_FLAG_MAPPED_ANY = common dso_local global i32 0, align 4
@POLICY_DATA_FLAG_SHARED_QUALIFIERS = common dso_local global i32 0, align 4
@POLICY_DATA_FLAG_MAPPED = common dso_local global i32 0, align 4
@EXFLAG_INVALID_POLICY = common dso_local global i32 0, align 4
@POLICY_MAPPING_free = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @policy_cache_set_mapping(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @sk_POLICY_MAPPING_num(i32* %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %9, align 4
  br label %124

17:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %120, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @sk_POLICY_MAPPING_num(i32* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %18
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.TYPE_17__* @sk_POLICY_MAPPING_value(i32* %24, i32 %25)
  store %struct.TYPE_17__* %26, %struct.TYPE_17__** %5, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i64 @OBJ_obj2nid(i32* %29)
  %31 = load i64, i64* @NID_any_policy, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %23
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @OBJ_obj2nid(i32* %36)
  %38 = load i64, i64* @NID_any_policy, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %23
  store i32 -1, i32* %9, align 4
  br label %124

41:                                               ; preds = %33
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call %struct.TYPE_14__* @policy_cache_find_data(%struct.TYPE_15__* %42, i32* %45)
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %6, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = icmp eq %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %120

55:                                               ; preds = %49, %41
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = icmp eq %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %101

58:                                               ; preds = %55
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @POLICY_DATA_FLAG_CRITICAL, align 4
  %68 = and i32 %66, %67
  %69 = call %struct.TYPE_14__* @policy_data_new(i32* null, i32* %61, i32 %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %6, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = icmp eq %struct.TYPE_14__* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %124

73:                                               ; preds = %58
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @POLICY_DATA_FLAG_MAPPED_ANY, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @POLICY_DATA_FLAG_SHARED_QUALIFIERS, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = call i32 @sk_X509_POLICY_DATA_push(i32 %93, %struct.TYPE_14__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %73
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = call i32 @policy_data_free(%struct.TYPE_14__* %98)
  br label %124

100:                                              ; preds = %73
  br label %107

101:                                              ; preds = %55
  %102 = load i32, i32* @POLICY_DATA_FLAG_MAPPED, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %100
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @sk_ASN1_OBJECT_push(i32 %110, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %107
  br label %124

117:                                              ; preds = %107
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %117, %54
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %18

123:                                              ; preds = %18
  store i32 1, i32* %9, align 4
  br label %124

124:                                              ; preds = %123, %116, %97, %72, %40, %16
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* @EXFLAG_INVALID_POLICY, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %124
  %134 = load i32*, i32** %4, align 8
  %135 = load i32, i32* @POLICY_MAPPING_free, align 4
  %136 = call i32 @sk_POLICY_MAPPING_pop_free(i32* %134, i32 %135)
  %137 = load i32, i32* %9, align 4
  ret i32 %137
}

declare dso_local i32 @sk_POLICY_MAPPING_num(i32*) #1

declare dso_local %struct.TYPE_17__* @sk_POLICY_MAPPING_value(i32*, i32) #1

declare dso_local i64 @OBJ_obj2nid(i32*) #1

declare dso_local %struct.TYPE_14__* @policy_cache_find_data(%struct.TYPE_15__*, i32*) #1

declare dso_local %struct.TYPE_14__* @policy_data_new(i32*, i32*, i32) #1

declare dso_local i32 @sk_X509_POLICY_DATA_push(i32, %struct.TYPE_14__*) #1

declare dso_local i32 @policy_data_free(%struct.TYPE_14__*) #1

declare dso_local i32 @sk_ASN1_OBJECT_push(i32, i32*) #1

declare dso_local i32 @sk_POLICY_MAPPING_pop_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
