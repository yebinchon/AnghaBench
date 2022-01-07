; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_propget3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_propget3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i32 }

@SVN_ERR_UNVERSIONED_RESOURCE = common dso_local global i64 0, align 8
@SVN_ERR_ENTRY_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_client_propget3(i32** %0, i8* %1, i8* %2, i32* %3, i32* %4, i64* %5, i32 %6, i32* %7, %struct.TYPE_14__* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  store i32** %0, i32*** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64* %5, i64** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32* %7, i32** %19, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %20, align 8
  store i32* %9, i32** %21, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i64 @svn_path_is_url(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %10
  %34 = load i8*, i8** %14, align 8
  store i8* %34, i8** %22, align 8
  br label %40

35:                                               ; preds = %10
  %36 = load i8*, i8** %14, align 8
  %37 = load i32*, i32** %21, align 8
  %38 = call %struct.TYPE_13__* @svn_dirent_get_absolute(i8** %22, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(%struct.TYPE_13__* %38)
  br label %40

40:                                               ; preds = %35, %33
  %41 = load i8*, i8** %13, align 8
  %42 = load i8*, i8** %22, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i64*, i64** %17, align 8
  %46 = load i32, i32* %18, align 4
  %47 = load i32*, i32** %19, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = load i32*, i32** %21, align 8
  %51 = call %struct.TYPE_13__* @svn_client_propget4(i32** %23, i8* %41, i8* %42, i32* %43, i32* %44, i64* %45, i32 %46, i32* %47, %struct.TYPE_14__* %48, i32* %49, i32* %50)
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %24, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %40
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @SVN_ERR_UNVERSIONED_RESOURCE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i64, i64* @SVN_ERR_ENTRY_NOT_FOUND, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %65 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %64)
  store %struct.TYPE_13__* %65, %struct.TYPE_13__** %11, align 8
  br label %138

66:                                               ; preds = %54, %40
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %68 = call i32 @SVN_ERR(%struct.TYPE_13__* %67)
  br label %69

69:                                               ; preds = %66
  %70 = load i64*, i64** %17, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load i8*, i8** %14, align 8
  %74 = call i64 @svn_path_is_url(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %72
  %77 = load i64*, i64** %17, align 8
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @SVN_IS_VALID_REVNUM(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %94, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %22, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = call %struct.TYPE_13__* @svn_wc__node_is_added(i64* %25, i32 %84, i8* %85, i32* %86)
  %88 = call i32 @SVN_ERR(%struct.TYPE_13__* %87)
  %89 = load i64, i64* %25, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i64*, i64** %17, align 8
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %91, %81
  br label %94

94:                                               ; preds = %93, %76, %72, %69
  %95 = load i8*, i8** %14, align 8
  %96 = call i64 @svn_path_is_url(i8* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %133, label %98

98:                                               ; preds = %94
  %99 = load i8*, i8** %22, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = call i64 @strcmp(i8* %99, i8* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load i32*, i32** %21, align 8
  %105 = call i32* @apr_hash_make(i32* %104)
  %106 = load i32**, i32*** %12, align 8
  store i32* %105, i32** %106, align 8
  %107 = load i32*, i32** %21, align 8
  %108 = load i32*, i32** %23, align 8
  %109 = call i32* @apr_hash_first(i32* %107, i32* %108)
  store i32* %109, i32** %26, align 8
  br label %110

110:                                              ; preds = %129, %103
  %111 = load i32*, i32** %26, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %132

113:                                              ; preds = %110
  %114 = load i32*, i32** %26, align 8
  %115 = call i8* @apr_hash_this_key(i32* %114)
  store i8* %115, i8** %27, align 8
  %116 = load i32*, i32** %26, align 8
  %117 = call i32* @apr_hash_this_val(i32* %116)
  store i32* %117, i32** %28, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i8*, i8** %22, align 8
  %120 = load i8*, i8** %27, align 8
  %121 = call i32 @svn_dirent_skip_ancestor(i8* %119, i8* %120)
  %122 = load i32*, i32** %21, align 8
  %123 = call i8* @svn_dirent_join(i8* %118, i32 %121, i32* %122)
  store i8* %123, i8** %29, align 8
  %124 = load i32**, i32*** %12, align 8
  %125 = load i32*, i32** %124, align 8
  %126 = load i8*, i8** %29, align 8
  %127 = load i32*, i32** %28, align 8
  %128 = call i32 @svn_hash_sets(i32* %125, i8* %126, i32* %127)
  br label %129

129:                                              ; preds = %113
  %130 = load i32*, i32** %26, align 8
  %131 = call i32* @apr_hash_next(i32* %130)
  store i32* %131, i32** %26, align 8
  br label %110

132:                                              ; preds = %110
  br label %136

133:                                              ; preds = %98, %94
  %134 = load i32*, i32** %23, align 8
  %135 = load i32**, i32*** %12, align 8
  store i32* %134, i32** %135, align 8
  br label %136

136:                                              ; preds = %133, %132
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %137, %struct.TYPE_13__** %11, align 8
  br label %138

138:                                              ; preds = %136, %60
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  ret %struct.TYPE_13__* %139
}

declare dso_local i64 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_client_propget4(i32**, i8*, i8*, i32*, i32*, i64*, i32, i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local %struct.TYPE_13__* @svn_wc__node_is_added(i64*, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
