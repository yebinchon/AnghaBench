; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc__get_pristine_contents_by_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc__get_pristine_contents_by_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32*, %struct.TYPE_6__* }

@get_pristine_lazyopen_func = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_pristine_contents_by_checksum(i32** %0, %struct.TYPE_6__* %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i32**, i32*** %7, align 8
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @svn_wc__db_pristine_check(i64* %13, i32 %18, i8* %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %6
  %27 = load i32*, i32** %11, align 8
  %28 = call %struct.TYPE_7__* @apr_pcalloc(i32* %27, i32 24)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %14, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @get_pristine_lazyopen_func, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @svn_stream_lazyopen_create(i32 %38, %struct.TYPE_7__* %39, i32 %40, i32* %41)
  %43 = load i32**, i32*** %7, align 8
  store i32* %42, i32** %43, align 8
  br label %44

44:                                               ; preds = %26, %6
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %45
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_pristine_check(i64*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32* @svn_stream_lazyopen_create(i32, %struct.TYPE_7__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
