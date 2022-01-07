; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_file_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_file_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_15__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (i32*, i32*, %struct.TYPE_14__*, i8*, i32, i8*, i32*)* @run_file_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @run_file_move(i32* %0, i32* %1, %struct.TYPE_14__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %15, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @apr_pstrmemdup(i32* %25, i32 %28, i32 %31)
  store i8* %32, i8** %18, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = call %struct.TYPE_15__* @svn_wc__db_from_relpath(i8** %16, i32* %33, i8* %34, i8* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(%struct.TYPE_15__* %38)
  %40 = load i32*, i32** %14, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @apr_pstrmemdup(i32* %40, i32 %45, i32 %50)
  store i8* %51, i8** %18, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call %struct.TYPE_15__* @svn_wc__db_from_relpath(i8** %17, i32* %52, i8* %53, i8* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(%struct.TYPE_15__* %57)
  %59 = load i8*, i8** %16, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call %struct.TYPE_15__* @svn_io_file_move(i8* %59, i8* %60, i32* %61)
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %19, align 8
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %64 = icmp ne %struct.TYPE_15__* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %7
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @APR_STATUS_IS_ENOENT(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %73 = call i32 @svn_error_clear(%struct.TYPE_15__* %72)
  br label %77

74:                                               ; preds = %65, %7
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %76 = call i32 @SVN_ERR(%struct.TYPE_15__* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_15__* %78
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_io_file_move(i8*, i8*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
