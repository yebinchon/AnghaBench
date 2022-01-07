; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_svn_client__get_paths_auto_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_add.c_svn_client__get_paths_auto_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"application/octet-stream\00", align 1
@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__get_paths_auto_props(i32** %0, i8** %1, i8* %2, i32* %3, i32* %4, %struct.TYPE_3__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i32** %0, i32*** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %18, align 8
  %24 = load i32*, i32** %15, align 8
  %25 = call i32* @apr_hash_make(i32* %24)
  %26 = load i32**, i32*** %9, align 8
  store i32* %25, i32** %26, align 8
  %27 = load i8**, i8*** %10, align 8
  store i8* null, i8** %27, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %56

30:                                               ; preds = %8
  %31 = load i32*, i32** %16, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call i32* @apr_hash_first(i32* %31, i32* %32)
  store i32* %33, i32** %17, align 8
  br label %34

34:                                               ; preds = %52, %30
  %35 = load i32*, i32** %17, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i32*, i32** %17, align 8
  %39 = call i8* @apr_hash_this_key(i32* %38)
  store i8* %39, i8** %19, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i32* @apr_hash_this_val(i32* %40)
  store i32* %41, i32** %20, align 8
  %42 = load i32**, i32*** %9, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @svn_dirent_basename(i8* %45, i32* %46)
  %48 = load i8*, i8** %19, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @get_auto_props_for_pattern(i32* %43, i8** %44, i64* %18, i32 %47, i8* %48, i32* %49, i32* %50)
  br label %52

52:                                               ; preds = %37
  %53 = load i32*, i32** %17, align 8
  %54 = call i32* @apr_hash_next(i32* %53)
  store i32* %54, i32** %17, align 8
  br label %34

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55, %8
  %57 = load i8**, i8*** %10, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %109, label %60

60:                                               ; preds = %56
  %61 = load i8**, i8*** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @svn_io_detect_mimetype2(i8** %61, i8* %62, i32 %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %12, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %93

71:                                               ; preds = %60
  %72 = load i8**, i8*** %10, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8**, i8*** %10, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %75, %71
  %81 = load i8*, i8** %11, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @svn_magic__detect_binary_mimetype(i8** %21, i8* %81, i32* %82, i32* %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i8*, i8** %21, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load i8*, i8** %21, align 8
  %91 = load i8**, i8*** %10, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %89, %80
  br label %93

93:                                               ; preds = %92, %75, %60
  %94 = load i8**, i8*** %10, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = load i32**, i32*** %9, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %101 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %102 = call i32 @strlen(i32 %101)
  %103 = load i8**, i8*** %10, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @svn_string_create(i8* %104, i32* %105)
  %107 = call i32 @apr_hash_set(i32* %99, i32 %100, i32 %102, i32 %106)
  br label %108

108:                                              ; preds = %97, %93
  br label %109

109:                                              ; preds = %108, %56
  %110 = load i64, i64* %18, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %130, label %112

112:                                              ; preds = %109
  %113 = load i64, i64* @FALSE, align 8
  store i64 %113, i64* %22, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @svn_io_is_file_executable(i64* %22, i8* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i64, i64* %22, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i32**, i32*** %9, align 8
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %124 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %125 = call i32 @strlen(i32 %124)
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @svn_string_create_empty(i32* %126)
  %128 = call i32 @apr_hash_set(i32* %122, i32 %123, i32 %125, i32 %127)
  br label %129

129:                                              ; preds = %120, %112
  br label %130

130:                                              ; preds = %129, %109
  %131 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %131
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @get_auto_props_for_pattern(i32*, i8**, i64*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_detect_mimetype2(i8**, i8*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_magic__detect_binary_mimetype(i8**, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @apr_hash_set(i32*, i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @svn_string_create(i8*, i32*) #1

declare dso_local i32 @svn_io_is_file_executable(i64*, i8*, i32*) #1

declare dso_local i32 @svn_string_create_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
