; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc_prop_get2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc_prop_get2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 }

@svn_prop_entry_kind = common dso_local global i32 0, align 4
@SVN_ERR_BAD_PROP_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Property '%s' is an entry property\00", align 1
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svn_wc_prop_get2(i32** %0, %struct.TYPE_11__* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i32 @svn_property_kind2(i8* %16)
  store i32 %17, i32* %14, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @svn_dirent_is_absolute(i8* %18)
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* @svn_prop_entry_kind, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load i32, i32* @SVN_ERR_BAD_PROP_KIND, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %11, align 8
  %28 = call %struct.TYPE_12__* @svn_error_createf(i32 %25, i32* null, i32 %26, i8* %27)
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %7, align 8
  br label %56

29:                                               ; preds = %6
  %30 = load i32**, i32*** %8, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call %struct.TYPE_12__* @svn_wc__internal_propget(i32** %30, i32 %33, i8* %34, i8* %35, i32* %36, i32* %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %15, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %29
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %49 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %48)
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %7, align 8
  br label %56

50:                                               ; preds = %41
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %52 = call i32 @svn_error_clear(%struct.TYPE_12__* %51)
  %53 = load i32**, i32*** %8, align 8
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %50, %29
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %7, align 8
  br label %56

56:                                               ; preds = %54, %47, %24
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  ret %struct.TYPE_12__* %57
}

declare dso_local i32 @svn_property_kind2(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local %struct.TYPE_12__* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_12__* @svn_wc__internal_propget(i32**, i32, i8*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
