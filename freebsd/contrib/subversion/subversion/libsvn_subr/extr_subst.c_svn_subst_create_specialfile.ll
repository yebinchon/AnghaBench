; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_create_specialfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_create_specialfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.special_stream_baton = type { i32, i32, i32*, i32 }

@write_handler_special = common dso_local global i32 0, align 4
@close_handler_special = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_create_specialfile(i32** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.special_stream_baton*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call %struct.special_stream_baton* @apr_palloc(i32* %10, i32 24)
  store %struct.special_stream_baton* %11, %struct.special_stream_baton** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @apr_pstrdup(i32* %12, i8* %13)
  %15 = load %struct.special_stream_baton*, %struct.special_stream_baton** %9, align 8
  %16 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.special_stream_baton*, %struct.special_stream_baton** %9, align 8
  %19 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @svn_stringbuf_create_empty(i32* %20)
  %22 = load %struct.special_stream_baton*, %struct.special_stream_baton** %9, align 8
  %23 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.special_stream_baton*, %struct.special_stream_baton** %9, align 8
  %25 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 @svn_stream_from_stringbuf(i32 %26, i32* %27)
  %29 = load %struct.special_stream_baton*, %struct.special_stream_baton** %9, align 8
  %30 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.special_stream_baton*, %struct.special_stream_baton** %9, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @svn_stream_create(%struct.special_stream_baton* %31, i32* %32)
  %34 = load i32**, i32*** %5, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @write_handler_special, align 4
  %38 = call i32 @svn_stream_set_write(i32* %36, i32 %37)
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* @close_handler_special, align 4
  %42 = call i32 @svn_stream_set_close(i32* %40, i32 %41)
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %43
}

declare dso_local %struct.special_stream_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stream_from_stringbuf(i32, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.special_stream_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
