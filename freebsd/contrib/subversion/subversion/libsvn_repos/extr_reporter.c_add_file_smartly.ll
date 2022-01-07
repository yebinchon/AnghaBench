; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_add_file_smartly.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_add_file_smartly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32, i32 (i32*, i32*, i8*, i32, i32*)*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 (i8*, i8*, i8*, i32, i32*, i8**)* }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i8*, i8*, i8*, i8**, i8**, i32*, i32*)* @add_file_smartly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file_smartly(%struct.TYPE_5__* %0, i8* %1, i8* %2, i8* %3, i8** %4, i8** %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @svn_repos_fs(i32 %24)
  store i32* %25, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i8* null, i8** %19, align 8
  %26 = load i8**, i8*** %14, align 8
  store i8* null, i8** %26, align 8
  %27 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %28 = load i32*, i32** %15, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %99

33:                                               ; preds = %8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 47
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32*, i32** %16, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* @SVN_VA_NULL, align 4
  %42 = call i8* @apr_pstrcat(i32* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %41)
  store i8* %42, i8** %12, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @svn_fs_closest_copy(i32** %18, i8** %19, i32 %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %18, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %98

53:                                               ; preds = %43
  %54 = load i8*, i8** %19, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = call i64 @strcmp(i8* %54, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %97

58:                                               ; preds = %53
  %59 = load i32*, i32** %15, align 8
  %60 = load i8**, i8*** %14, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = load i8*, i8** %19, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = call i32 @svn_fs_copied_from(i32* %59, i8** %60, i32* %61, i8* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32 (i32*, i32*, i8*, i32, i32*)*, i32 (i32*, i32*, i8*, i32, i32*)** %67, align 8
  %69 = icmp ne i32 (i32*, i32*, i8*, i32, i32*)* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %58
  %71 = load i32*, i32** %17, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @svn_fs_revision_root(i32** %21, i32* %71, i32 %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32 (i32*, i32*, i8*, i32, i32*)*, i32 (i32*, i32*, i8*, i32, i32*)** %78, align 8
  %80 = load i32*, i32** %21, align 8
  %81 = load i8**, i8*** %14, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %16, align 8
  %87 = call i32 %79(i32* %20, i32* %80, i8* %82, i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %70
  %92 = load i8**, i8*** %14, align 8
  store i8* null, i8** %92, align 8
  %93 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %94 = load i32*, i32** %15, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %91, %70
  br label %96

96:                                               ; preds = %95, %58
  br label %97

97:                                               ; preds = %96, %53
  br label %98

98:                                               ; preds = %97, %43
  br label %99

99:                                               ; preds = %98, %8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32 (i8*, i8*, i8*, i32, i32*, i8**)*, i32 (i8*, i8*, i8*, i32, i32*, i8**)** %103, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i8**, i8*** %14, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = load i8**, i8*** %13, align 8
  %113 = call i32 %104(i8* %105, i8* %106, i8* %108, i32 %110, i32* %111, i8** %112)
  %114 = call i32* @svn_error_trace(i32 %113)
  ret i32* %114
}

declare dso_local i32* @svn_repos_fs(i32) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_closest_copy(i32**, i8**, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
