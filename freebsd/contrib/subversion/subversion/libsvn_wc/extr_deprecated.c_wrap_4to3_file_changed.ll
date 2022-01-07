; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_file_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_file_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* (i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i8*, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i8*, i32*)* @wrap_4to3_file_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_4to3_file_changed(i32* %0, i32* %1, i32* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, i8* %8, i8* %9, i32* %10, i32* %11, i8* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i8* %8, i8** %23, align 8
  store i8* %9, i8** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i8* %12, i8** %27, align 8
  store i32* %13, i32** %28, align 8
  %32 = load i8*, i8** %27, align 8
  %33 = bitcast i8* %32 to %struct.diff_callbacks3_wrapper_baton*
  store %struct.diff_callbacks3_wrapper_baton* %33, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = load i32*, i32** %28, align 8
  %36 = call i8* @svn_relpath_dirname(i8* %34, i32* %35)
  store i8* %36, i8** %31, align 8
  %37 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %38 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %41 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %31, align 8
  %44 = load i32*, i32** %28, align 8
  %45 = call i32 @svn_dirent_join(i32 %42, i8* %43, i32* %44)
  %46 = load i32*, i32** %28, align 8
  %47 = call i32* @svn_wc__adm_retrieve_internal2(i32 %39, i32 %45, i32* %46)
  store i32* %47, i32** %30, align 8
  %48 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %49 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32* (i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i32)*, i32* (i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32, i8*, i8*, i32*, i32*, i32)** %51, align 8
  %53 = load i32*, i32** %30, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %58 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %18, align 8
  %61 = load i32*, i32** %28, align 8
  %62 = call i32 @svn_dirent_join(i32 %59, i8* %60, i32* %61)
  %63 = load i8*, i8** %19, align 8
  %64 = load i8*, i8** %20, align 8
  %65 = load i32, i32* %21, align 4
  %66 = load i32, i32* %22, align 4
  %67 = load i8*, i8** %23, align 8
  %68 = load i8*, i8** %24, align 8
  %69 = load i32*, i32** %25, align 8
  %70 = load i32*, i32** %26, align 8
  %71 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %29, align 8
  %72 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32* %52(i32* %53, i32* %54, i32* %55, i32* %56, i32 %62, i8* %63, i8* %64, i32 %65, i32 %66, i8* %67, i8* %68, i32* %69, i32* %70, i32 %73)
  ret i32* %74
}

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
