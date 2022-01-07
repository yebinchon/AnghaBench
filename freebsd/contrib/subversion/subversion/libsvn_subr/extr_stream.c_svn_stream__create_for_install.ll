; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream__create_for_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_stream.c_svn_stream__create_for_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.install_baton_t* }
%struct.install_baton_t = type { i8*, %struct.baton_apr }
%struct.baton_apr = type { i32 }

@svn_io_file_del_none = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@install_close = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_BINARY = common dso_local global i32 0, align 4
@APR_BUFFERED = common dso_local global i32 0, align 4
@APR_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_stream__create_for_install(%struct.TYPE_5__** %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.install_baton_t*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @svn_dirent_is_absolute(i8* %12)
  %14 = call i32 @SVN_ERR_ASSERT(i32 %13)
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @svn_io_file_del_none, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @svn_io_open_unique_file3(i32** %9, i8** %11, i8* %15, i32 %16, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @FALSE, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.TYPE_5__* @svn_stream__from_aprfile(i32* %21, i32 %22, i32 %23, i32* %24)
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %26, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.install_baton_t* @apr_pcalloc(i32* %27, i32 16)
  store %struct.install_baton_t* %28, %struct.install_baton_t** %10, align 8
  %29 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %30 = getelementptr inbounds %struct.install_baton_t, %struct.install_baton_t* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.install_baton_t*, %struct.install_baton_t** %33, align 8
  %35 = bitcast %struct.install_baton_t* %34 to %struct.baton_apr*
  %36 = bitcast %struct.baton_apr* %30 to i8*
  %37 = bitcast %struct.baton_apr* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %39 = getelementptr inbounds %struct.install_baton_t, %struct.install_baton_t* %38, i32 0, i32 1
  %40 = bitcast %struct.baton_apr* %39 to i8*
  %41 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %42 = bitcast %struct.install_baton_t* %41 to i8*
  %43 = icmp eq i8* %40, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %47 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.install_baton_t* %46, %struct.install_baton_t** %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.install_baton_t*, %struct.install_baton_t** %10, align 8
  %52 = getelementptr inbounds %struct.install_baton_t, %struct.install_baton_t* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* @install_close, align 4
  %56 = call i32 @svn_stream_set_close(%struct.TYPE_5__* %54, i32 %55)
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %57
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @svn_stream__from_aprfile(i32*, i32, i32, i32*) #1

declare dso_local %struct.install_baton_t* @apr_pcalloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_stream_set_close(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
