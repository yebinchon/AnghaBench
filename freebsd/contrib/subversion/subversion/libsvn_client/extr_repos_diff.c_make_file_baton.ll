; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_make_file_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_make_file_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i32, i32, i32, i32*, i8*, i8*, i32, %struct.TYPE_2__*, %struct.dir_baton* }
%struct.TYPE_2__ = type { i32 }
%struct.dir_baton = type { i32, %struct.TYPE_2__* }

@FALSE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_baton* (i8*, %struct.dir_baton*, i32, i32*)* @make_file_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_baton* @make_file_baton(i8* %0, %struct.dir_baton* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dir_baton*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dir_baton* %1, %struct.dir_baton** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = call i32* @svn_pool_create(i32* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call %struct.file_baton* @apr_pcalloc(i32* %13, i32 64)
  store %struct.file_baton* %14, %struct.file_baton** %10, align 8
  %15 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %16 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %17 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %16, i32 0, i32 8
  store %struct.dir_baton* %15, %struct.dir_baton** %17, align 8
  %18 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %22 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %21, i32 0, i32 7
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %25 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @FALSE, align 8
  %27 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %28 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** @FALSE, align 8
  %30 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %31 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %34 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %33, i32 0, i32 3
  store i32* %32, i32** %34, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @apr_pstrdup(i32* %35, i8* %36)
  %38 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %39 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @apr_array_make(i32* %40, i32 8, i32 4)
  %42 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %43 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %45 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  %50 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dir_baton*, %struct.dir_baton** %6, align 8
  %52 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load %struct.file_baton*, %struct.file_baton** %10, align 8
  ret %struct.file_baton* %55
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
