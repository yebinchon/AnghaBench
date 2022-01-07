; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_hdb_unseal_key_mkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_mkey.c_hdb_unseal_key_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@HDB_ERR_NO_MKEY = common dso_local global i64 0, align 8
@HDB_KU_MKEY = common dso_local global i32 0, align 4
@KRB5KRB_AP_ERR_BAD_INTEGRITY = common dso_local global i64 0, align 8
@KRB5_BAD_KEYSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_unseal_key_mkey(i32 %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %118

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @_hdb_find_master_key(i32* %20, i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i64, i64* @HDB_ERR_NO_MKEY, align 8
  store i64 %26, i64* %4, align 8
  br label %118

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* @HDB_KU_MKEY, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @_hdb_mkey_decrypt(i32 %28, i32* %29, i32 %30, i32* %35, i64 %40, %struct.TYPE_8__* %9)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @KRB5KRB_AP_ERR_BAD_INTEGRITY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %27
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @_hdb_mkey_decrypt(i32 %46, i32* %47, i32 0, i32* %52, i64 %57, %struct.TYPE_8__* %9)
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %45, %27
  %60 = load i64, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i64, i64* %8, align 8
  store i64 %63, i64* %4, align 8
  br label %118

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @krb5_enctype_keysize(i32 %65, i32 %69, i64* %10)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = call i32 @krb5_data_free(%struct.TYPE_8__* %9)
  %75 = load i64, i64* %8, align 8
  store i64 %75, i64* %4, align 8
  br label %118

76:                                               ; preds = %64
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = call i32 @krb5_data_free(%struct.TYPE_8__* %9)
  %83 = load i64, i64* @KRB5_BAD_KEYSIZE, align 8
  store i64 %83, i64* %4, align 8
  br label %118

84:                                               ; preds = %76
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memset(i32* %89, i32 0, i64 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @free(i32* %100)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = bitcast %struct.TYPE_8__* %104 to i8*
  %106 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false)
  %107 = load i64, i64* %10, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @free(i32* %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32* null, i32** %117, align 8
  store i64 0, i64* %4, align 8
  br label %118

118:                                              ; preds = %84, %81, %73, %62, %25, %16
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local i32* @_hdb_find_master_key(i32*, i32*) #1

declare dso_local i64 @_hdb_mkey_decrypt(i32, i32*, i32, i32*, i64, %struct.TYPE_8__*) #1

declare dso_local i64 @krb5_enctype_keysize(i32, i32, i64*) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
