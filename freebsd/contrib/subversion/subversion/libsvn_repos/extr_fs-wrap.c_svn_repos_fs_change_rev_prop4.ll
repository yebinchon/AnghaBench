; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_change_rev_prop4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_change_rev_prop4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@svn_repos_revision_access_full = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_AUTHZ_UNREADABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Write denied:  not authorized to read all of revision %ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_change_rev_prop4(%struct.TYPE_6__* %0, i32 %1, i8* %2, i8* %3, i32** %4, i32* %5, i64 %6, i64 %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8, align 1
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32** %4, i32*** %17, align 8
  store i32* %5, i32** %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %21, align 4
  %32 = load i8*, i8** %22, align 8
  %33 = load i32*, i32** %23, align 8
  %34 = call i32 @svn_repos_check_revision_access(i64* %24, %struct.TYPE_6__* %29, i32 %30, i32 %31, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64, i64* %24, align 8
  %37 = load i64, i64* @svn_repos_revision_access_full, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %124

39:                                               ; preds = %11
  %40 = load i8*, i8** %16, align 8
  %41 = load i32*, i32** %18, align 8
  %42 = load i32*, i32** %23, align 8
  %43 = call i32 @svn_repos__validate_prop(i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32**, i32*** %17, align 8
  %46 = icmp ne i32** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32**, i32*** %17, align 8
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %25, align 8
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i8*, i8** %16, align 8
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32*, i32** %23, align 8
  %58 = load i32*, i32** %23, align 8
  %59 = call i32 @svn_fs_revision_prop2(i32** %28, i32 %53, i32 %54, i8* %55, i32 %56, i32* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %28, align 8
  store i32* %61, i32** %25, align 8
  br label %62

62:                                               ; preds = %50, %47
  %63 = load i32*, i32** %18, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  store i8 68, i8* %26, align 1
  br label %72

66:                                               ; preds = %62
  %67 = load i32*, i32** %25, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i8 65, i8* %26, align 1
  br label %71

70:                                               ; preds = %66
  store i8 77, i8* %26, align 1
  br label %71

71:                                               ; preds = %70, %69
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i64, i64* %19, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load i64, i64* %20, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75, %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %23, align 8
  %83 = load i32*, i32** %23, align 8
  %84 = call i32 @svn_repos__parse_hooks_env(i32** %27, i32 %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  %87 = load i64, i64* %19, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %91 = load i32*, i32** %27, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i32*, i32** %18, align 8
  %96 = load i8, i8* %26, align 1
  %97 = load i32*, i32** %23, align 8
  %98 = call i32 @svn_repos__hooks_pre_revprop_change(%struct.TYPE_6__* %90, i32* %91, i32 %92, i8* %93, i8* %94, i32* %95, i8 signext %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  br label %100

100:                                              ; preds = %89, %86
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %16, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = load i32*, i32** %23, align 8
  %108 = call i32 @svn_fs_change_rev_prop2(i32 %103, i32 %104, i8* %105, i32** %25, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i64, i64* %20, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %100
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %114 = load i32*, i32** %27, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %15, align 8
  %117 = load i8*, i8** %16, align 8
  %118 = load i32*, i32** %25, align 8
  %119 = load i8, i8* %26, align 1
  %120 = load i32*, i32** %23, align 8
  %121 = call i32 @svn_repos__hooks_post_revprop_change(%struct.TYPE_6__* %113, i32* %114, i32 %115, i8* %116, i8* %117, i32* %118, i8 signext %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  br label %123

123:                                              ; preds = %112, %100
  br label %129

124:                                              ; preds = %11
  %125 = load i32, i32* @SVN_ERR_AUTHZ_UNREADABLE, align 4
  %126 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %127 = load i32, i32* %14, align 4
  %128 = call i32* @svn_error_createf(i32 %125, i32* null, i32 %126, i32 %127)
  store i32* %128, i32** %12, align 8
  br label %131

129:                                              ; preds = %123
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %12, align 8
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32*, i32** %12, align 8
  ret i32* %132
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_check_revision_access(i64*, %struct.TYPE_6__*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_repos__validate_prop(i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_revision_prop2(i32**, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_repos__parse_hooks_env(i32**, i32, i32*, i32*) #1

declare dso_local i32 @svn_repos__hooks_pre_revprop_change(%struct.TYPE_6__*, i32*, i32, i8*, i8*, i32*, i8 signext, i32*) #1

declare dso_local i32 @svn_fs_change_rev_prop2(i32, i32, i8*, i32**, i32*, i32*) #1

declare dso_local i32 @svn_repos__hooks_post_revprop_change(%struct.TYPE_6__*, i32*, i32, i8*, i8*, i32*, i8 signext, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
