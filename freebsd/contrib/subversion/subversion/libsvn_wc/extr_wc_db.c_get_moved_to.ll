; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_moved_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_get_moved_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i32*, i32*, i8*, i32*, i8*, i32*, i32*)* @get_moved_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_moved_to(i8** %0, i8** %1, i32* %2, i32* %3, i8* %4, i32* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i8* @svn_sqlite__column_text(i32* %22, i32 3, i32* null)
  store i8* %23, i8** %19, align 8
  %24 = load i8*, i8** %19, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %9
  %27 = load i8*, i8** %19, align 8
  store i8* %27, i8** %20, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = call i64 @strcmp(i8* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load i8*, i8** %14, align 8
  %34 = load i8*, i8** %16, align 8
  %35 = call i8* @svn_relpath_skip_ancestor(i8* %33, i8* %34)
  store i8* %35, i8** %21, align 8
  %36 = load i8*, i8** %21, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** %21, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = icmp sgt i64 %40, 0
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i1 [ false, %32 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @SVN_ERR_ASSERT(i32 %44)
  %46 = load i8*, i8** %20, align 8
  %47 = load i8*, i8** %21, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = call i8* @svn_relpath_join(i8* %46, i8* %47, i32* %48)
  store i8* %49, i8** %19, align 8
  br label %50

50:                                               ; preds = %42, %26
  %51 = load i8*, i8** %20, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load i8**, i8*** %11, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32*, i32** %17, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = call i8* @apr_pstrdup(i32* %57, i8* %58)
  %60 = load i8**, i8*** %11, align 8
  store i8* %59, i8** %60, align 8
  br label %61

61:                                               ; preds = %56, %53, %50
  %62 = load i8*, i8** %19, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i8**, i8*** %10, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32*, i32** %17, align 8
  %69 = load i8*, i8** %19, align 8
  %70 = call i8* @apr_pstrdup(i32* %68, i8* %69)
  %71 = load i8**, i8*** %10, align 8
  store i8* %70, i8** %71, align 8
  br label %72

72:                                               ; preds = %67, %64, %61
  %73 = load i32, i32* @FALSE, align 4
  %74 = load i32*, i32** %12, align 8
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %72, %9
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %76
}

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
