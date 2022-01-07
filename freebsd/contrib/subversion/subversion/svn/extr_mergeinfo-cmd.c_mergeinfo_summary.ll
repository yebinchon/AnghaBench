; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_mergeinfo-cmd.c_mergeinfo_summary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_mergeinfo-cmd.c_mergeinfo_summary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@svn_opt_revision_unspecified = common dso_local global i64 0, align 8
@svn_opt_revision_working = common dso_local global i64 0, align 8
@svn_opt_revision_base = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__*, i32*, i32*)* @mergeinfo_summary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mergeinfo_summary(i8* %0, %struct.TYPE_6__* %1, i8* %2, %struct.TYPE_6__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @svn_path_is_url(i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %6
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @svn_opt_revision_unspecified, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @svn_opt_revision_working, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @svn_opt_revision_base, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %39, %33, %27
  %46 = phi i1 [ true, %33 ], [ true, %27 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %6
  %48 = phi i1 [ false, %6 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %22, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = call i32 @svn_client_get_merging_summary(i32* %23, i8** %13, i32* %17, i8** %14, i32* %18, i8** %15, i32* %19, i8** %16, i32* %20, i8** %21, i8* %50, %struct.TYPE_6__* %51, i8* %52, %struct.TYPE_6__* %53, i32* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i8*, i8** %21, align 8
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %23, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @mergeinfo_diagram(i8* %59, i8* %60, i8* %61, i8* %62, i32 %63, i32 %64, i32 %65, i32 %66, i8* %67, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %73
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_get_merging_summary(i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i32*, i8**, i8*, %struct.TYPE_6__*, i8*, %struct.TYPE_6__*, i32*, i32*, i32*) #1

declare dso_local i32 @mergeinfo_diagram(i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
