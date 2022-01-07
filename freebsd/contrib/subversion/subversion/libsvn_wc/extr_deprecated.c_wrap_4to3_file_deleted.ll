; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_file_deleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_wrap_4to3_file_deleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_callbacks3_wrapper_baton = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32* (i32*, i32*, i32*, i32, i8*, i8*, i8*, i8*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i32*)* @wrap_4to3_file_deleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wrap_4to3_file_deleted(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.diff_callbacks3_wrapper_baton*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load i8*, i8** %19, align 8
  %25 = bitcast i8* %24 to %struct.diff_callbacks3_wrapper_baton*
  store %struct.diff_callbacks3_wrapper_baton* %25, %struct.diff_callbacks3_wrapper_baton** %21, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32*, i32** %20, align 8
  %28 = call i8* @svn_relpath_dirname(i8* %26, i32* %27)
  store i8* %28, i8** %23, align 8
  %29 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %21, align 8
  %30 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %21, align 8
  %33 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %23, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = call i32 @svn_dirent_join(i32 %34, i8* %35, i32* %36)
  %38 = load i32*, i32** %20, align 8
  %39 = call i32* @svn_wc__adm_retrieve_internal2(i32 %31, i32 %37, i32* %38)
  store i32* %39, i32** %22, align 8
  %40 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %21, align 8
  %41 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32* (i32*, i32*, i32*, i32, i8*, i8*, i8*, i8*, i32*, i32)*, i32* (i32*, i32*, i32*, i32, i8*, i8*, i8*, i8*, i32*, i32)** %43, align 8
  %45 = load i32*, i32** %22, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %21, align 8
  %49 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i32*, i32** %20, align 8
  %53 = call i32 @svn_dirent_join(i32 %50, i8* %51, i32* %52)
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %15, align 8
  %56 = load i8*, i8** %16, align 8
  %57 = load i8*, i8** %17, align 8
  %58 = load i32*, i32** %18, align 8
  %59 = load %struct.diff_callbacks3_wrapper_baton*, %struct.diff_callbacks3_wrapper_baton** %21, align 8
  %60 = getelementptr inbounds %struct.diff_callbacks3_wrapper_baton, %struct.diff_callbacks3_wrapper_baton* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32* %44(i32* %45, i32* %46, i32* %47, i32 %53, i8* %54, i8* %55, i8* %56, i8* %57, i32* %58, i32 %61)
  ret i32* %62
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
