; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_locate_dir_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_locate_dir_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32*, i32* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, i8**, %struct.TYPE_12__*, %struct.TYPE_13__*, i32*)* @locate_dir_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @locate_dir_cache(%struct.TYPE_11__* %0, i8** %1, %struct.TYPE_12__* %2, %struct.TYPE_13__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8** %1, i8*** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %12, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %5
  %21 = load i8**, i8*** %8, align 8
  store i8* null, i8** %21, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  br label %65

25:                                               ; preds = %5
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = call i64 @svn_fs_fs__id_txn_used(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %25
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call %struct.TYPE_15__* @svn_fs_fs__id_unparse(i32 %35, i32* %36)
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8**, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %6, align 8
  br label %65

44:                                               ; preds = %25
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = bitcast %struct.TYPE_12__* %59 to i8*
  %61 = load i8**, i8*** %8, align 8
  store i8* %60, i8** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %6, align 8
  br label %65

65:                                               ; preds = %44, %32, %20
  %66 = load i32*, i32** %6, align 8
  ret i32* %66
}

declare dso_local i64 @svn_fs_fs__id_txn_used(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_fs_fs__id_unparse(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
