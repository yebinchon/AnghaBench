; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_dir_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_wrap_dir_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i32*, i8*, i32, i32, i32*)*, i32 (i32*, i32*, i8*, i32, i32*, i32*, i32, i32*)* }

@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_state_unknown = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, i8*, %struct.TYPE_7__*, i32*)* @wrap_dir_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_dir_added(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5, %struct.TYPE_7__* %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %17, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @svn_wc_notify_state_unknown, align 4
  store i32 %27, i32* %19, align 4
  %28 = load i32, i32* @svn_wc_notify_state_unknown, align 4
  store i32 %28, i32* %20, align 4
  %29 = load i32*, i32** %12, align 8
  store i32* %29, i32** %21, align 8
  store i32* null, i32** %22, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %63

32:                                               ; preds = %8
  %33 = load i32*, i32** %13, align 8
  %34 = call i64 @apr_hash_count(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %32
  %37 = load i32*, i32** %21, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32*, i32** %16, align 8
  %41 = call i32* @apr_hash_make(i32* %40)
  store i32* %41, i32** %21, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %13, align 8
  %44 = load i32*, i32** %21, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 @svn_prop_diffs(i32** %22, i32* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32 (i32*, i32*, i8*, i32, i32*, i32*, i32, i32*)*, i32 (i32*, i32*, i8*, i32, i32*, i32*, i32, i32*)** %51, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32*, i32** %22, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 %52(i32* %20, i32* %18, i8* %53, i32 %54, i32* %55, i32* %56, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %42, %32, %8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (i32*, i32*, i32*, i8*, i32, i32, i32*)*, i32 (i32*, i32*, i32*, i8*, i32, i32, i32*)** %67, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @TRUE, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 %68(i32* %19, i32* %20, i32* %18, i8* %69, i32 %70, i32 %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
