; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_queue_committed4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_ops.c_svn_wc_queue_committed4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_queue_committed4(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @svn_dirent_is_absolute(i8* %23)
  %25 = call i32 @SVN_ERR_ASSERT(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i32*, i32** %20, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = call i32 @svn_wc__db_get_wcroot(i8** %21, i32 %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %21, align 8
  %38 = call i32* @svn_hash_gets(i32 %36, i8* %37)
  store i32* %38, i32** %22, align 8
  %39 = load i32*, i32** %22, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %10
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %21, align 8
  %46 = call i8* @apr_pstrdup(i32 %44, i8* %45)
  store i8* %46, i8** %21, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %21, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %20, align 8
  %55 = call i32 @svn_wc__db_create_commit_queue(i32** %22, i32 %49, i8* %50, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %21, align 8
  %61 = load i32*, i32** %22, align 8
  %62 = call i32 @svn_hash_sets(i32 %59, i8* %60, i32* %61)
  br label %63

63:                                               ; preds = %41, %10
  %64 = load i32*, i32** %22, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32*, i32** %19, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @svn_wc__prop_array_to_hash(i32* %71, i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %20, align 8
  %80 = call i32 @svn_wc__db_commit_queue_add(i32* %64, i8* %65, i32 %66, i32 %67, i32 %68, i32 %69, i32* %70, i32 %75, i32 %78, i32* %79)
  %81 = call i32* @svn_error_trace(i32 %80)
  ret i32* %81
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_get_wcroot(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32, i8*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_wc__db_create_commit_queue(i32**, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__db_commit_queue_add(i32*, i8*, i32, i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__prop_array_to_hash(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
