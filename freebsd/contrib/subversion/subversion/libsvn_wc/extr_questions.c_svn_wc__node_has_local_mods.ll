; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_svn_wc__node_has_local_mods.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_questions.c_svn_wc__node_has_local_mods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_10__* null, align 8
@svn_depth_infinity = common dso_local global i32 0, align 4
@modcheck_callback = common dso_local global i32 0, align 4
@SVN_ERR_CEASE_INVOCATION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @svn_wc__node_has_local_mods(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %17, align 8
  %36 = call %struct.TYPE_10__* @svn_wc__db_has_db_mods(i32* %32, i32* %33, i8* %34, i32* %35)
  %37 = call i32 @SVN_ERR(%struct.TYPE_10__* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %9, align 8
  br label %93

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %8
  %45 = load i32, i32* %14, align 4
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* @svn_depth_infinity, align 4
  %50 = load i32, i32* @FALSE, align 4
  %51 = load i32, i32* @FALSE, align 4
  %52 = load i32, i32* @FALSE, align 4
  %53 = load i32, i32* @modcheck_callback, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call %struct.TYPE_10__* @svn_wc__internal_walk_status(i32* %47, i8* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32* null, i32 %53, %struct.TYPE_11__* %18, i32 %54, i8* %55, i32* %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %19, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %59 = icmp ne %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %44
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SVN_ERR_CEASE_INVOCATION, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %68 = call i32 @svn_error_clear(%struct.TYPE_10__* %67)
  br label %72

69:                                               ; preds = %60, %44
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %71 = call i32 @SVN_ERR(%struct.TYPE_10__* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %82, %78
  %88 = phi i1 [ false, %78 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %87, %72
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %9, align 8
  br label %93

93:                                               ; preds = %91, %41
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  ret %struct.TYPE_10__* %94
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__db_has_db_mods(i32*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc__internal_walk_status(i32*, i8*, i32, i32, i32, i32, i32*, i32, %struct.TYPE_11__*, i32, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
