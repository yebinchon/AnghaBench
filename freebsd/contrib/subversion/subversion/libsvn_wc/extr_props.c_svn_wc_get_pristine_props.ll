; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc_get_pristine_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc_get_pristine_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_wc_get_pristine_props(i32** %0, %struct.TYPE_10__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32**, i32*** %7, align 8
  %14 = icmp ne i32** %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @SVN_ERR_ASSERT(i32 %15)
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @svn_dirent_is_absolute(i8* %17)
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i32**, i32*** %7, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call %struct.TYPE_11__* @svn_wc__db_read_pristine_props(i32** %20, i32 %23, i8* %24, i32* %25, i32* %26)
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %12, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %5
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %38 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %37)
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %6, align 8
  br label %45

39:                                               ; preds = %30
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %41 = call i32 @svn_error_clear(%struct.TYPE_11__* %40)
  %42 = load i32**, i32*** %7, align 8
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %39, %5
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %6, align 8
  br label %45

45:                                               ; preds = %43, %36
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  ret %struct.TYPE_11__* %46
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__db_read_pristine_props(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
