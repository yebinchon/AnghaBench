; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_stream_from_specialfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_subst.c_svn_subst_stream_from_specialfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.special_stream_baton = type { i32, i32, i32*, i32, i32* }

@read_handler_special = common dso_local global i32 0, align 4
@write_handler_special = common dso_local global i32 0, align 4
@close_handler_special = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @svn_subst_stream_from_specialfile(i32** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.special_stream_baton*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = call %struct.special_stream_baton* @apr_palloc(i32* %9, i32 32)
  store %struct.special_stream_baton* %10, %struct.special_stream_baton** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %13 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %12, i32 0, i32 4
  store i32* %11, i32** %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @apr_pstrdup(i32* %14, i8* %15)
  %17 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %18 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %20 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %19, i32 0, i32 2
  %21 = load i8*, i8** %5, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_6__* @svn_subst_read_specialfile(i32** %20, i8* %21, i32* %22, i32* %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @APR_STATUS_IS_ENOENT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = call i32 @svn_error_clear(%struct.TYPE_6__* %34)
  %36 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %37 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %33, %27, %3
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @svn_stringbuf_create_empty(i32* %39)
  %41 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %42 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %44 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @svn_stream_from_stringbuf(i32 %45, i32* %46)
  %48 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %49 = getelementptr inbounds %struct.special_stream_baton, %struct.special_stream_baton* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.special_stream_baton*, %struct.special_stream_baton** %7, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32* @svn_stream_create(%struct.special_stream_baton* %50, i32* %51)
  %53 = load i32**, i32*** %4, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32**, i32*** %4, align 8
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @read_handler_special, align 4
  %57 = call i32 @svn_stream_set_read2(i32* %55, i32* null, i32 %56)
  %58 = load i32**, i32*** %4, align 8
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* @write_handler_special, align 4
  %61 = call i32 @svn_stream_set_write(i32* %59, i32 %60)
  %62 = load i32**, i32*** %4, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @close_handler_special, align 4
  %65 = call i32 @svn_stream_set_close(i32* %63, i32 %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_6__* %66
}

declare dso_local %struct.special_stream_baton* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_6__* @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_6__*) #1

declare dso_local i32 @svn_stringbuf_create_empty(i32*) #1

declare dso_local i32 @svn_stream_from_stringbuf(i32, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.special_stream_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
