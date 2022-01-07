; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_table_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_table_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32*)* @zap_table_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_table_load(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i32 @FZAP_BLOCK_SHIFT(%struct.TYPE_10__* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @RW_LOCK_HELD(i32* %19)
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %10, align 4
  %24 = sub nsw i32 %23, 3
  %25 = ashr i32 %22, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 3
  %29 = shl i32 1, %28
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %26, %30
  store i32 %31, i32* %12, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @dmu_buf_dnode_enter(i32 %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @FTAG, align 4
  %45 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %46 = call i32 @dmu_buf_hold_by_dnode(i32* %36, i32 %43, i32 %44, %struct.TYPE_11__** %14, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dmu_buf_dnode_exit(i32 %49)
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %4
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %5, align 4
  br label %106

55:                                               ; preds = %4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %66 = load i32, i32* @FTAG, align 4
  %67 = call i32 @dmu_buf_rele(%struct.TYPE_11__* %65, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %55
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %73, 2
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 3
  %77 = ashr i32 %74, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32* @dmu_buf_dnode_enter(i32 %80)
  store i32* %81, i32** %13, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = load i32, i32* %10, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* @FTAG, align 4
  %91 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %92 = call i32 @dmu_buf_hold_by_dnode(i32* %82, i32 %89, i32 %90, %struct.TYPE_11__** %14, i32 %91)
  store i32 %92, i32* %15, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @dmu_buf_dnode_exit(i32 %95)
  %97 = load i32, i32* %15, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %72
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %101 = load i32, i32* @FTAG, align 4
  %102 = call i32 @dmu_buf_rele(%struct.TYPE_11__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %72
  br label %104

104:                                              ; preds = %103, %55
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %53
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @FZAP_BLOCK_SHIFT(%struct.TYPE_10__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local i32* @dmu_buf_dnode_enter(i32) #1

declare dso_local i32 @dmu_buf_hold_by_dnode(i32*, i32, i32, %struct.TYPE_11__**, i32) #1

declare dso_local i32 @dmu_buf_dnode_exit(i32) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
