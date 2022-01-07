; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc__acquire_write_lock_for_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc__acquire_write_lock_for_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8** %0, %struct.TYPE_5__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i8*, i8** %8, align 8
  store i8* %17, i8** %13, align 8
  br label %18

18:                                               ; preds = %72, %5
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @svn_wc__acquire_write_lock(i8** %12, %struct.TYPE_5__* %23, i8* %24, i64 %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @svn_wc__required_lock_for_resolve(i8** %14, i32 %33, i8* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i8* @svn_dirent_skip_ancestor(i8* %39, i8* %40)
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %22
  %45 = load i8*, i8** %15, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @svn_wc__release_write_lock(%struct.TYPE_5__* %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i8*, i8** %14, align 8
  store i8* %57, i8** %13, align 8
  br label %72

58:                                               ; preds = %44, %22
  %59 = load i8*, i8** %14, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @strcmp(i8* %59, i8* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i8*, i8** %12, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i8* @svn_dirent_skip_ancestor(i8* %64, i8* %65)
  %67 = icmp ne i8* %66, null
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ true, %58 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @SVN_ERR_ASSERT(i32 %70)
  br label %72

72:                                               ; preds = %68, %50
  br label %18

73:                                               ; preds = %18
  %74 = load i32*, i32** %9, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i8* @apr_pstrdup(i32* %74, i8* %75)
  %77 = load i8**, i8*** %6, align 8
  store i8* %76, i8** %77, align 8
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__acquire_write_lock(i8**, %struct.TYPE_5__*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc__required_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_wc__release_write_lock(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
