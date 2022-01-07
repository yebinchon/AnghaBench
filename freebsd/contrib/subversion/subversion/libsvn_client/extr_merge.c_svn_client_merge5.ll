; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_merge5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_svn_client_merge5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_BAD_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not all required revisions are specified\00", align 1
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Merge sources must both be either paths or URLs\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_merge5(i8* %0, %struct.TYPE_11__* %1, i8* %2, %struct.TYPE_11__* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32* %12, %struct.TYPE_12__* %13, i32* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_12__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  store i8* %0, i8** %17, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %18, align 8
  store i8* %2, i8** %19, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %20, align 8
  store i8* %4, i8** %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32* %12, i32** %29, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %30, align 8
  store i32* %14, i32** %31, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %15
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %40, %15
  %47 = load i32, i32* @SVN_ERR_CLIENT_BAD_REVISION, align 4
  %48 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %49 = call i32* @svn_error_create(i32 %47, i32* null, i32 %48)
  store i32* %49, i32** %16, align 8
  br label %128

50:                                               ; preds = %40
  %51 = load i8*, i8** %17, align 8
  %52 = call i64 @svn_path_is_url(i8* %51)
  %53 = load i8*, i8** %19, align 8
  %54 = call i64 @svn_path_is_url(i8* %53)
  %55 = icmp ne i64 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %59 = call i32* @svn_error_create(i32 %57, i32* null, i32 %58)
  store i32* %59, i32** %16, align 8
  br label %128

60:                                               ; preds = %50
  %61 = load i8*, i8** %17, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %63 = load i32*, i32** %31, align 8
  %64 = call i32 @ensure_wc_path_has_repo_revision(i8* %61, %struct.TYPE_11__* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** %19, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %68 = load i32*, i32** %31, align 8
  %69 = call i32 @ensure_wc_path_has_repo_revision(i8* %66, %struct.TYPE_11__* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load i8*, i8** %21, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %73 = load i32*, i32** %31, align 8
  %74 = call i32 @get_target_and_lock_abspath(i8** %32, i8** %33, i8* %71, %struct.TYPE_12__* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32, i32* %27, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %60
  %79 = load i8*, i8** %17, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %83 = load i8*, i8** %32, align 8
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %25, align 4
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %27, align 4
  %90 = load i32, i32* %28, align 4
  %91 = load i32*, i32** %29, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %93 = load i32*, i32** %31, align 8
  %94 = load i32*, i32** %31, align 8
  %95 = call i32 @svn_client__merge_locked(i32** %34, i8* %79, %struct.TYPE_11__* %80, i8* %81, %struct.TYPE_11__* %82, i8* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32* %91, %struct.TYPE_12__* %92, i32* %93, i32* %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %33, align 8
  %100 = load i32, i32* @FALSE, align 4
  %101 = load i32*, i32** %31, align 8
  %102 = call i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32 %95, i32 %98, i8* %99, i32 %100, i32* %101)
  br label %122

103:                                              ; preds = %60
  %104 = load i8*, i8** %17, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %108 = load i8*, i8** %32, align 8
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %23, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %25, align 4
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %27, align 4
  %115 = load i32, i32* %28, align 4
  %116 = load i32*, i32** %29, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %118 = load i32*, i32** %31, align 8
  %119 = load i32*, i32** %31, align 8
  %120 = call i32 @svn_client__merge_locked(i32** %34, i8* %104, %struct.TYPE_11__* %105, i8* %106, %struct.TYPE_11__* %107, i8* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, i32* %116, %struct.TYPE_12__* %117, i32* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  br label %122

122:                                              ; preds = %103, %78
  %123 = load i32*, i32** %34, align 8
  %124 = load i32*, i32** %31, align 8
  %125 = call i32 @svn_client__make_merge_conflict_error(i32* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32 %125)
  %127 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %127, i32** %16, align 8
  br label %128

128:                                              ; preds = %122, %56, %46
  %129 = load i32*, i32** %16, align 8
  ret i32* %129
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @ensure_wc_path_has_repo_revision(i8*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @get_target_and_lock_abspath(i8**, i8**, i8*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @SVN_WC__CALL_WITH_WRITE_LOCK(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_client__merge_locked(i32**, i8*, %struct.TYPE_11__*, i8*, %struct.TYPE_11__*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_client__make_merge_conflict_error(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
