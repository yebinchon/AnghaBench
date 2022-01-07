; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_write_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_write_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i8* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i8* }

@zfs_trim_enabled = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trim_map_write_start(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %4, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %5, align 8
  %18 = load i32, i32* @zfs_trim_enabled, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = icmp eq %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %20, %1
  %29 = load i32, i32* @B_TRUE, align 4
  store i32 %29, i32* %2, align 4
  br label %84

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @TRIM_ZIO_END(%struct.TYPE_14__* %36, i8* %37, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i8* %44, i8** %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = call i32 @mutex_enter(i32* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 4
  %51 = call %struct.TYPE_15__* @avl_find(i32* %50, %struct.TYPE_15__* %6, i32* null)
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %7, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %30
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = call i32 @list_insert_tail(i32* %56, %struct.TYPE_13__* %57)
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = call i32 @mutex_exit(i32* %60)
  %62 = load i32, i32* @B_FALSE, align 4
  store i32 %62, i32* %2, align 4
  br label %84

63:                                               ; preds = %30
  br label %64

64:                                               ; preds = %69, %63
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  %67 = call %struct.TYPE_15__* @avl_find(i32* %66, %struct.TYPE_15__* %6, i32* null)
  store %struct.TYPE_15__* %67, %struct.TYPE_15__** %7, align 8
  %68 = icmp ne %struct.TYPE_15__* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @trim_map_segment_remove(%struct.TYPE_16__* %70, %struct.TYPE_15__* %71, i8* %72, i8* %73)
  br label %64

75:                                               ; preds = %64
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = call i32 @avl_add(i32* %77, %struct.TYPE_13__* %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = call i32 @mutex_exit(i32* %81)
  %83 = load i32, i32* @B_TRUE, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %75, %54, %28
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i8* @TRIM_ZIO_END(%struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_15__* @avl_find(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @trim_map_segment_remove(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @avl_add(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
