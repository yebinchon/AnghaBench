; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_reps-table.c_svn_fs_bdb__write_new_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_reps-table.c_svn_fs_bdb__write_new_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*, i32, %struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32)* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32 }

@MAX_KEY_SIZE = common dso_local global i32 0, align 4
@NEXT_KEY_KEY = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"representations\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"allocating new representation (getting next-key)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"bumping next representation key\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__write_new_rep(i8** %0, %struct.TYPE_19__* %1, i32* %2, %struct.TYPE_18__* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_21__, align 4
  %13 = alloca %struct.TYPE_21__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %11, align 8
  %21 = load i32, i32* @MAX_KEY_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %26 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_21__* %12, i8* %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %28 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_18__* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %30 = call i32 @N_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_17__*, i32, %struct.TYPE_21__*, i32, i32)*, i32 (%struct.TYPE_17__*, i32, %struct.TYPE_21__*, i32, i32)** %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_21__* %13)
  %43 = call i32 %35(%struct.TYPE_17__* %38, i32 %41, %struct.TYPE_21__* %12, i32 %42, i32 0)
  %44 = call i32* @BDB_WRAP(%struct.TYPE_19__* %29, i32 %30, i32 %43)
  %45 = call i32 @SVN_ERR(i32* %44)
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_21__* %13, i32* %46)
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @apr_pstrmemdup(i32* %48, i32 %50, i32 %52)
  %54 = load i8**, i8*** %6, align 8
  store i8* %53, i8** %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @svn_fs_bdb__write_rep(%struct.TYPE_19__* %55, i8* %57, i32* %58, %struct.TYPE_18__* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @svn_fs_base__next_key(i32 %66, i32* %15, i8* %24)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %69 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_18__* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32 (%struct.TYPE_17__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_17__*, i32, i32, i32, i32)** %73, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** @NEXT_KEY_KEY, align 8
  %82 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_21__* %12, i8* %81)
  %83 = call i32 @svn_fs_base__str_to_dbt(%struct.TYPE_21__* %13, i8* %24)
  %84 = call i32 %74(%struct.TYPE_17__* %77, i32 %80, i32 %82, i32 %83, i32 0)
  store i32 %84, i32* %14, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %86 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %14, align 4
  %88 = call i32* @BDB_WRAP(%struct.TYPE_19__* %85, i32 %86, i32 %87)
  %89 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %89)
  ret i32* %88
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @svn_fs_base__str_to_dbt(%struct.TYPE_21__*, i8*) #2

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_18__*, i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32*) #2

declare dso_local i32* @BDB_WRAP(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_21__*) #2

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_21__*, i32*) #2

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #2

declare dso_local i32* @svn_fs_bdb__write_rep(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32*) #2

declare dso_local i32 @svn_fs_base__next_key(i32, i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
