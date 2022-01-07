; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_open3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_open3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }

@SVN_ERR_WC_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Working copy '%s' locked\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_adm_open3(%struct.TYPE_7__** %0, %struct.TYPE_7__* %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__**, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__** %0, %struct.TYPE_7__*** %10, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call i32 @svn_dirent_get_absolute(i8** %20, i8* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %20, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = call %struct.TYPE_7__* @get_from_shared(i8* %29, i32* %32, i32* %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %21, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %36 = icmp ne %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %24
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %39 = call i32 @IS_MISSING(%struct.TYPE_7__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @SVN_ERR_WC_LOCKED, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %12, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @svn_dirent_local_style(i8* %44, i32* %45)
  %47 = call i32* @svn_error_createf(i32 %42, i32* null, i32 %43, i32 %46)
  store i32* %47, i32** %9, align 8
  br label %75

48:                                               ; preds = %37, %24
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %18, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %19, align 4
  br label %63

55:                                               ; preds = %8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32*, i32** %17, align 8
  %59 = load i32*, i32** %17, align 8
  %60 = call i32 @svn_wc__db_open(i32** %18, i32* null, i32 %56, i32 %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %10, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = load i32*, i32** %18, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i8*, i8** %16, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = call i32 @open_all(%struct.TYPE_7__** %64, i8* %65, i32* %66, i32 %67, i32 %68, i32 %69, i32 %70, i8* %71, i32* %72)
  %74 = call i32* @svn_error_trace(i32 %73)
  store i32* %74, i32** %9, align 8
  br label %75

75:                                               ; preds = %63, %41
  %76 = load i32*, i32** %9, align 8
  ret i32* %76
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @get_from_shared(i8*, i32*, i32*) #1

declare dso_local i32 @IS_MISSING(%struct.TYPE_7__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_open(i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @open_all(%struct.TYPE_7__**, i8*, i32*, i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
