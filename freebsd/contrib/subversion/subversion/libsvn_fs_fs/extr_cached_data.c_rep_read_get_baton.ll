; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_rep_read_get_baton.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_rep_read_get_baton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_read_baton = type { i32*, i64, i32*, i8*, i8*, i32, i64, i32, i32, i32, i32, i32*, i64, i32*, %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@svn_checksum_md5 = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.rep_read_baton**, i32*, %struct.TYPE_3__*, i32, i32*)* @rep_read_get_baton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_read_get_baton(%struct.rep_read_baton** %0, i32* %1, %struct.TYPE_3__* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.rep_read_baton**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rep_read_baton*, align 8
  store %struct.rep_read_baton** %0, %struct.rep_read_baton*** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %10, align 8
  %13 = call %struct.rep_read_baton* @apr_pcalloc(i32* %12, i32 112)
  store %struct.rep_read_baton* %13, %struct.rep_read_baton** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %16 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %15, i32 0, i32 15
  store i32* %14, i32** %16, align 8
  %17 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %18 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %17, i32 0, i32 14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = bitcast %struct.TYPE_3__* %18 to i8*
  %21 = bitcast %struct.TYPE_3__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 4 %21, i64 8, i1 false)
  %22 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %23 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %22, i32 0, i32 13
  store i32* null, i32** %23, align 8
  %24 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %25 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %24, i32 0, i32 12
  store i64 0, i64* %25, align 8
  %26 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %27 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %26, i32 0, i32 11
  store i32* null, i32** %27, align 8
  %28 = load i32, i32* @svn_checksum_md5, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_checksum_ctx_create(i32 %28, i32* %29)
  %31 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %32 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @FALSE, align 4
  %34 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %35 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %37 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @memcpy(i32 %38, i32 %41, i32 4)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %47 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %49 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %48, i32 0, i32 6
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %52 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i8* @svn_pool_create(i32* %53)
  %55 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %56 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = call i8* @svn_pool_create(i32* %57)
  %59 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %60 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  %61 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %62 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %64 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %66 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load %struct.rep_read_baton*, %struct.rep_read_baton** %11, align 8
  %68 = load %struct.rep_read_baton**, %struct.rep_read_baton*** %6, align 8
  store %struct.rep_read_baton* %67, %struct.rep_read_baton** %68, align 8
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %69
}

declare dso_local %struct.rep_read_baton* @apr_pcalloc(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @svn_pool_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
