; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_moved_from_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_moved_from_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_MOVED_FROM_RELPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8*, i32*, %struct.TYPE_3__*, i8*, i32*, i32*)* @get_moved_from_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_moved_from_info(i8** %0, i8** %1, i8* %2, i32* %3, %struct.TYPE_3__* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32* %3, i32** %13, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STMT_SELECT_MOVED_FROM_RELPATH, align 4
  %26 = call i32 @svn_sqlite__get_statement(i32** %18, i32 %24, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %18, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @svn_sqlite__bindf(i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %31, i8* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32*, i32** %18, align 8
  %36 = call i32 @svn_sqlite__step(i32* %19, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32, i32* %19, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %8
  %41 = load i8**, i8*** %10, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i8**, i8*** %10, align 8
  store i8* null, i8** %44, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i8**, i8*** %11, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8**, i8*** %11, align 8
  store i8* null, i8** %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i32*, i32** %18, align 8
  %52 = call i32 @svn_sqlite__reset(i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %9, align 8
  br label %114

55:                                               ; preds = %8
  %56 = load i32*, i32** %13, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32*, i32** %18, align 8
  %60 = call i32 @svn_sqlite__column_int(i32* %59, i32 1)
  %61 = load i32*, i32** %13, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i8**, i8*** %10, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i8**, i8*** %11, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %109

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %18, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = call i8* @svn_sqlite__column_text(i32* %69, i32 0, i32* %70)
  store i8* %71, i8** %20, align 8
  %72 = load i8**, i8*** %11, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i8*, i8** %20, align 8
  %76 = load i8**, i8*** %11, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i8**, i8*** %10, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = load i8*, i8** %15, align 8
  %83 = call i64 @strcmp(i8* %81, i8* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i8*, i8** %20, align 8
  %87 = load i8**, i8*** %10, align 8
  store i8* %86, i8** %87, align 8
  br label %107

88:                                               ; preds = %80
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = call i8* @svn_relpath_skip_ancestor(i8* %89, i8* %90)
  store i8* %91, i8** %21, align 8
  %92 = load i8*, i8** %21, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i8*, i8** %21, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = icmp sgt i64 %96, 0
  br label %98

98:                                               ; preds = %94, %88
  %99 = phi i1 [ false, %88 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @SVN_ERR_ASSERT(i32 %100)
  %102 = load i8*, i8** %20, align 8
  %103 = load i8*, i8** %21, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = call i8* @svn_relpath_join(i8* %102, i8* %103, i32* %104)
  %106 = load i8**, i8*** %10, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %98, %85
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108, %65
  %110 = load i32*, i32** %18, align 8
  %111 = call i32 @svn_sqlite__reset(i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %9, align 8
  br label %114

114:                                              ; preds = %109, %50
  %115 = load i32*, i32** %9, align 8
  ret i32* %115
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
