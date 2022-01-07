; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_svn_txdelta_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_text_delta.c_svn_txdelta_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txdelta_baton = type { i32*, i32, i32*, i32, i64, i8*, i8*, i32*, i32*, i32 }

@TRUE = common dso_local global i8* null, align 8
@SVN_DELTA_WINDOW_SIZE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_txdelta_run(i32* %0, i32* %1, i32 (i32*, i8*)* %2, i8* %3, i32 %4, i32** %5, i32 (i8*)* %6, i8* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32 (i32*, i8*)*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32 (i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.txdelta_baton, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 (i32*, i8*)* %2, i32 (i32*, i8*)** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32** %5, i32*** %16, align 8
  store i32 (i8*)* %6, i32 (i8*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %24 = load i32*, i32** %20, align 8
  %25 = call i32* @svn_pool_create(i32* %24)
  store i32* %25, i32** %21, align 8
  %26 = bitcast %struct.txdelta_baton* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 80, i1 false)
  %27 = load i32*, i32** %11, align 8
  %28 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 8
  store i32* %27, i32** %28, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 7
  store i32* %29, i32** %30, align 8
  %31 = load i8*, i8** @TRUE, align 8
  %32 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** @TRUE, align 8
  %34 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 5
  store i8* %33, i8** %34, align 8
  %35 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load i32*, i32** %20, align 8
  %37 = load i32, i32* @SVN_DELTA_WINDOW_SIZE, align 4
  %38 = mul nsw i32 2, %37
  %39 = call i32 @apr_palloc(i32* %36, i32 %38)
  %40 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 2
  store i32* %41, i32** %42, align 8
  %43 = load i32**, i32*** %16, align 8
  %44 = icmp ne i32** %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %10
  %46 = load i32, i32* %15, align 4
  %47 = load i32*, i32** %20, align 8
  %48 = call i32 @svn_checksum_ctx_create(i32 %46, i32* %47)
  %49 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 1
  store i32 %48, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %10
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32*, i32** %21, align 8
  %53 = call i32 @svn_pool_clear(i32* %52)
  %54 = load i32*, i32** %21, align 8
  %55 = call i32 @txdelta_next_window(i32** %23, %struct.txdelta_baton* %22, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %13, align 8
  %58 = load i32*, i32** %23, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 %57(i32* %58, i8* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %63 = icmp ne i32 (i8*)* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %51
  %65 = load i32 (i8*)*, i32 (i8*)** %17, align 8
  %66 = load i8*, i8** %18, align 8
  %67 = call i32 %65(i8* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  br label %69

69:                                               ; preds = %64, %51
  br label %70

70:                                               ; preds = %69
  %71 = load i32*, i32** %23, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %51, label %73

73:                                               ; preds = %70
  %74 = load i32*, i32** %21, align 8
  %75 = call i32 @svn_pool_destroy(i32* %74)
  %76 = load i32**, i32*** %16, align 8
  %77 = icmp ne i32** %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.txdelta_baton, %struct.txdelta_baton* %22, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32**, i32*** %16, align 8
  store i32* %80, i32** %81, align 8
  br label %82

82:                                               ; preds = %78, %73
  %83 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %83
}

declare dso_local i32* @svn_pool_create(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_checksum_ctx_create(i32, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @txdelta_next_window(i32**, %struct.txdelta_baton*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
