; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_get_dir_props_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_stat.c_get_dir_props_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.get_dir_baton_t = type { i64, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Can't get properties of non-directory\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i32*)* @get_dir_props_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_dir_props_cb(i8* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_4__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.get_dir_baton_t*, align 8
  %15 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.get_dir_baton_t*
  store %struct.get_dir_baton_t* %17, %struct.get_dir_baton_t** %14, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %21 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @svn_ra_serf__svnname_from_wirename(i8* %18, i8* %19, i32 %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %6
  %27 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %28 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %15, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %32 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %33 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @svn_string_dup(%struct.TYPE_4__* %31, i32 %34)
  %36 = call i32 @svn_hash_sets(i32 %29, i8* %30, i32 %35)
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %7, align 8
  br label %69

38:                                               ; preds = %6
  %39 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %40 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %67, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32* @svn_error_create(i32 %58, i32* null, i32 %59)
  store i32* %60, i32** %7, align 8
  br label %69

61:                                               ; preds = %51
  %62 = load i64, i64* @TRUE, align 8
  %63 = load %struct.get_dir_baton_t*, %struct.get_dir_baton_t** %14, align 8
  %64 = getelementptr inbounds %struct.get_dir_baton_t, %struct.get_dir_baton_t* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %65, %47, %43
  br label %67

67:                                               ; preds = %66, %38
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %7, align 8
  br label %69

69:                                               ; preds = %67, %57, %26
  %70 = load i32*, i32** %7, align 8
  ret i32* %70
}

declare dso_local i8* @svn_ra_serf__svnname_from_wirename(i8*, i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32) #1

declare dso_local i32 @svn_string_dup(%struct.TYPE_4__*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
