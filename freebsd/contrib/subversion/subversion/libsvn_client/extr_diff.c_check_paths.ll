; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_check_paths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_check_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not all required revisions are specified\00", align 1
@svn_opt_revision_base = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [86 x i8] c"At least one revision must be something other than BASE or WORKING when diffing a URL\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*, %struct.TYPE_5__*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @check_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @check_paths(i32* %0, i32* %1, i8* %2, i8* %3, %struct.TYPE_5__* %4, %struct.TYPE_5__* %5, %struct.TYPE_5__* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %15, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %7
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23, %7
  %30 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %32 = call i32* @svn_error_create(i32 %30, i32* null, i32 %31)
  store i32* %32, i32** %8, align 8
  br label %99

33:                                               ; preds = %23
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @svn_opt_revision_base, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @svn_opt_revision_working, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %33
  %46 = phi i1 [ true, %33 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %16, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @svn_opt_revision_base, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_opt_revision_working, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %45
  %60 = phi i1 [ true, %45 ], [ %58, %53 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %59
  %68 = load i32, i32* %16, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %75 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %76 = call i32* @svn_error_create(i32 %74, i32* null, i32 %75)
  store i32* %76, i32** %8, align 8
  br label %99

77:                                               ; preds = %70, %67, %59
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i8*, i8** %11, align 8
  %82 = call i64 @svn_path_is_url(i8* %81)
  %83 = icmp ne i64 %82, 0
  br label %84

84:                                               ; preds = %80, %77
  %85 = phi i1 [ true, %77 ], [ %83, %80 ]
  %86 = zext i1 %85 to i32
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @svn_path_is_url(i8* %91)
  %93 = icmp ne i64 %92, 0
  br label %94

94:                                               ; preds = %90, %84
  %95 = phi i1 [ true, %84 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = load i32*, i32** %10, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %8, align 8
  br label %99

99:                                               ; preds = %94, %73, %29
  %100 = load i32*, i32** %8, align 8
  ret i32* %100
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
