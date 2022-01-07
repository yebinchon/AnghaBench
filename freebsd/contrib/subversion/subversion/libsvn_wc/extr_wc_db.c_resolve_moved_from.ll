; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_resolve_moved_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_resolve_moved_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STMT_SELECT_MOVED_FROM_FOR_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.TYPE_3__*, i8*, i8*, i32, i32*, i32*)* @resolve_moved_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_moved_from(i8** %0, i32* %1, %struct.TYPE_3__* %2, i8* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  br label %25

25:                                               ; preds = %30, %8
  %26 = load i8*, i8** %14, align 8
  %27 = call i32 @relpath_depth(i8* %26)
  %28 = load i32, i32* %15, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i8*, i8** %14, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @svn_relpath_split(i8** %14, i8** %24, i8* %31, i32* %32)
  %34 = load i8*, i8** %18, align 8
  %35 = load i8*, i8** %24, align 8
  %36 = load i32*, i32** %17, align 8
  %37 = call i8* @svn_relpath_join(i8* %34, i8* %35, i32* %36)
  store i8* %37, i8** %18, align 8
  br label %25

38:                                               ; preds = %25
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STMT_SELECT_MOVED_FROM_FOR_DELETE, align 4
  %43 = call i32 @svn_sqlite__get_statement(i32** %19, i32 %41, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %19, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @svn_sqlite__bindf(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %19, align 8
  %53 = call i32 @svn_sqlite__step(i32* %23, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32, i32* %23, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %38
  %58 = load i8**, i8*** %10, align 8
  store i8* null, i8** %58, align 8
  %59 = load i32*, i32** %11, align 8
  store i32 -1, i32* %59, align 4
  %60 = load i32*, i32** %19, align 8
  %61 = call i32 @svn_sqlite__reset(i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %9, align 8
  br label %110

64:                                               ; preds = %38
  %65 = load i32*, i32** %19, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i8* @svn_sqlite__column_text(i32* %65, i32 0, i32* %66)
  store i8* %67, i8** %20, align 8
  %68 = load i32*, i32** %19, align 8
  %69 = call i32 @svn_sqlite__column_int(i32* %68, i32 1)
  store i32 %69, i32* %21, align 4
  %70 = load i32*, i32** %19, align 8
  %71 = call i32 @svn_sqlite__column_int(i32* %70, i32 2)
  store i32 %71, i32* %22, align 4
  %72 = load i32*, i32** %19, align 8
  %73 = call i32 @svn_sqlite__reset(i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %20, align 8
  %77 = call i32 @svn_relpath_skip_ancestor(i8* %75, i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %64
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = call i8* @svn_relpath_join(i8* %80, i8* %81, i32* %82)
  %84 = load i8**, i8*** %10, align 8
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %21, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %9, align 8
  br label %110

88:                                               ; preds = %64
  %89 = load i32, i32* %22, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %88
  %92 = load i8**, i8*** %10, align 8
  store i8* null, i8** %92, align 8
  %93 = load i32*, i32** %11, align 8
  store i32 -1, i32* %93, align 4
  %94 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %94, i32** %9, align 8
  br label %110

95:                                               ; preds = %88
  br label %96

96:                                               ; preds = %95
  %97 = load i8**, i8*** %10, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = load i32*, i32** %17, align 8
  %104 = call i8* @svn_relpath_join(i8* %101, i8* %102, i32* %103)
  %105 = load i32, i32* %22, align 4
  %106 = load i32*, i32** %16, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = call i32* @resolve_moved_from(i8** %97, i32* %98, %struct.TYPE_3__* %99, i8* %100, i8* %104, i32 %105, i32* %106, i32* %107)
  %109 = call i32* @svn_error_trace(i32* %108)
  store i32* %109, i32** %9, align 8
  br label %110

110:                                              ; preds = %96, %91, %79, %57
  %111 = load i32*, i32** %9, align 8
  ret i32* %111
}

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_relpath_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
