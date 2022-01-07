; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__svnname_from_wirename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_property.c_svn_ra_serf__svnname_from_wirename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_DAV_PROP_NS_CUSTOM = common dso_local global i8* null, align 8
@SVN_DAV_PROP_NS_SVN = common dso_local global i8* null, align 8
@SVN_PROP_PREFIX = common dso_local global i8* null, align 8
@SVN_VA_NULL = common dso_local global i32 0, align 4
@SVN_DAV__VERSION_NAME = common dso_local global i8* null, align 8
@SVN_PROP_ENTRY_COMMITTED_REV = common dso_local global i8* null, align 8
@SVN_DAV__CREATIONDATE = common dso_local global i8* null, align 8
@SVN_PROP_ENTRY_COMMITTED_DATE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"creator-displayname\00", align 1
@SVN_PROP_ENTRY_LAST_AUTHOR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"repository-uuid\00", align 1
@SVN_PROP_ENTRY_UUID = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"lock-token\00", align 1
@SVN_PROP_ENTRY_LOCK_TOKEN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"checked-in\00", align 1
@SVN_RA_SERF__WC_CHECKED_IN_URL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"DAV:\00", align 1
@SVN_DAV_PROP_NS_DAV = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_ra_serf__svnname_from_wirename(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** @SVN_DAV_PROP_NS_CUSTOM, align 8
  %15 = call i64 @strcmp(i8* %13, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12, %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @apr_pstrdup(i32* %18, i8* %19)
  store i8* %20, i8** %4, align 8
  br label %97

21:                                               ; preds = %12
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** @SVN_DAV_PROP_NS_SVN, align 8
  %24 = call i64 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i8*, i8** @SVN_PROP_PREFIX, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @SVN_VA_NULL, align 4
  %31 = call i8* @apr_pstrcat(i32* %27, i8* %28, i8* %29, i32 %30)
  store i8* %31, i8** %4, align 8
  br label %97

32:                                               ; preds = %21
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** @SVN_PROP_PREFIX, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = load i8*, i8** @SVN_PROP_PREFIX, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @SVN_VA_NULL, align 4
  %42 = call i8* @apr_pstrcat(i32* %38, i8* %39, i8* %40, i32 %41)
  store i8* %42, i8** %4, align 8
  br label %97

43:                                               ; preds = %32
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** @SVN_DAV__VERSION_NAME, align 8
  %46 = call i64 @strcmp(i8* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i8*, i8** @SVN_PROP_ENTRY_COMMITTED_REV, align 8
  store i8* %49, i8** %4, align 8
  br label %97

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = load i8*, i8** @SVN_DAV__CREATIONDATE, align 8
  %53 = call i64 @strcmp(i8* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i8*, i8** @SVN_PROP_ENTRY_COMMITTED_DATE, align 8
  store i8* %56, i8** %4, align 8
  br label %97

57:                                               ; preds = %50
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i8*, i8** @SVN_PROP_ENTRY_LAST_AUTHOR, align 8
  store i8* %62, i8** %4, align 8
  br label %97

63:                                               ; preds = %57
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i8*, i8** @SVN_PROP_ENTRY_UUID, align 8
  store i8* %68, i8** %4, align 8
  br label %97

69:                                               ; preds = %63
  %70 = load i8*, i8** %6, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i8*, i8** @SVN_PROP_ENTRY_LOCK_TOKEN, align 8
  store i8* %74, i8** %4, align 8
  br label %97

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i8*, i8** @SVN_RA_SERF__WC_CHECKED_IN_URL, align 8
  store i8* %80, i8** %4, align 8
  br label %97

81:                                               ; preds = %75
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %5, align 8
  %87 = load i8*, i8** @SVN_DAV_PROP_NS_DAV, align 8
  %88 = call i64 @strcmp(i8* %86, i8* %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %81
  store i8* null, i8** %4, align 8
  br label %97

91:                                               ; preds = %85
  %92 = load i32*, i32** %7, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = load i32, i32* @SVN_VA_NULL, align 4
  %96 = call i8* @apr_pstrcat(i32* %92, i8* %93, i8* %94, i32 %95)
  store i8* %96, i8** %4, align 8
  br label %97

97:                                               ; preds = %91, %90, %79, %73, %67, %61, %55, %48, %37, %26, %17
  %98 = load i8*, i8** %4, align 8
  ret i8* %98
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
