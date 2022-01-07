; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_paths_changed3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_fs-loader.c_svn_fs_paths_changed3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__**, %struct.TYPE_11__*, i32*, i32*)*, i32 (i32**, %struct.TYPE_11__*, i32*)* }

@SVN_FS_EMULATE_REPORT_CHANGES = common dso_local global i64 0, align 8
@iterator_vtable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_paths_changed3(%struct.TYPE_12__** %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__**, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32 (%struct.TYPE_12__**, %struct.TYPE_11__*, i32*, i32*)*, i32 (%struct.TYPE_12__**, %struct.TYPE_11__*, i32*, i32*)** %16, align 8
  %18 = icmp ne i32 (%struct.TYPE_12__**, %struct.TYPE_11__*, i32*, i32*)* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %4
  %20 = load i64, i64* @SVN_FS_EMULATE_REPORT_CHANGES, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32 (i32**, %struct.TYPE_11__*, i32*)*, i32 (i32**, %struct.TYPE_11__*, i32*)** %26, align 8
  %28 = icmp ne i32 (i32**, %struct.TYPE_11__*, i32*)* %27, null
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br label %31

31:                                               ; preds = %29, %4
  %32 = phi i1 [ true, %4 ], [ %30, %29 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32 (i32**, %struct.TYPE_11__*, i32*)*, i32 (i32**, %struct.TYPE_11__*, i32*)** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 %41(i32** %12, %struct.TYPE_11__* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i8* @apr_pcalloc(i32* %46, i32 4)
  %48 = bitcast i8* %47 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %48, %struct.TYPE_13__** %11, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @apr_hash_first(i32* %49, i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i8* @apr_pcalloc(i32* %54, i32 16)
  %56 = bitcast i8* %55 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** %10, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store %struct.TYPE_13__* %57, %struct.TYPE_13__** %59, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  store i32* @iterator_vtable, i32** %61, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %63, align 8
  br label %76

64:                                               ; preds = %31
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32 (%struct.TYPE_12__**, %struct.TYPE_11__*, i32*, i32*)*, i32 (%struct.TYPE_12__**, %struct.TYPE_11__*, i32*, i32*)** %68, align 8
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %5, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 %69(%struct.TYPE_12__** %70, %struct.TYPE_11__* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %64, %36
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %77
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @apr_hash_first(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
