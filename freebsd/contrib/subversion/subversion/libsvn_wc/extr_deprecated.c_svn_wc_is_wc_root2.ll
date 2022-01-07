; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_is_wc_root2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_is_wc_root2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svn_wc_is_wc_root2(i32* %0, %struct.TYPE_11__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @svn_dirent_is_absolute(i8* %14)
  %16 = call i32 @SVN_ERR_ASSERT(i32 %15)
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call %struct.TYPE_12__* @svn_wc__db_is_switched(i32* %10, i32* %11, i64* %12, i32 %19, i8* %20, i32* %21)
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %13, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %24 = icmp ne %struct.TYPE_12__* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %38)
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %5, align 8
  br label %64

40:                                               ; preds = %31, %25
  %41 = load i32, i32* @SVN_ERR_ENTRY_NOT_FOUND, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_12__* @svn_error_create(i32 %41, %struct.TYPE_12__* %42, i32 %45)
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %5, align 8
  br label %64

47:                                               ; preds = %4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @svn_node_dir, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %50
  %58 = phi i1 [ false, %50 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %47
  %60 = phi i1 [ true, %47 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %63, %struct.TYPE_12__** %5, align 8
  br label %64

64:                                               ; preds = %59, %40, %37
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %65
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_12__* @svn_wc__db_is_switched(i32*, i32*, i64*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_error_create(i32, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
