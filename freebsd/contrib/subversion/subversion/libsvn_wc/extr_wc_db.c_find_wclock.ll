; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_find_wclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_find_wclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_ANCESTOR_WCLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"iss\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_3__*, i8*, i32*, i32*)* @find_wclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_wclock(i8** %0, %struct.TYPE_3__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @relpath_depth(i8* %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @STMT_SELECT_ANCESTOR_WCLOCKS, align 4
  %25 = call i32 @svn_sqlite__get_statement(i32** %12, i32 %23, i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %5
  %32 = load i32*, i32** %11, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  %40 = call i8* @apr_pstrndup(i32* %32, i8* %33, i32 %39)
  store i8* %40, i8** %15, align 8
  br label %43

41:                                               ; preds = %5
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %15, align 8
  br label %43

43:                                               ; preds = %41, %31
  %44 = load i32*, i32** %12, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i32 @svn_sqlite__bindf(i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48, i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @svn_sqlite__step(i64* %13, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %88, %43
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %55
  %59 = load i32*, i32** %12, align 8
  %60 = call i8* @svn_sqlite__column_text(i32* %59, i32 0, i32* null)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i64 @svn_relpath_skip_ancestor(i8* %61, i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %58
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @svn_sqlite__column_int(i32* %66, i32 1)
  store i32 %67, i32* %17, align 4
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 @relpath_depth(i8* %68)
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %14, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72, %65
  %79 = load i32*, i32** %10, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i8* @apr_pstrdup(i32* %79, i8* %80)
  %82 = load i8**, i8*** %7, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @svn_sqlite__reset(i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %6, align 8
  br label %97

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87, %58
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @svn_sqlite__step(i64* %13, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %55

92:                                               ; preds = %55
  %93 = load i8**, i8*** %7, align 8
  store i8* null, i8** %93, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @svn_sqlite__reset(i32* %94)
  %96 = call i32* @svn_error_trace(i32 %95)
  store i32* %96, i32** %6, align 8
  br label %97

97:                                               ; preds = %92, %78
  %98 = load i32*, i32** %6, align 8
  ret i32* %98
}

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrndup(i32*, i8*, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
