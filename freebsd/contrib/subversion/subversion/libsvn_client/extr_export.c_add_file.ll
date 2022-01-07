; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { %struct.edit_baton* }
%struct.edit_baton = type { i32, i32, i32 }
%struct.file_baton = type { i8*, i8*, i32*, i32, %struct.edit_baton* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.dir_baton*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca %struct.file_baton*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = bitcast i8* %18 to %struct.dir_baton*
  store %struct.dir_baton* %19, %struct.dir_baton** %13, align 8
  %20 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %21 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %20, i32 0, i32 0
  %22 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  store %struct.edit_baton* %22, %struct.edit_baton** %14, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call %struct.file_baton* @apr_pcalloc(i32* %23, i32 40)
  store %struct.file_baton* %24, %struct.file_baton** %15, align 8
  %25 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %26 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i8* @svn_dirent_join(i32 %27, i8* %28, i32* %29)
  store i8* %30, i8** %16, align 8
  %31 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %32 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i8* @svn_path_url_add_component2(i32 %33, i8* %34, i32* %35)
  store i8* %36, i8** %17, align 8
  %37 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %38 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %39 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %38, i32 0, i32 4
  store %struct.edit_baton* %37, %struct.edit_baton** %39, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %45 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %47 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %50 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %53 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %55 = bitcast %struct.file_baton* %54 to i8*
  %56 = load i8**, i8*** %12, align 8
  store i8* %55, i8** %56, align 8
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local %struct.file_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
