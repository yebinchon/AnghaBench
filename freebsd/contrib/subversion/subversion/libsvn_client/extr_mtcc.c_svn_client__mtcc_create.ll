; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mtcc.c_svn_client__mtcc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32*, i32, i32* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NO_SUCH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"No such revision %ld (HEAD is %ld)\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__mtcc_create(%struct.TYPE_4__** %0, i8* %1, i64 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = call i32* @svn_pool_create(i32* %15)
  store i32* %16, i32** %14, align 8
  %17 = load i32*, i32** %14, align 8
  %18 = call %struct.TYPE_4__* @apr_pcalloc(i32* %17, i32 48)
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %19, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 5
  store i32* %20, i32** %23, align 8
  %24 = load i32, i32* @FALSE, align 4
  %25 = load i32, i32* @TRUE, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @mtcc_op_create(i32* null, i32 %24, i32 %25, i32* %26)
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  store i32* %31, i32** %34, align 8
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @svn_client_open_ra_session2(i32* %37, i8* %38, i32* null, i32* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @svn_ra_get_latest_revnum(i32 %47, i64* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @SVN_IS_VALID_REVNUM(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %6
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  br label %70

62:                                               ; preds = %6
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i64 %66, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %57
  %71 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %74, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %70
  %81 = load i32, i32* @SVN_ERR_FS_NO_SUCH_REVISION, align 4
  %82 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %83 = load i64, i64* %10, align 8
  %84 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32* @svn_error_createf(i32 %81, i32* null, i32 %82, i64 %83, i64 %87)
  store i32* %88, i32** %7, align 8
  br label %91

89:                                               ; preds = %70
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %7, align 8
  br label %91

91:                                               ; preds = %89, %80
  %92 = load i32*, i32** %7, align 8
  ret i32* %92
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @mtcc_op_create(i32*, i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_open_ra_session2(i32*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_get_latest_revnum(i32, i64*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
