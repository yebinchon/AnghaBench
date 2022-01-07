; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_file.c_get_file_prop_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_get_file.c_get_file_prop_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }
%struct.file_prop_baton_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"resourcetype\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"collection\00", align 1
@svn_node_dir = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_DAV_PROP_NS_DAV = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"sha1-checksum\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i8*, %struct.TYPE_4__*, i32*)* @get_file_prop_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_file_prop_cb(i8* %0, i8* %1, i8* %2, i8* %3, %struct.TYPE_4__* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.file_prop_baton_t*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.file_prop_baton_t*
  store %struct.file_prop_baton_t* %18, %struct.file_prop_baton_t** %14, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %6
  %23 = load i8*, i8** %11, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %16, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @svn_node_dir, align 4
  %35 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %36 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @svn_node_file, align 4
  %39 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %40 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %7, align 8
  br label %92

43:                                               ; preds = %22, %6
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** @SVN_DAV_PROP_NS_DAV, align 8
  %46 = call i64 @strcmp(i8* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %43
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %54 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @apr_pstrdup(i32 %55, i8* %58)
  %60 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %61 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %52, %48, %43
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %65 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %7, align 8
  br label %92

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %74 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @svn_ra_serf__svnname_from_wirename(i8* %71, i8* %72, i32 %75)
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %70
  %80 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %81 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %15, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %85 = load %struct.file_prop_baton_t*, %struct.file_prop_baton_t** %14, align 8
  %86 = getelementptr inbounds %struct.file_prop_baton_t, %struct.file_prop_baton_t* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @svn_string_dup(%struct.TYPE_4__* %84, i32 %87)
  %89 = call i32 @svn_hash_sets(i32 %82, i8* %83, i32 %88)
  br label %90

90:                                               ; preds = %79, %70
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %7, align 8
  br label %92

92:                                               ; preds = %90, %68, %41
  %93 = load i32*, i32** %7, align 8
  ret i32* %93
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i8* @svn_ra_serf__svnname_from_wirename(i8*, i8*, i32) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32) #1

declare dso_local i32 @svn_string_dup(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
