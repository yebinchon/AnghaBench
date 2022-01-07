; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_svn_client_get_repos_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_util.c_svn_client_get_repos_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @svn_client_get_repos_root(i8** %0, i8** %1, i8* %2, %struct.TYPE_12__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32 @svn_path_is_url(i8* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %61, label %19

19:                                               ; preds = %6
  %20 = load i8**, i8*** %8, align 8
  %21 = load i8**, i8*** %9, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = call %struct.TYPE_11__* @svn_wc__node_get_repos_info(i32* null, i32* null, i8** %20, i8** %21, i32 %24, i8* %25, i32* %26, i32* %27)
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %15, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %31, label %59

31:                                               ; preds = %19
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %45 = call %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__* %44)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %7, align 8
  br label %87

46:                                               ; preds = %37, %31
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %48 = call i32 @svn_error_clear(%struct.TYPE_11__* %47)
  %49 = load i8**, i8*** %8, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i8**, i8*** %8, align 8
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i8**, i8*** %9, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8**, i8*** %9, align 8
  store i8* null, i8** %57, align 8
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %19
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %7, align 8
  br label %87

61:                                               ; preds = %6
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @svn_client_open_ra_session2(i32** %14, i8* %62, i32* null, %struct.TYPE_12__* %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i8**, i8*** %8, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load i32*, i32** %14, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = call i32 @svn_ra_get_repos_root2(i32* %71, i8** %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %70, %61
  %77 = load i8**, i8*** %9, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32*, i32** %14, align 8
  %81 = load i8**, i8*** %9, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @svn_ra_get_uuid2(i32* %80, i8** %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %79, %76
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %7, align 8
  br label %87

87:                                               ; preds = %85, %59, %43
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %88
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local %struct.TYPE_11__* @svn_wc__node_get_repos_info(i32*, i32*, i8**, i8**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_error_trace(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_open_ra_session2(i32**, i8*, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_ra_get_uuid2(i32*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
