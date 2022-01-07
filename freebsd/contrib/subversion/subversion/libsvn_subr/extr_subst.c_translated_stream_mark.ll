; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_mark.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_translated_stream_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i8*, i8* }
%struct.translated_stream_baton = type { i32, i32, i32, i32, i32, i32, i32 }

@SVN__TRANSLATION_BUF_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32**, i32*)* @translated_stream_mark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @translated_stream_mark(i8* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.translated_stream_baton*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.translated_stream_baton*
  store %struct.translated_stream_baton* %10, %struct.translated_stream_baton** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call %struct.TYPE_5__* @apr_palloc(i32* %11, i32 48)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %7, align 8
  %13 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %14 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @svn_stream_mark(i32 %15, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %23 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @apr_pmemdup(i32* %21, i32 %24, i32 1)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i8* %25, i8** %28, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %31 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @apr_pmemdup(i32* %29, i32 %32, i32 1)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i8* %33, i8** %36, align 8
  %37 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %38 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  %43 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %44 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @svn_stringbuf_dup(i32 %45, i32* %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %52 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.translated_stream_baton*, %struct.translated_stream_baton** %8, align 8
  %59 = getelementptr inbounds %struct.translated_stream_baton, %struct.translated_stream_baton* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SVN__TRANSLATION_BUF_SIZE, align 4
  %62 = call i8* @apr_pmemdup(i32* %57, i32 %60, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = bitcast %struct.TYPE_5__* %66 to i32*
  %68 = load i32**, i32*** %5, align 8
  store i32* %67, i32** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local %struct.TYPE_5__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_mark(i32, i32*, i32*) #1

declare dso_local i8* @apr_pmemdup(i32*, i32, i32) #1

declare dso_local i32 @svn_stringbuf_dup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
