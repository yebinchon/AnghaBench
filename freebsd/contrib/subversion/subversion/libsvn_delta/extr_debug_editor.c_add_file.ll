; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i32, i8*, i32, i32*, i32*)* }
%struct.file_baton = type { %struct.edit_baton*, i32 }

@.str = private unnamed_addr constant [33 x i8] c"add_file : '%s' [from '%s':%ld]\0A\00", align 1
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
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.dir_baton*
  store %struct.dir_baton* %17, %struct.dir_baton** %13, align 8
  %18 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %19 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %18, i32 0, i32 1
  %20 = load %struct.edit_baton*, %struct.edit_baton** %19, align 8
  store %struct.edit_baton* %20, %struct.edit_baton** %14, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call %struct.file_baton* @apr_palloc(i32* %21, i32 16)
  store %struct.file_baton* %22, %struct.file_baton** %15, align 8
  %23 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @write_indent(%struct.edit_baton* %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %28 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %11, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @svn_stream_printf(i32 %29, i32* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32, i32 %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %37 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %41 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i8*, i32, i8*, i32, i32*, i32*)*, i32 (i8*, i32, i8*, i32, i32*, i32*)** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.dir_baton*, %struct.dir_baton** %13, align 8
  %47 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %53 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %52, i32 0, i32 1
  %54 = call i32 %44(i8* %45, i32 %48, i8* %49, i32 %50, i32* %51, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %57 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %58 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %57, i32 0, i32 0
  store %struct.edit_baton* %56, %struct.edit_baton** %58, align 8
  %59 = load %struct.file_baton*, %struct.file_baton** %15, align 8
  %60 = bitcast %struct.file_baton* %59 to i8*
  %61 = load i8**, i8*** %12, align 8
  store i8* %60, i8** %61, align 8
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %62
}

declare dso_local %struct.file_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_indent(%struct.edit_baton*, i32*) #1

declare dso_local i32 @svn_stream_printf(i32, i32*, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
