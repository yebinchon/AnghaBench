; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__ra_provide_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__ra_provide_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.ra_ev2_baton = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @svn_client__ra_provide_base(i32** %0, i32* %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ra_ev2_baton*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = bitcast i8* %17 to %struct.ra_ev2_baton*
  store %struct.ra_ev2_baton* %18, %struct.ra_ev2_baton** %14, align 8
  %19 = load %struct.ra_ev2_baton*, %struct.ra_ev2_baton** %14, align 8
  %20 = getelementptr inbounds %struct.ra_ev2_baton, %struct.ra_ev2_baton* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = call i8* @svn_hash_gets(i32 %21, i8* %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32**, i32*** %8, align 8
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %7, align 8
  br label %71

29:                                               ; preds = %6
  %30 = load i32**, i32*** %8, align 8
  %31 = load %struct.ra_ev2_baton*, %struct.ra_ev2_baton** %14, align 8
  %32 = getelementptr inbounds %struct.ra_ev2_baton, %struct.ra_ev2_baton* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %15, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call %struct.TYPE_8__* @svn_wc_get_pristine_contents2(i32** %30, i32 %33, i8* %34, i32* %35, i32* %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %16, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %47)
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %7, align 8
  br label %71

49:                                               ; preds = %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = call i32 @svn_error_clear(%struct.TYPE_8__* %50)
  %52 = load i32**, i32*** %8, align 8
  store i32* null, i32** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %7, align 8
  br label %71

54:                                               ; preds = %29
  %55 = load i32**, i32*** %8, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32*, i32** %9, align 8
  %60 = load %struct.ra_ev2_baton*, %struct.ra_ev2_baton** %14, align 8
  %61 = getelementptr inbounds %struct.ra_ev2_baton, %struct.ra_ev2_baton* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %15, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = call i32 @svn_wc__node_get_origin(i32* null, i32* %59, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %62, i8* %63, i32 %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %58, %54
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %7, align 8
  br label %71

71:                                               ; preds = %69, %49, %46, %26
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %72
}

declare dso_local i8* @svn_hash_gets(i32, i8*) #1

declare dso_local %struct.TYPE_8__* @svn_wc_get_pristine_contents2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
