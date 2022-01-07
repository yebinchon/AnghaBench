; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton_t = type { i8*, %struct.TYPE_2__*, i32, i32, i8* }
%struct.TYPE_2__ = type { i32 (i32*, i8**, i32*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_2__*, i32, i32)* }
%struct.dir_baton_t = type { i8*, i32, i8*, i8*, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root(i8* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.edit_baton_t*, align 8
  %10 = alloca %struct.dir_baton_t*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.edit_baton_t*
  store %struct.edit_baton_t* %12, %struct.edit_baton_t** %9, align 8
  %13 = load i8*, i8** @TRUE, align 8
  %14 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %15 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %14, i32 0, i32 4
  store i8* %13, i8** %15, align 8
  %16 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %19 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.dir_baton_t* @make_dir_baton(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, %struct.edit_baton_t* %16, i32 %17, i32 %20, i32* %21)
  store %struct.dir_baton_t* %22, %struct.dir_baton_t** %10, align 8
  %23 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %24 = bitcast %struct.dir_baton_t* %23 to i8*
  %25 = load i8**, i8*** %8, align 8
  store i8* %24, i8** %25, align 8
  %26 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %27 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %78

33:                                               ; preds = %4
  %34 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %35 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %38 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @svn_diff__source_create(i32 %36, i32 %39)
  %41 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %42 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %44 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %45 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @svn_diff__source_create(i32 %43, i32 %46)
  %48 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %49 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %51 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32*, i8**, i32*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_2__*, i32, i32)*, i32 (i32*, i8**, i32*, i8*, i8*, i8*, i32*, i32*, %struct.TYPE_2__*, i32, i32)** %53, align 8
  %55 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %56 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %55, i32 0, i32 5
  %57 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %58 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %57, i32 0, i32 0
  %59 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %60 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %59, i32 0, i32 4
  %61 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %62 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %65 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.edit_baton_t*, %struct.edit_baton_t** %9, align 8
  %68 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %71 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %74 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 %54(i32* %56, i8** %58, i32* %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %63, i8* %66, i32* null, i32* null, %struct.TYPE_2__* %69, i32 %72, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %82

78:                                               ; preds = %4
  %79 = load i8*, i8** @TRUE, align 8
  %80 = load %struct.dir_baton_t*, %struct.dir_baton_t** %10, align 8
  %81 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %33
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local %struct.dir_baton_t* @make_dir_baton(i8*, i32*, %struct.edit_baton_t*, i32, i32, i32*) #1

declare dso_local i8* @svn_diff__source_create(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
