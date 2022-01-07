; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__diff_base_only_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__diff_base_only_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)* }

@FALSE = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__diff_base_only_file(i32* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_5__* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i8* null, i8** %20, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %21, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i64 @SVN_IS_VALID_REVNUM(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %7
  br label %30

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %29, %28
  %31 = phi i32* [ null, %28 ], [ %12, %29 ]
  %32 = load i32*, i32** %9, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @svn_wc__db_base_get_info(i64* %16, i64* %17, i32* %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %18, i32* null, i32* null, i32* null, i32** %19, i32* null, i32* %32, i8* %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* @svn_wc__db_status_normal, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* @svn_node_file, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32*, i32** %18, align 8
  %47 = icmp ne i32* %46, null
  br label %48

48:                                               ; preds = %45, %41, %30
  %49 = phi i1 [ false, %41 ], [ false, %30 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @SVN_ERR_ASSERT(i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = call i32* @svn_diff__source_create(i32 %52, i32* %53)
  store i32* %54, i32** %22, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)*, i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_5__*, i32*, i32*)** %56, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32 %57(i8** %20, i64* %21, i8* %58, i32* %59, i32* null, i32* null, i8* %60, %struct.TYPE_5__* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i64, i64* %21, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %8, align 8
  br label %91

70:                                               ; preds = %48
  %71 = load i32*, i32** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %15, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = call i32 @svn_wc__db_pristine_get_path(i8** %23, i32* %71, i8* %72, i32* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)*, i32 (i8*, i32*, i8*, i32*, i8*, %struct.TYPE_5__*, i32*)** %79, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = load i8*, i8** %23, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = load i8*, i8** %20, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32 %80(i8* %81, i32* %82, i8* %83, i32* %84, i8* %85, %struct.TYPE_5__* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %8, align 8
  br label %91

91:                                               ; preds = %70, %68
  %92 = load i32*, i32** %8, align 8
  ret i32* %92
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
