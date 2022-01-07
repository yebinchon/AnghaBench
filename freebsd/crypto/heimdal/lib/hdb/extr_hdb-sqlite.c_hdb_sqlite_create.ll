; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-sqlite.c_hdb_sqlite_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_7__* }

@hdb_sqlite_open = common dso_local global i32 0, align 4
@hdb_sqlite_close = common dso_local global i32 0, align 4
@hdb_sqlite_lock = common dso_local global i32 0, align 4
@hdb_sqlite_unlock = common dso_local global i32 0, align 4
@hdb_sqlite_firstkey = common dso_local global i32 0, align 4
@hdb_sqlite_nextkey = common dso_local global i32 0, align 4
@hdb_sqlite_fetch_kvno = common dso_local global i32 0, align 4
@hdb_sqlite_store = common dso_local global i32 0, align 4
@hdb_sqlite_remove = common dso_local global i32 0, align 4
@hdb_sqlite_destroy = common dso_local global i32 0, align 4
@hdb_sqlite_rename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdb_sqlite_create(i32 %0, %struct.TYPE_7__** %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = call %struct.TYPE_7__* @calloc(i32 1, i32 104)
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %11, align 8
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @krb5_enomem(i32 %16)
  store i64 %17, i64* %4, align 8
  br label %114

18:                                               ; preds = %3
  %19 = call %struct.TYPE_7__* @calloc(i32 1, i32 104)
  store %struct.TYPE_7__* %19, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call i32 @free(%struct.TYPE_7__* %24)
  %26 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @krb5_enomem(i32 %27)
  store i64 %28, i64* %4, align 8
  br label %114

29:                                               ; preds = %18
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %31 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 17
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @hdb_sqlite_make_database(i32 %34, %struct.TYPE_7__* %36, i8* %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %29
  %42 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 17
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = call i32 @free(%struct.TYPE_7__* %45)
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @free(%struct.TYPE_7__* %48)
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %4, align 8
  br label %114

51:                                               ; preds = %29
  %52 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 16
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 15
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 14
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @hdb_sqlite_open, align 4
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 13
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* @hdb_sqlite_close, align 4
  %66 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 12
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @hdb_sqlite_lock, align 4
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 11
  store i32 %69, i32* %72, align 8
  %73 = load i32, i32* @hdb_sqlite_unlock, align 4
  %74 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 10
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @hdb_sqlite_firstkey, align 4
  %78 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 9
  store i32 %77, i32* %80, align 8
  %81 = load i32, i32* @hdb_sqlite_nextkey, align 4
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 8
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @hdb_sqlite_fetch_kvno, align 4
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 7
  store i32 %85, i32* %88, align 8
  %89 = load i32, i32* @hdb_sqlite_store, align 4
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 6
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @hdb_sqlite_remove, align 4
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 5
  store i32 %93, i32* %96, align 8
  %97 = load i32, i32* @hdb_sqlite_destroy, align 4
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 4
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @hdb_sqlite_rename, align 4
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 8
  %105 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  store i32* null, i32** %107, align 8
  %108 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  %111 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  store i64 0, i64* %4, align 8
  br label %114

114:                                              ; preds = %51, %41, %22, %15
  %115 = load i64, i64* %4, align 8
  ret i64 %115
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i64 @krb5_enomem(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i64 @hdb_sqlite_make_database(i32, %struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
