; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_trail.c_begin_trail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_trail.c_begin_trail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32**, i32)* }

@.str = private unnamed_addr constant [34 x i8] c"beginning Berkeley DB transaction\00", align 1
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__**, %struct.TYPE_12__*, i64, i32*)* @begin_trail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @begin_trail(%struct.TYPE_11__** %0, %struct.TYPE_12__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__**, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call %struct.TYPE_11__* @apr_pcalloc(i32* %14, i32 24)
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @svn_pool_create(i32* %16)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @SVN_ERR_ASSERT(i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %34 = call i32 @N_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_14__*, i32, i32**, i32)*, i32 (%struct.TYPE_14__*, i32, i32**, i32)** %40, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = call i32 %41(%struct.TYPE_14__* %46, i32 0, i32** %48, i32 0)
  %50 = call i32 @BDB_WRAP(%struct.TYPE_12__* %33, i32 %34, i32 %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* @TRUE, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %58

55:                                               ; preds = %4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %25
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %5, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %60, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local %struct.TYPE_11__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
