; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_dated_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_dated_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_dated_revision(i32* %0, %struct.TYPE_3__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %14, align 8
  %20 = load i32*, i32** %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @svn_fs_youngest_rev(i32* %12, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %14, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @svn_fs_refresh_revision_props(i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  store i32 0, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %101, %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %102

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @get_time(i64* %13, i32* %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  store i32 0, i32* %51, align 4
  br label %102

52:                                               ; preds = %46
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @get_time(i64* %15, i32* %53, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp sle i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* %9, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %102

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %101

69:                                               ; preds = %33
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %102

81:                                               ; preds = %73
  %82 = load i32*, i32** %14, align 8
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @get_time(i64* %16, i32* %82, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i32, i32* %9, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  br label %102

94:                                               ; preds = %81
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %100

97:                                               ; preds = %69
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  br label %102

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %66
  br label %29

102:                                              ; preds = %97, %91, %78, %62, %50, %29
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_refresh_revision_props(i32*, i32*) #1

declare dso_local i32 @get_time(i64*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
