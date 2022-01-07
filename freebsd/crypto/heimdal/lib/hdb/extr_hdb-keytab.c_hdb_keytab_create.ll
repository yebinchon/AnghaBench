; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-keytab.c_hdb_keytab_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hdb/extr_hdb-keytab.c_hdb_keytab_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i64, i64, %struct.TYPE_7__*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@hkt_open = common dso_local global i32 0, align 4
@hkt_close = common dso_local global i32 0, align 4
@hkt_fetch_kvno = common dso_local global i32 0, align 4
@hkt_store = common dso_local global i32 0, align 4
@hkt_firstkey = common dso_local global i32 0, align 4
@hkt_nextkey = common dso_local global i32 0, align 4
@hkt_lock = common dso_local global i32 0, align 4
@hkt_unlock = common dso_local global i32 0, align 4
@hkt_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdb_keytab_create(i32 %0, %struct.TYPE_7__** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = call %struct.TYPE_7__* @calloc(i32 1, i32 112)
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = call i32 @krb5_set_error_message(i32 %15, i32 %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  store i32 %18, i32* %4, align 4
  br label %117

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @memset(%struct.TYPE_7__* %21, i32 0, i32 112)
  %23 = call %struct.TYPE_7__* @calloc(i32 1, i32 112)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = icmp eq %struct.TYPE_7__* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @free(%struct.TYPE_7__* %28)
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = call i32 @krb5_set_error_message(i32 %31, i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %4, align 4
  br label %117

35:                                               ; preds = %19
  %36 = load i8*, i8** %7, align 8
  %37 = call i32* @strdup(i8* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 17
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 17
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = call i32 @free(%struct.TYPE_7__* %45)
  %47 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @free(%struct.TYPE_7__* %48)
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @krb5_set_error_message(i32 %51, i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* %4, align 4
  br label %117

55:                                               ; preds = %35
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 16
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %59, align 8
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 15
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 14
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @hkt_open, align 4
  %67 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 13
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @hkt_close, align 4
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 12
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @hkt_fetch_kvno, align 4
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 11
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @hkt_store, align 4
  %79 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 10
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 9
  store i32* null, i32** %84, align 8
  %85 = load i32, i32* @hkt_firstkey, align 4
  %86 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 8
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @hkt_nextkey, align 4
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 7
  store i32 %89, i32* %92, align 8
  %93 = load i32, i32* @hkt_lock, align 4
  %94 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 6
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @hkt_unlock, align 4
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 5
  store i32 %97, i32* %100, align 8
  %101 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 4
  store i32* null, i32** %103, align 8
  %104 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = load i32, i32* @hkt_destroy, align 4
  %114 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %55, %44, %26, %14
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @krb5_set_error_message(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
