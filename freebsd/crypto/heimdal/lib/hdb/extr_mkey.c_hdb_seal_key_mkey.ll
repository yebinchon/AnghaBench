; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_hdb_seal_key_mkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_hdb_seal_key_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@HDB_ERR_NO_MKEY = common dso_local global i64 0, align 8
@HDB_KU_MKEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_seal_key_mkey(i32 %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %91

16:                                               ; preds = %3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = call %struct.TYPE_15__* @_hdb_find_master_key(i32* %19, %struct.TYPE_15__* %20)
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %10, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %23 = icmp eq %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i64, i64* @HDB_ERR_NO_MKEY, align 8
  store i64 %25, i64* %4, align 8
  br label %91

26:                                               ; preds = %16
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = load i32, i32* @HDB_KU_MKEY, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @_hdb_mkey_encrypt(i32 %27, %struct.TYPE_15__* %28, i32 %29, i32 %34, i32 %39, %struct.TYPE_14__* %9)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %26
  %44 = load i64, i64* %8, align 8
  store i64 %44, i64* %4, align 8
  br label %91

45:                                               ; preds = %26
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memset(i32 %50, i32 0, i32 %55)
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @free(i32 %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_14__* %65 to i8*
  %67 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 4 %67, i64 8, i1 false)
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %45
  %73 = call i32* @malloc(i32 4)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i64, i64* @ENOMEM, align 8
  store i64 %81, i64* %4, align 8
  br label %91

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %45
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  store i32 %87, i32* %90, align 4
  store i64 0, i64* %4, align 8
  br label %91

91:                                               ; preds = %83, %80, %43, %24, %15
  %92 = load i64, i64* %4, align 8
  ret i64 %92
}

declare dso_local %struct.TYPE_15__* @_hdb_find_master_key(i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @_hdb_mkey_encrypt(i32, %struct.TYPE_15__*, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
