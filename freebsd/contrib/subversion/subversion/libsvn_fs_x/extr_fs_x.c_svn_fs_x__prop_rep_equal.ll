; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__prop_rep_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_fs_x.c_svn_fs_x__prop_rep_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__prop_rep_equal(i32* %0, i32* %1, %struct.TYPE_9__* %2, %struct.TYPE_9__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %14, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %26 = icmp eq %struct.TYPE_8__* %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load i32, i32* @TRUE, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %7, align 8
  br label %100

31:                                               ; preds = %6
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %63

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %36 = icmp ne %struct.TYPE_8__* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @svn_fs_x__is_revision(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @svn_fs_x__is_revision(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @memcmp(i32 %54, i32 %57, i32 4)
  %59 = icmp eq i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %7, align 8
  br label %100

63:                                               ; preds = %44, %37, %34, %31
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i64 @svn_fs_x__id_eq(i32* %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @TRUE, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %7, align 8
  br label %100

74:                                               ; preds = %63
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %8, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %80, i32** %7, align 8
  br label %100

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32 @svn_fs_x__get_proplist(i32** %16, i32* %82, %struct.TYPE_9__* %83, i32* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @svn_fs_x__get_proplist(i32** %17, i32* %88, %struct.TYPE_9__* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32*, i32** %13, align 8
  %97 = call i32 @svn_fs__prop_lists_equal(i32* %94, i32* %95, i32* %96)
  %98 = load i32*, i32** %8, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %99, i32** %7, align 8
  br label %100

100:                                              ; preds = %81, %77, %70, %51, %27
  %101 = load i32*, i32** %7, align 8
  ret i32* %101
}

declare dso_local i64 @svn_fs_x__is_revision(i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @svn_fs_x__id_eq(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_proplist(i32**, i32*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @svn_fs__prop_lists_equal(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
