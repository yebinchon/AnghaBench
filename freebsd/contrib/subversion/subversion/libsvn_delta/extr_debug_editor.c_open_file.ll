; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i32, %struct.edit_baton* }
%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i8*, i32, i32, i32*, i32*)* }
%struct.file_baton = type { %struct.edit_baton*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"open_file : '%s':%ld\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca %struct.edit_baton*, align 8
  %13 = alloca %struct.file_baton*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.dir_baton*
  store %struct.dir_baton* %15, %struct.dir_baton** %11, align 8
  %16 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %17 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %16, i32 0, i32 1
  %18 = load %struct.edit_baton*, %struct.edit_baton** %17, align 8
  store %struct.edit_baton* %18, %struct.edit_baton** %12, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.file_baton* @apr_palloc(i32* %19, i32 16)
  store %struct.file_baton* %20, %struct.file_baton** %13, align 8
  %21 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @write_indent(%struct.edit_baton* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %26 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @svn_stream_printf(i32 %27, i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %29, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %34 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %38 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (i8*, i32, i32, i32*, i32*)*, i32 (i8*, i32, i32, i32*, i32*)** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %44 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %49 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %48, i32 0, i32 1
  %50 = call i32 %41(i8* %42, i32 %45, i32 %46, i32* %47, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.edit_baton*, %struct.edit_baton** %12, align 8
  %53 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %54 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %53, i32 0, i32 0
  store %struct.edit_baton* %52, %struct.edit_baton** %54, align 8
  %55 = load %struct.file_baton*, %struct.file_baton** %13, align 8
  %56 = bitcast %struct.file_baton* %55 to i8*
  %57 = load i8**, i8*** %10, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local %struct.file_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_indent(%struct.edit_baton*, i32*) #1

declare dso_local i32 @svn_stream_printf(i32, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
