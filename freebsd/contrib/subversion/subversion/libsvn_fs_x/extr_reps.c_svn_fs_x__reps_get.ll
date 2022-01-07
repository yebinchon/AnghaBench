; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_reps.c_svn_fs_x__reps_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_reps.c_svn_fs_x__reps_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32* }
%struct.TYPE_8__ = type { i64* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__reps_get(%struct.TYPE_9__** %0, i32* %1, %struct.TYPE_8__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 1
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call %struct.TYPE_9__* @apr_pcalloc(i32* %27, i32 24)
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @svn_stringbuf_create_empty(i32* %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %42, %43
  %45 = call i32 @get_text(%struct.TYPE_9__* %39, %struct.TYPE_8__* %40, i64 %41, i64 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %47, align 8
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %48
}

declare dso_local %struct.TYPE_9__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @get_text(%struct.TYPE_9__*, %struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
