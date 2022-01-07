; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.lock_baton_t = type { i32*, i64, i32 }

@lock_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_lock(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_3__, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.lock_baton_t, align 8
  store i32** %0, i32*** %11, align 8
  store i32* %1, i32** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %25 = load i32*, i32** %20, align 8
  %26 = call i32* @apr_hash_make(i32* %25)
  store i32* %26, i32** %21, align 8
  %27 = bitcast %struct.lock_baton_t* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 24, i1 false)
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %18, align 4
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load i32*, i32** %21, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @svn_hash_sets(i32* %32, i8* %33, %struct.TYPE_3__* %22)
  %35 = load i32*, i32** %12, align 8
  %36 = load i32*, i32** %21, align 8
  %37 = load i8*, i8** %15, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %19, align 4
  %41 = load i32, i32* @lock_cb, align 4
  %42 = load i32*, i32** %20, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = call i32* @svn_fs_lock_many(i32* %35, i32* %36, i8* %37, i32 %38, i32 %39, i32 %40, i32 %41, %struct.lock_baton_t* %24, i32* %42, i32* %43)
  store i32* %44, i32** %23, align 8
  %45 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %10
  %49 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32**, i32*** %11, align 8
  store i32* %51, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %10
  %54 = load i32*, i32** %23, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32*, i32** %23, align 8
  %62 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @svn_error_compose(i32* %61, i32* %63)
  br label %72

65:                                               ; preds = %56, %53
  %66 = load i32*, i32** %23, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %24, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** %23, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i32*, i32** %23, align 8
  %74 = call i32* @svn_error_trace(i32* %73)
  ret i32* %74
}

declare dso_local i32* @apr_hash_make(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_hash_sets(i32*, i8*, %struct.TYPE_3__*) #1

declare dso_local i32* @svn_fs_lock_many(i32*, i32*, i8*, i32, i32, i32, i32, %struct.lock_baton_t*, i32*, i32*) #1

declare dso_local i32 @svn_error_compose(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
