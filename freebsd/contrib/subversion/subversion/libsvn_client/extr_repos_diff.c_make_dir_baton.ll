; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_make_dir_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_make_dir_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, i32, i32, i32, i32*, i8*, i8*, i8*, i32, %struct.edit_baton*, %struct.dir_baton* }
%struct.edit_baton = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dir_baton* (i8*, %struct.dir_baton*, %struct.edit_baton*, i32, i32, i32*)* @make_dir_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dir_baton* @make_dir_baton(i8* %0, %struct.dir_baton* %1, %struct.edit_baton* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dir_baton*, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dir_baton*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %8, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i32*, i32** %12, align 8
  %16 = call i32* @svn_pool_create(i32* %15)
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call %struct.dir_baton* @apr_pcalloc(i32* %17, i32 72)
  store %struct.dir_baton* %18, %struct.dir_baton** %14, align 8
  %19 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %21 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %20, i32 0, i32 10
  store %struct.dir_baton* %19, %struct.dir_baton** %21, align 8
  %22 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %23 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %24 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %23, i32 0, i32 9
  store %struct.edit_baton* %22, %struct.edit_baton** %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %27 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %26, i32 0, i32 8
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %30 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @FALSE, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 6
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @FALSE, align 8
  %35 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %36 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %39 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %38, i32 0, i32 4
  store i32* %37, i32** %39, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @apr_pstrdup(i32* %40, i8* %41)
  %43 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %44 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @apr_array_make(i32* %45, i32 8, i32 4)
  %47 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %48 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %51 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %53 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %57 = icmp ne %struct.dir_baton* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %6
  %59 = load %struct.dir_baton*, %struct.dir_baton** %8, align 8
  %60 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %58, %6
  %64 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  ret %struct.dir_baton* %64
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.dir_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
