; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos__validate_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos__validate_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_prop_regular_kind = common dso_local global i64 0, align 8
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [125 x i8] c"Storage of non-regular property '%s' is disallowed through the repository interface, and could indicate a bug in your client\00", align 1
@SVN_ERR_BAD_PROPERTY_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Cannot accept '%s' property because it is not encoded in UTF-8\00", align 1
@SVN_ERR_BAD_PROPERTY_VALUE_EOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Cannot accept non-LF line endings in '%s' property\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid property value\00", align 1
@SVN_PROP_REVISION_DATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__validate_prop(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @svn_property_kind2(i8* %12)
  store i64 %13, i64* %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %4, align 8
  br label %89

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @svn_prop_regular_kind, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %24 = call i32* @_(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @svn_error_createf(i32 %23, i32* null, i32* %24, i8* %25)
  store i32* %26, i32** %4, align 8
  br label %89

27:                                               ; preds = %18
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @svn_prop_is_svn_prop(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %87

31:                                               ; preds = %27
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %87

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @svn_prop_needs_translation(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %34
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @svn_utf__is_valid(i32 %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @SVN_ERR_BAD_PROPERTY_VALUE, align 4
  %49 = call i32* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %5, align 8
  %51 = call i32* @svn_error_createf(i32 %48, i32* null, i32* %49, i8* %50)
  store i32* %51, i32** %4, align 8
  br label %89

52:                                               ; preds = %38
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @strchr(i32 %55, i8 signext 13)
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* @SVN_ERR_BAD_PROPERTY_VALUE_EOL, align 4
  %60 = call i32* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i8*, i8** %5, align 8
  %62 = call i32* @svn_error_createf(i32 %59, i32* null, i32* %60, i8* %61)
  store i32* %62, i32** %9, align 8
  %63 = load i32, i32* @SVN_ERR_BAD_PROPERTY_VALUE, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = call i32* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32* @svn_error_create(i32 %63, i32* %64, i32* %65)
  store i32* %66, i32** %4, align 8
  br label %89

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %34
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @SVN_PROP_REVISION_DATE, align 4
  %71 = call i64 @strcmp(i8* %69, i32 %70)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32* @svn_time_from_cstring(i32* %10, i32 %76, i32* %77)
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* @SVN_ERR_BAD_PROPERTY_VALUE, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = call i32* @svn_error_create(i32 %82, i32* %83, i32* null)
  store i32* %84, i32** %4, align 8
  br label %89

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %68
  br label %87

87:                                               ; preds = %86, %31, %27
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %87, %81, %58, %47, %22, %16
  %90 = load i32*, i32** %4, align 8
  ret i32* %90
}

declare dso_local i64 @svn_property_kind2(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32*, i8*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i64 @svn_prop_is_svn_prop(i8*) #1

declare dso_local i64 @svn_prop_needs_translation(i8*) #1

declare dso_local i32 @svn_utf__is_valid(i32, i32) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_time_from_cstring(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
