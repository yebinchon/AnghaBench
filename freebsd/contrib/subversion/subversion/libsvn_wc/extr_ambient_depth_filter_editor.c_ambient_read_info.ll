; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_ambient_read_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_ambient_depth_filter_editor.c_ambient_read_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i32*, i32*, i32*, i8*, i32*)* @ambient_read_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @ambient_read_info(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @SVN_ERR_ASSERT(i32 %17)
  %19 = load i32*, i32** %8, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call %struct.TYPE_7__* @svn_wc__db_base_get_info(i32* %19, i32* %20, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %22, i8* %23, i32* %24, i32* %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %14, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %53

29:                                               ; preds = %6
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %37 = call i32 @svn_error_clear(%struct.TYPE_7__* %36)
  %38 = load i32, i32* @svn_node_unknown, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* @svn_wc__db_status_normal, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i32*, i32** %10, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* @svn_depth_unknown, align 4
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %7, align 8
  br label %58

53:                                               ; preds = %29, %6
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %55 = call i32 @SVN_ERR(%struct.TYPE_7__* %54)
  br label %56

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %7, align 8
  br label %58

58:                                               ; preds = %56, %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %59
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local %struct.TYPE_7__* @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
