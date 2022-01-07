; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__canonicalize_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_props.c_svn_wc__canonicalize_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getter_baton = type { i8*, i32* }

@SVN_PROP_MIME_TYPE = common dso_local global i8* null, align 8
@get_file_for_validation = common dso_local global i32* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__canonicalize_props(i32** %0, i8* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.getter_baton, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32* @apr_hash_make(i32* %20)
  %22 = load i32**, i32*** %8, align 8
  store i32* %21, i32** %22, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i8*, i8** @SVN_PROP_MIME_TYPE, align 8
  %25 = call i32* @svn_hash_gets(i32* %23, i8* %24)
  store i32* %25, i32** %15, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %7
  %29 = load i8*, i8** @SVN_PROP_MIME_TYPE, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_wc_canonicalize_svn_prop(i32** %15, i8* %29, i32* %30, i8* %31, i32 %32, i32 %33, i32* null, %struct.getter_baton* null, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i32**, i32*** %8, align 8
  %38 = load i32*, i32** %37, align 8
  %39 = load i8*, i8** @SVN_PROP_MIME_TYPE, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = call i32 @svn_hash_sets(i32* %38, i8* %39, i32* %40)
  br label %42

42:                                               ; preds = %28, %7
  %43 = load i32*, i32** %15, align 8
  %44 = getelementptr inbounds %struct.getter_baton, %struct.getter_baton* %16, i32 0, i32 1
  store i32* %43, i32** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds %struct.getter_baton, %struct.getter_baton* %16, i32 0, i32 0
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = call i32* @apr_hash_first(i32* %47, i32* %48)
  store i32* %49, i32** %17, align 8
  br label %50

50:                                               ; preds = %81, %42
  %51 = load i32*, i32** %17, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = load i32*, i32** %17, align 8
  %55 = call i8* @apr_hash_this_key(i32* %54)
  store i8* %55, i8** %18, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32* @apr_hash_this_val(i32* %56)
  store i32* %57, i32** %19, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load i8*, i8** @SVN_PROP_MIME_TYPE, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %81

63:                                               ; preds = %53
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @ensure_prop_is_regular_kind(i8* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %18, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** @get_file_for_validation, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @svn_wc_canonicalize_svn_prop(i32** %19, i8* %67, i32* %68, i8* %69, i32 %70, i32 %71, i32* %72, %struct.getter_baton* %16, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32**, i32*** %8, align 8
  %77 = load i32*, i32** %76, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = call i32 @svn_hash_sets(i32* %77, i8* %78, i32* %79)
  br label %81

81:                                               ; preds = %63, %62
  %82 = load i32*, i32** %17, align 8
  %83 = call i32* @apr_hash_next(i32* %82)
  store i32* %83, i32** %17, align 8
  br label %50

84:                                               ; preds = %50
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_canonicalize_svn_prop(i32**, i8*, i32*, i8*, i32, i32, i32*, %struct.getter_baton*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ensure_prop_is_regular_kind(i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
