; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_svn_branch__compat_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_branch_compat.c_svn_branch__compat_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i32, %struct.TYPE_14__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_branch__compat_fetch(%struct.TYPE_12__** %0, %struct.TYPE_14__* %1, i64 %2, i64 %3, i32 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_12__**, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__, align 8
  %18 = alloca i32, align 4
  %19 = bitcast %struct.TYPE_13__* %10 to { i64, i64 }*
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  store i64 %2, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  store i64 %3, i64* %21, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32*, i32** %15, align 8
  %31 = call i32 @apr_hash_make(i32* %30)
  %32 = load i32*, i32** %15, align 8
  %33 = call %struct.TYPE_12__* @svn_element__payload_create_dir(i32 %31, i32* %32)
  %34 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %34, align 8
  %35 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %35, i32** %9, align 8
  br label %66

36:                                               ; preds = %25, %8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %38, align 8
  %39 = load i32, i32* %13, align 4
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %16, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = bitcast %struct.TYPE_13__* %10 to { i64, i64 }*
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @storage_pathrev_from_branch_ref(i32* %18, i64 %50, i64 %52, i32 %45, i32* %46, i32* %47)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @payload_fetch(%struct.TYPE_12__** %55, i32* null, %struct.TYPE_15__* %17, i32* %18, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %11, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = bitcast %struct.TYPE_13__* %62 to i8*
  %64 = bitcast %struct.TYPE_13__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %65, i32** %9, align 8
  br label %66

66:                                               ; preds = %36, %29
  %67 = load i32*, i32** %9, align 8
  ret i32* %67
}

declare dso_local %struct.TYPE_12__* @svn_element__payload_create_dir(i32, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @storage_pathrev_from_branch_ref(i32*, i64, i64, i32, i32*, i32*) #1

declare dso_local i32 @payload_fetch(%struct.TYPE_12__**, i32*, %struct.TYPE_15__*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
