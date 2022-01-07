; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt_parse_revprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt_parse_revprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_CL_ARG_PARSING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Revision property pair is empty\00", align 1
@SVN_ERR_CLIENT_PROPERTY_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"'%s' is not a valid Subversion property name\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_opt_parse_revprop(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @SVN_ERR_CL_ARG_PARSING_ERROR, align 4
  %16 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = call i32* @svn_error_create(i32 %15, i32* null, i32 %16)
  store i32* %17, i32** %4, align 8
  br label %72

18:                                               ; preds = %3
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %7, align 8
  %24 = call i32* @apr_hash_make(i32* %23)
  %25 = load i32**, i32*** %5, align 8
  store i32* %24, i32** %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 61)
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @apr_pstrndup(i32* %32, i8* %33, i32 %39)
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @svn_utf_cstring_to_utf8(i8** %9, i8* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @svn_string_create(i8* %46, i32* %47)
  store i32* %48, i32** %10, align 8
  br label %56

49:                                               ; preds = %26
  %50 = load i8*, i8** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @svn_utf_cstring_to_utf8(i8** %9, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @svn_string_create_empty(i32* %54)
  store i32* %55, i32** %10, align 8
  br label %56

56:                                               ; preds = %49, %31
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @svn_prop_name_is_valid(i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* @SVN_ERR_CLIENT_PROPERTY_NAME, align 4
  %62 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i8*, i8** %9, align 8
  %64 = call i32* @svn_error_createf(i32 %61, i32* null, i32 %62, i8* %63)
  store i32* %64, i32** %4, align 8
  br label %72

65:                                               ; preds = %56
  %66 = load i32**, i32*** %5, align 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @svn_hash_sets(i32* %67, i8* %68, i32* %69)
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %4, align 8
  br label %72

72:                                               ; preds = %65, %60, %14
  %73 = load i32*, i32** %4, align 8
  ret i32* %73
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrndup(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_utf_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32* @svn_string_create(i8*, i32*) #1

declare dso_local i32* @svn_string_create_empty(i32*) #1

declare dso_local i32 @svn_prop_name_is_valid(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
