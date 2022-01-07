; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_noderev.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_block_read_noderev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_10__*, i32*, %struct.TYPE_8__*, i32*, i64, i32*, i32*)* @block_read_noderev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @block_read_noderev(i32** %0, %struct.TYPE_10__* %1, i32* %2, %struct.TYPE_8__* %3, i32* %4, i64 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_9__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i32** %0, i32*** %10, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %11, align 8
  store i32* %2, i32** %12, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %13, align 8
  store i32* %4, i32** %14, align 8
  store i64 %5, i64* %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %18, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %8
  %33 = load i64, i64* @FALSE, align 8
  store i64 %33, i64* %20, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = load i32*, i32** %17, align 8
  %39 = call i32 @svn_cache__has_key(i64* %20, i32 %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %20, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %9, align 8
  br label %69

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @read_item(i32** %19, %struct.TYPE_10__* %47, i32* %48, %struct.TYPE_8__* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32**, i32*** %10, align 8
  %54 = load i32*, i32** %19, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 @svn_fs_x__read_noderev(i32** %53, i32* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = load i32**, i32*** %10, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = call i32 @svn_cache__set(i32 %61, i32* %62, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %9, align 8
  br label %69

69:                                               ; preds = %46, %43
  %70 = load i32*, i32** %9, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__has_key(i64*, i32, i32*, i32*) #1

declare dso_local i32 @read_item(i32**, %struct.TYPE_10__*, i32*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @svn_fs_x__read_noderev(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cache__set(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
