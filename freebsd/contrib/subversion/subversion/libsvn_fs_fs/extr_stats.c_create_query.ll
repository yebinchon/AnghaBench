; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_create_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_stats.c_create_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i8*, i32, i32*, i32*, i8*, i64, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__**, i32*, i32*, i32, i8*, i32, i8*, i32*, i32*)* @create_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_query(%struct.TYPE_3__** %0, i32* %1, i32* %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_3__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load i32*, i32** %17, align 8
  %20 = call i8* @apr_pcalloc(i32* %19, i32 80)
  %21 = bitcast i8* %20 to %struct.TYPE_3__*
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %22, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @svn_fs_fs__shard_size(i32* %23)
  %25 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 10
  store i32 %24, i32* %27, align 8
  %28 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  %31 = load i32*, i32** %11, align 8
  %32 = load i32*, i32** %18, align 8
  %33 = call i32 @svn_fs_fs__youngest_rev(i64* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 9
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %18, align 8
  %40 = call i32 @svn_fs_fs__min_unpacked_rev(i32* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** %17, align 8
  %43 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = call i32 @apr_array_make(i32* %42, i32 %48, i32 8)
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 8
  store i32 %49, i32* %52, align 8
  %53 = load i32*, i32** %17, align 8
  %54 = call i8* @apr_pcalloc(i32* %53, i32 1)
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 6
  store i8* %54, i8** %57, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  store i32* %58, i32** %61, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 4
  store i32* %62, i32** %65, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i8* %70, i8** %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %10, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %82
}

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__shard_size(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__youngest_rev(i64*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__min_unpacked_rev(i32*, i32*, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
