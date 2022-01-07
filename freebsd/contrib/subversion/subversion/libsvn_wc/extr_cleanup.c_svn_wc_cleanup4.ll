; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_cleanup.c_svn_wc_cleanup4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_cleanup.c_svn_wc_cleanup4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_cleanup4(%struct.TYPE_3__* %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i32 @svn_dirent_is_absolute(i8* %24)
  %26 = call i32 @SVN_ERR_ASSERT(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @SVN_ERR_ASSERT(i32 %29)
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %11
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i8*, i8** %13, align 8
  %38 = load i32*, i32** %22, align 8
  %39 = call i32 @svn_wc__db_drop_root(i32* %36, i8* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %22, align 8
  %44 = load i32*, i32** %22, align 8
  %45 = call i32 @svn_wc__db_open(i32** %23, i32* null, i32 %41, i32 %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %51

47:                                               ; preds = %11
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %23, align 8
  br label %51

51:                                               ; preds = %47, %33
  %52 = load i32*, i32** %23, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %17, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i8*, i8** %19, align 8
  %59 = load i32*, i32** %22, align 8
  %60 = call i32 @cleanup_internal(i32* %52, i8* %53, i64 %54, i64 %55, i64 %56, i32 %57, i8* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %16, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %51
  %65 = load i32*, i32** %23, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = call i32 @svn_wc__db_base_clear_dav_cache_recursive(i32* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %64, %51
  %71 = load i64, i64* %17, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32*, i32** %23, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @svn_wc__db_vacuum(i32* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %73, %70
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %23, align 8
  %84 = call i32 @svn_wc__db_close(i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_drop_root(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_open(i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @cleanup_internal(i32*, i8*, i64, i64, i64, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_clear_dav_cache_recursive(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_vacuum(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
