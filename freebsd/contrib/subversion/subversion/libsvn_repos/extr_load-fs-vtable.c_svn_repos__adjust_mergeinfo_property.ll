; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_svn_repos__adjust_mergeinfo_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_load-fs-vtable.c_svn_repos__adjust_mergeinfo_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@svn_repos_notify_load_normalized_mergeinfo = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__adjust_mergeinfo_property(%struct.TYPE_8__** %0, %struct.TYPE_8__* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32 (i8*, i32*, i32*)* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_8__**, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32 (i8*, i32*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_8__, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %11, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 (i8*, i32*, i32*)* %6, i32 (i8*, i32*, i32*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %25 = bitcast %struct.TYPE_8__* %21 to i8*
  %26 = bitcast %struct.TYPE_8__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @strstr(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %19, align 8
  %37 = call i32 @svn_subst_translate_cstring2(i8* %33, i8** %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32* null, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i8*, i8** %22, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %22, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %17, align 8
  %45 = icmp ne i32 (i8*, i32*, i32*)* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %31
  %47 = load i32, i32* @svn_repos_notify_load_normalized_mergeinfo, align 4
  %48 = load i32*, i32** %20, align 8
  %49 = call i32* @svn_repos_notify_create(i32 %47, i32* %48)
  store i32* %49, i32** %23, align 8
  %50 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %17, align 8
  %51 = load i8*, i8** %18, align 8
  %52 = load i32*, i32** %23, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = call i32 %50(i8* %51, i32* %52, i32* %53)
  br label %55

55:                                               ; preds = %46, %31
  br label %56

56:                                               ; preds = %55, %10
  %57 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32*, i32** %19, align 8
  %62 = call i32 @renumber_mergeinfo_revs(%struct.TYPE_8__** %57, %struct.TYPE_8__* %21, i32* %58, i32 %59, i32 %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %11, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = load i32*, i32** %19, align 8
  %72 = call i32 @prefix_mergeinfo_paths(%struct.TYPE_8__** %67, %struct.TYPE_8__* %69, i8* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %74

74:                                               ; preds = %66, %56
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strstr(i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_subst_translate_cstring2(i8*, i8**, i8*, i32, i32*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32* @svn_repos_notify_create(i32, i32*) #2

declare dso_local i32 @renumber_mergeinfo_revs(%struct.TYPE_8__**, %struct.TYPE_8__*, i32*, i32, i32, i32*) #2

declare dso_local i32 @prefix_mergeinfo_paths(%struct.TYPE_8__**, %struct.TYPE_8__*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
