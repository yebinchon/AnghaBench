; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_shelve.c_svn_client_shelves_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_shelve.c_svn_client_shelves_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_shelves_list(i32** %0, i8* %1, %struct.TYPE_10__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_9__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @svn_wc__get_shelves_dir(i8** %11, i32 %20, i8* %21, i32* %22, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i8*, i8** %11, align 8
  %27 = load i32, i32* @FALSE, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_io_get_dirents3(i32** %12, i8* %26, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = call i32* @apr_hash_make(i32* %32)
  %34 = load i32**, i32*** %6, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @apr_hash_first(i32* %35, i32* %36)
  store i32* %37, i32** %13, align 8
  br label %38

38:                                               ; preds = %92, %5
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %95

41:                                               ; preds = %38
  %42 = load i32*, i32** %13, align 8
  %43 = call i8* @apr_hash_this_key(i32* %42)
  store i8* %43, i8** %14, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = call %struct.TYPE_8__* @apr_hash_this_val(i32* %44)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %15, align 8
  store i8* null, i8** %16, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @shelf_name_from_filename(i8** %16, i8* %46, i32* %47)
  %49 = call i32 @svn_error_clear(i32 %48)
  %50 = load i8*, i8** %16, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %91

52:                                               ; preds = %41
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @svn_node_file, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %91

58:                                               ; preds = %52
  %59 = load i32*, i32** %9, align 8
  %60 = call %struct.TYPE_9__* @apr_palloc(i32* %59, i32 24)
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %17, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 2
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %63, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @svn_dirent_join(i8* %71, i8* %72, i32* %73)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = call i32 @read_logmsg_from_patch(i32* %78, i32 %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32**, i32*** %6, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %90 = call i32 @svn_hash_sets(i32* %87, i8* %88, %struct.TYPE_9__* %89)
  br label %91

91:                                               ; preds = %58, %52, %41
  br label %92

92:                                               ; preds = %91
  %93 = load i32*, i32** %13, align 8
  %94 = call i32* @apr_hash_next(i32* %93)
  store i32* %94, i32** %13, align 8
  br label %38

95:                                               ; preds = %38
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %96
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_shelves_dir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_get_dirents3(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_error_clear(i32) #1

declare dso_local i32 @shelf_name_from_filename(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_9__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @read_logmsg_from_patch(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
