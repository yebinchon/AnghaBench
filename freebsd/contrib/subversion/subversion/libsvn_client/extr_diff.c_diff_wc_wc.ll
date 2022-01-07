; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_wc_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_wc_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_driver_info_t = type { i8* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@svn_opt_revision_base = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"Only diffs between a path's text-base and its working files are supported at this time\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.diff_driver_info_t*, i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__*, i32, i32, i32*, i32*, %struct.TYPE_7__*, i32*, i32*)* @diff_wc_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_wc_wc(i8** %0, i32* %1, %struct.diff_driver_info_t* %2, i8* %3, %struct.TYPE_6__* %4, i8* %5, %struct.TYPE_6__* %6, i32 %7, i32 %8, i32* %9, i32* %10, %struct.TYPE_7__* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.diff_driver_info_t*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.TYPE_6__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_6__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store i8** %0, i8*** %16, align 8
  store i32* %1, i32** %17, align 8
  store %struct.diff_driver_info_t* %2, %struct.diff_driver_info_t** %18, align 8
  store i8* %3, i8** %19, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %20, align 8
  store i8* %5, i8** %21, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32* %9, i32** %25, align 8
  store i32* %10, i32** %26, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  %32 = load i8*, i8** %19, align 8
  %33 = call i32 @svn_path_is_url(i8* %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @SVN_ERR_ASSERT(i32 %36)
  %38 = load i8*, i8** %21, align 8
  %39 = call i32 @svn_path_is_url(i8* %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @SVN_ERR_ASSERT(i32 %42)
  %44 = load i8*, i8** %19, align 8
  %45 = load i32*, i32** %29, align 8
  %46 = call i32 @svn_dirent_get_absolute(i8** %30, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i8*, i8** %19, align 8
  %49 = load i8*, i8** %21, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %14
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @svn_opt_revision_base, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_opt_revision_working, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %69, label %64

64:                                               ; preds = %58, %52, %14
  %65 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %66 = call i32 @_(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %67 = call i32 @svn_error_create(i32 %65, i32* null, i32 %66)
  %68 = call i32* @unsupported_diff_error(i32 %67)
  store i32* %68, i32** %15, align 8
  br label %118

69:                                               ; preds = %58
  %70 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %71 = icmp ne %struct.diff_driver_info_t* %70, null
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %30, align 8
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %29, align 8
  %80 = call i32 @svn_wc_read_kind2(i64* %31, i32 %75, i8* %76, i32 %77, i32 %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i64, i64* %31, align 8
  %83 = load i64, i64* @svn_node_dir, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %72
  %86 = load i8*, i8** %19, align 8
  %87 = load i32*, i32** %29, align 8
  %88 = call i8* @svn_dirent_dirname(i8* %86, i32* %87)
  %89 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %90 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  br label %95

91:                                               ; preds = %72
  %92 = load i8*, i8** %19, align 8
  %93 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %18, align 8
  %94 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %91, %85
  br label %96

96:                                               ; preds = %95, %69
  %97 = load i8**, i8*** %16, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %30, align 8
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %24, align 4
  %105 = load i32*, i32** %25, align 8
  %106 = load i32*, i32** %26, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %28, align 8
  %114 = load i32*, i32** %29, align 8
  %115 = call i32 @svn_wc__diff7(i8** %97, i32* %98, i32 %101, i8* %102, i32 %103, i32 %104, i32* %105, i32* %106, i32 %109, i32 %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %15, align 8
  br label %118

118:                                              ; preds = %96, %64
  %119 = load i32*, i32** %15, align 8
  ret i32* %119
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @unsupported_diff_error(i32) #1

declare dso_local i32 @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__diff7(i8**, i32*, i32, i8*, i32, i32, i32*, i32*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
