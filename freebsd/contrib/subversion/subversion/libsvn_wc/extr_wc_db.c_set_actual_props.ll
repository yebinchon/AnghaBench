; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_set_actual_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_set_actual_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_UPDATE_ACTUAL_PROPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_DELETE_ACTUAL_EMPTY = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@STMT_INSERT_ACTUAL_PROPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32*, i32*)* @set_actual_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @set_actual_props(%struct.TYPE_3__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @STMT_UPDATE_ACTUAL_PROPS, align 4
  %16 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %14, i32 %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i32*, i32** %10, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @svn_sqlite__bindf(i32* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_sqlite__bind_properties(i32* %25, i32 3, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @svn_sqlite__update(i32* %11, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %63, label %38

38:                                               ; preds = %35, %4
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @STMT_DELETE_ACTUAL_EMPTY, align 4
  %49 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %47, i32 %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %10, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @svn_sqlite__bindf(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %54, i8* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @svn_sqlite__step_done(i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %44, %41, %38
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %5, align 8
  br label %97

63:                                               ; preds = %35
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @STMT_INSERT_ACTUAL_PROPS, align 4
  %68 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %66, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @svn_sqlite__bindf(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %73, i8* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i8*, i8** %7, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %63
  %82 = load i32*, i32** %10, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 @svn_relpath_dirname(i8* %83, i32* %84)
  %86 = call i32 @svn_sqlite__bind_text(i32* %82, i32 3, i32 %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %88

88:                                               ; preds = %81, %63
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @svn_sqlite__bind_properties(i32* %89, i32 4, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @svn_sqlite__step_done(i32* %94)
  %96 = call i32* @svn_error_trace(i32 %95)
  store i32* %96, i32** %5, align 8
  br label %97

97:                                               ; preds = %88, %61
  %98 = load i32*, i32** %5, align 8
  ret i32* %98
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_sqlite__bind_text(i32*, i32, i32) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
