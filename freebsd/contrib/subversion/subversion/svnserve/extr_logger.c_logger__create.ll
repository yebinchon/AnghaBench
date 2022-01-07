; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_logger.c_logger__create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_logger.c_logger__create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@APR_WRITE = common dso_local global i32 0, align 4
@APR_CREATE = common dso_local global i32 0, align 4
@APR_APPEND = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @logger__create(%struct.TYPE_4__** %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__** %0, %struct.TYPE_4__*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.TYPE_4__* @apr_pcalloc(i32* %9, i32 12)
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @APR_WRITE, align 4
  %13 = load i32, i32* @APR_CREATE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @APR_APPEND, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @APR_OS_DEFAULT, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @svn_io_file_open(i32** %8, i8* %11, i32 %16, i32 %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @svn_mutex__init(i32* %22, i32 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @svn_stream_from_aprfile2(i32* %27, i32 %28, i32* %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @svn_pool_create(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %4, align 8
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %38, align 8
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local %struct.TYPE_4__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_open(i32**, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_mutex__init(i32*, i32, i32*) #1

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32 @svn_pool_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
