; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_uuids-table.c_svn_fs_bdb__open_uuids_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_uuids-table.c_svn_fs_bdb__open_uuids_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i32)*, i32 (i32, i8*, i32, i32, i32, i32)*, i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)* }
%struct.TYPE_12__ = type { i32*, i32, i32, i32 }

@DB_CREATE = common dso_local global i32 0, align 4
@DB_EXCL = common dso_local global i32 0, align 4
@APR_UUID_FORMATTED_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uuids\00", align 1
@DB_RECNO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@DB_DBT_USERMEM = common dso_local global i32 0, align 4
@DB_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svn_fs_bdb__open_uuids_table(%struct.TYPE_13__** %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @DB_CREATE, align 4
  %21 = load i32, i32* @DB_EXCL, align 4
  %22 = or i32 %20, %21
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %19
  %25 = phi i32 [ %22, %19 ], [ 0, %23 ]
  store i32 %25, i32* %8, align 4
  %26 = call i32 (...) @svn_fs_bdb__check_version()
  %27 = call i32 @BDB_ERR(i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @db_create(%struct.TYPE_13__** %9, i32* %28, i32 0)
  %30 = call i32 @BDB_ERR(i32 %29)
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %35 = load i32, i32* @APR_UUID_FORMATTED_LENGTH, align 4
  %36 = call i32 %33(%struct.TYPE_13__* %34, i32 %35)
  %37 = call i32 @BDB_ERR(i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32 (i32, i8*, i32, i32, i32, i32)*, i32 (i32, i8*, i32, i32, i32, i32)** %39, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = call i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_13__* %41, i32* null)
  %43 = load i32, i32* @DB_RECNO, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %40(i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 %43, i32 %44, i32 438)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @ENOENT, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %24
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32 (%struct.TYPE_13__*, i32)*, i32 (%struct.TYPE_13__*, i32)** %54, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %57 = call i32 %55(%struct.TYPE_13__* %56, i32 0)
  %58 = call i32 @BDB_ERR(i32 %57)
  %59 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* @TRUE, align 8
  %62 = call i32 @svn_fs_bdb__open_uuids_table(%struct.TYPE_13__** %59, i32* %60, i64 %61)
  store i32 %62, i32* %4, align 4
  br label %103

63:                                               ; preds = %49, %24
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @BDB_ERR(i32 %64)
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %63
  %69 = load i32, i32* @APR_UUID_FORMATTED_LENGTH, align 4
  %70 = add nsw i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %11, align 8
  %73 = alloca i8, i64 %71, align 16
  store i64 %71, i64* %12, align 8
  store i32 0, i32* %16, align 4
  %74 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_12__* %13)
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32* %16, i32** %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  store i32 4, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @DB_DBT_USERMEM, align 4
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_12__* %14)
  %85 = bitcast i8* %73 to i32*
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32* %85, i32** %86, align 8
  %87 = sub i64 %71, 1
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 1
  store i32 %88, i32* %89, align 8
  %90 = call i32 @apr_uuid_get(i32* %15)
  %91 = call i32 @apr_uuid_format(i8* %73, i32* %15)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 3
  %94 = load i32 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)*, i32 (%struct.TYPE_13__*, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32)** %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %96 = load i32, i32* @DB_APPEND, align 4
  %97 = call i32 %94(%struct.TYPE_13__* %95, i32 0, %struct.TYPE_12__* %13, %struct.TYPE_12__* %14, i32 %96)
  %98 = call i32 @BDB_ERR(i32 %97)
  %99 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %99)
  br label %100

100:                                              ; preds = %68, %63
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %102 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %5, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %102, align 8
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %52
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @BDB_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__check_version(...) #1

declare dso_local i32 @db_create(%struct.TYPE_13__**, i32*, i32) #1

declare dso_local i32 @SVN_BDB_OPEN_PARAMS(%struct.TYPE_13__*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_12__*) #1

declare dso_local i32 @apr_uuid_get(i32*) #1

declare dso_local i32 @apr_uuid_format(i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
