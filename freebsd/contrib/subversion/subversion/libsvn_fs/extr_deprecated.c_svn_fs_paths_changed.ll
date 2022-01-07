; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_deprecated.c_svn_fs_paths_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_deprecated.c_svn_fs_paths_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_paths_changed(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @svn_fs_paths_changed2(i32** %7, i32* %14, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32* @apr_hash_make(i32* %18)
  %20 = load i32**, i32*** %4, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @apr_hash_first(i32* %21, i32* %22)
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %60, %3
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @apr_hash_this(i32* %28, i8** %9, i32* %10, i8** %11)
  %30 = load i8*, i8** %11, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %12, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call %struct.TYPE_5__* @apr_palloc(i32* %32, i32 16)
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %13, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32**, i32*** %4, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %59 = call i32 @apr_hash_set(i32* %55, i8* %56, i32 %57, %struct.TYPE_5__* %58)
  br label %60

60:                                               ; preds = %27
  %61 = load i32*, i32** %8, align 8
  %62 = call i32* @apr_hash_next(i32* %61)
  store i32* %62, i32** %8, align 8
  br label %24

63:                                               ; preds = %24
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %64
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_paths_changed2(i32**, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local %struct.TYPE_5__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, %struct.TYPE_5__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
