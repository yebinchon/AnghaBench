; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_debug_editor.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32*)* }
%struct.dir_baton = type { i8*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"open_root : %ld\0A\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_root(i8* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.edit_baton*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.edit_baton*
  store %struct.edit_baton* %12, %struct.edit_baton** %9, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call %struct.dir_baton* @apr_palloc(i32* %13, i32 16)
  store %struct.dir_baton* %14, %struct.dir_baton** %10, align 8
  %15 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @write_indent(%struct.edit_baton* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %20 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @svn_stream_printf(i32 %21, i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %31 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, i32*, i32*)*, i32 (i32, i32, i32*, i32*)** %33, align 8
  %35 = load %struct.edit_baton*, %struct.edit_baton** %9, align 8
  %36 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %41 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %40, i32 0, i32 1
  %42 = call i32 %34(i32 %37, i32 %38, i32* %39, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %46 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %48 = bitcast %struct.dir_baton* %47 to i8*
  %49 = load i8**, i8*** %8, align 8
  store i8* %48, i8** %49, align 8
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
}

declare dso_local %struct.dir_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @write_indent(%struct.edit_baton*, i32*) #1

declare dso_local i32 @svn_stream_printf(i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
