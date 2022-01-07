; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_keys.c_add_enctype_to_key_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_keys.c_add_enctype_to_key_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_13__*, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__**, i64*, i32, %struct.TYPE_17__*)* @add_enctype_to_key_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_enctype_to_key_set(%struct.TYPE_18__** %0, i64* %1, i32 %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_18__, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__** %0, %struct.TYPE_18__*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %13 = call i32 @memset(%struct.TYPE_18__* %11, i32 0, i32 32)
  %14 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 %18, 32
  %20 = call %struct.TYPE_18__* @realloc(%struct.TYPE_18__* %15, i64 %19)
  store %struct.TYPE_18__* %20, %struct.TYPE_18__** %12, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %22 = icmp eq %struct.TYPE_18__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @ENOMEM, align 8
  store i64 %24, i64* %5, align 8
  br label %90

25:                                               ; preds = %4
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %27 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %27, align 8
  %28 = load i32, i32* %8, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %38 = icmp ne %struct.TYPE_17__* %37, null
  br i1 %38, label %39, label %77

39:                                               ; preds = %25
  %40 = call %struct.TYPE_13__* @calloc(i32 1, i32 8)
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = icmp eq %struct.TYPE_13__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = call i32 @free_Key(%struct.TYPE_18__* %11)
  %47 = load i64, i64* @ENOMEM, align 8
  store i64 %47, i64* %5, align 8
  br label %90

48:                                               ; preds = %39
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = call i32 @krb5_data_zero(i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @krb5_data_copy(i32* %61, i32 %65, i32 %69)
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %48
  %74 = call i32 @free_Key(%struct.TYPE_18__* %11)
  %75 = load i64, i64* %10, align 8
  store i64 %75, i64* %5, align 8
  br label %90

76:                                               ; preds = %48
  br label %79

77:                                               ; preds = %25
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %78, align 8
  br label %79

79:                                               ; preds = %77, %76
  %80 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %6, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i64 %83
  %85 = bitcast %struct.TYPE_18__* %84 to i8*
  %86 = bitcast %struct.TYPE_18__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 32, i1 false)
  %87 = load i64*, i64** %7, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  store i64 0, i64* %5, align 8
  br label %90

90:                                               ; preds = %79, %73, %45, %23
  %91 = load i64, i64* %5, align 8
  ret i64 %91
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @realloc(%struct.TYPE_18__*, i64) #1

declare dso_local %struct.TYPE_13__* @calloc(i32, i32) #1

declare dso_local i32 @free_Key(%struct.TYPE_18__*) #1

declare dso_local i32 @krb5_data_zero(i32*) #1

declare dso_local i64 @krb5_data_copy(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
