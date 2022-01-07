; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_strings-table.c_svn_fs_bdb__string_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)* }
%struct.TYPE_20__ = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"No such string '%s'\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clearing string\00", align 1
@DB_DBT_USERMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"storing empty contents\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__string_clear(%struct.TYPE_18__* %0, i8* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_20__* %12, i8* %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_17__* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_20__*, i32)** %24, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %25(%struct.TYPE_16__* %28, i32 %31, %struct.TYPE_20__* %12, i32 0)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @DB_NOTFOUND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %4
  %37 = load i32, i32* @SVN_ERR_FS_NO_SUCH_STRING, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32* @svn_error_createf(i32 %37, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32* %39, i32** %5, align 8
  br label %70

40:                                               ; preds = %4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %42 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %11, align 4
  %44 = call i32* @BDB_WRAP(%struct.TYPE_18__* %41, i32 %42, i32 %43)
  %45 = call i32 @SVN_ERR(i32* %44)
  %46 = call i32 @svn_fs_base__clear_dbt(%struct.TYPE_20__* %13)
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @DB_DBT_USERMEM, align 4
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %54 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_17__* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = call i32 @N_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_20__*, %struct.TYPE_20__*, i32)** %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 %61(%struct.TYPE_16__* %64, i32 %67, %struct.TYPE_20__* %12, %struct.TYPE_20__* %13, i32 0)
  %69 = call i32* @BDB_WRAP(%struct.TYPE_18__* %55, i32 %56, i32 %68)
  store i32* %69, i32** %5, align 8
  br label %70

70:                                               ; preds = %40, %36
  %71 = load i32*, i32** %5, align 8
  ret i32* %71
}

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_20__*, i8*) #1

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_17__*, i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i8*, i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @BDB_WRAP(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @svn_fs_base__clear_dbt(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
