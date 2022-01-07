; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_diff_tree.c_copy_as_changed_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.copy_as_changed_baton_t* }
%struct.copy_as_changed_baton_t = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_6__*, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*)* @copy_as_changed_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_as_changed_file_added(i8* %0, i32* %1, i32* %2, i8* %3, i8* %4, i32* %5, i32* %6, i8* %7, %struct.TYPE_5__* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.copy_as_changed_baton_t*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %25, align 8
  store %struct.copy_as_changed_baton_t* %26, %struct.copy_as_changed_baton_t** %21, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %77

29:                                               ; preds = %10
  %30 = load i32*, i32** %17, align 8
  %31 = load i32*, i32** %16, align 8
  %32 = load i32*, i32** %20, align 8
  %33 = call i32 @svn_prop_diffs(i32** %22, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i8*, i8** %14, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %29
  %40 = load i8*, i8** %15, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i8*, i8** %14, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i32*, i32** %20, align 8
  %48 = call i32 @svn_io_files_contents_same_p(i32* %23, i8* %45, i8* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  br label %52

50:                                               ; preds = %39, %29
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %23, align 4
  br label %52

52:                                               ; preds = %50, %44
  %53 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %21, align 8
  %54 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, i32*, i8*, %struct.TYPE_6__*, i32*)** %56, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = load i32*, i32** %16, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* %23, align 4
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = load i32*, i32** %22, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %21, align 8
  %72 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32*, i32** %20, align 8
  %75 = call i32 %57(i8* %58, i32* %59, i32* %60, i8* %61, i8* %62, i32* %63, i32* %64, i32 %68, i32* %69, i8* %70, %struct.TYPE_6__* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %97

77:                                               ; preds = %10
  %78 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %21, align 8
  %79 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i8*, %struct.TYPE_6__*, i32*)** %81, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = load %struct.copy_as_changed_baton_t*, %struct.copy_as_changed_baton_t** %21, align 8
  %92 = getelementptr inbounds %struct.copy_as_changed_baton_t, %struct.copy_as_changed_baton_t* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i32*, i32** %20, align 8
  %95 = call i32 %82(i8* %83, i32* %84, i32* %85, i8* %86, i8* %87, i32* %88, i32* %89, i8* %90, %struct.TYPE_6__* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %97

97:                                               ; preds = %77, %52
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %98
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_files_contents_same_p(i32*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
