; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__prop_rep_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_fs_fs.c_svn_fs_fs__prop_rep_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__prop_rep_equal(i32* %0, i32* %1, %struct.TYPE_7__* %2, %struct.TYPE_7__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %12, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %13, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %24 = icmp eq %struct.TYPE_6__* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @TRUE, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %28, i32** %6, align 8
  br label %109

29:                                               ; preds = %5
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %79

32:                                               ; preds = %29
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = call i32 @svn_fs_fs__id_txn_used(i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %79, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  %43 = call i32 @svn_fs_fs__id_txn_used(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %79, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i32*, i32** %7, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %64, i32** %6, align 8
  br label %109

65:                                               ; preds = %53, %45
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @memcmp(i32 %68, i32 %71, i32 4)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @FALSE, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %6, align 8
  br label %109

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %40, %35, %32, %29
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @svn_fs_fs__id_eq(i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %79
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %6, align 8
  br label %109

92:                                               ; preds = %79
  %93 = load i32*, i32** %8, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %95 = load i32*, i32** %11, align 8
  %96 = call i32 @svn_fs_fs__get_proplist(i32** %14, i32* %93, %struct.TYPE_7__* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @svn_fs_fs__get_proplist(i32** %15, i32* %98, %struct.TYPE_7__* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** %14, align 8
  %104 = load i32*, i32** %15, align 8
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @svn_fs__prop_lists_equal(i32* %103, i32* %104, i32* %105)
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %108, i32** %6, align 8
  br label %109

109:                                              ; preds = %92, %88, %74, %61, %25
  %110 = load i32*, i32** %6, align 8
  ret i32* %110
}

declare dso_local i32 @svn_fs_fs__id_txn_used(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i64 @svn_fs_fs__id_eq(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__get_proplist(i32**, i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @svn_fs__prop_lists_equal(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
