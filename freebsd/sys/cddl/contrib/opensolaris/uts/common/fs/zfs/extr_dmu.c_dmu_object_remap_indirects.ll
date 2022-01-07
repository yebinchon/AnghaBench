; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_object_remap_indirects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_object_remap_indirects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32 }

@FTAG = common dso_local global i32 0, align 4
@JUSTLOOKING = common dso_local global i32 0, align 4
@FORREAL = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@SPA_BLKPTRSHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_object_remap_indirects(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32, i32* @FTAG, align 4
  %16 = call i32 @dnode_hold(i32* %13, i64 %14, i32 %15, %struct.TYPE_8__** %11)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %114

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %71

26:                                               ; preds = %21
  %27 = load i32, i32* @JUSTLOOKING, align 4
  %28 = call i64 @issig(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @FORREAL, align 4
  %32 = call i64 @issig(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINTR, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %34, %30, %26
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %37
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %42 = call i64 @dnode_needs_remap(%struct.TYPE_8__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = call i32* @dmu_tx_create(i32* %45)
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dmu_tx_hold_bonus(i32* %47, i32 %50)
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* @TXG_WAIT, align 4
  %54 = call i32 @dmu_tx_assign(i32* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %44
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @dnode_setdirty(%struct.TYPE_8__* %57, i32* %58)
  %60 = load i32*, i32** %12, align 8
  %61 = call i32 @dmu_tx_commit(i32* %60)
  br label %65

62:                                               ; preds = %44
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @dmu_tx_abort(i32* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %40, %37
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %68 = load i32, i32* @FTAG, align 4
  %69 = call i32 @dnode_rele(%struct.TYPE_8__* %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %114

71:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SPA_BLKPTRSHIFT, align 8
  %76 = sub i64 %74, %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %76, %79
  %81 = shl i64 1, %80
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %105, %71
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = call i64 @dnode_next_offset(%struct.TYPE_8__* %83, i32 0, i64* %8, i32 2, i32 1, i32 0)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load i32, i32* @JUSTLOOKING, align 4
  %88 = call i64 @issig(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load i32, i32* @FORREAL, align 4
  %92 = call i64 @issig(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EINTR, align 4
  %96 = call i32 @SET_ERROR(i32 %95)
  store i32 %96, i32* %10, align 4
  br label %109

97:                                               ; preds = %90, %86
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = load i64, i64* %7, align 8
  %101 = load i64, i64* %8, align 8
  %102 = call i32 @dmu_object_remap_one_indirect(i32* %98, %struct.TYPE_8__* %99, i64 %100, i64 %101)
  store i32 %102, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %109

105:                                              ; preds = %97
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, %106
  store i64 %108, i64* %8, align 8
  br label %82

109:                                              ; preds = %104, %94, %82
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = load i32, i32* @FTAG, align 4
  %112 = call i32 @dnode_rele(%struct.TYPE_8__* %110, i32 %111)
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %109, %66, %19
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @dnode_hold(i32*, i64, i32, %struct.TYPE_8__**) #1

declare dso_local i64 @issig(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dnode_needs_remap(%struct.TYPE_8__*) #1

declare dso_local i32* @dmu_tx_create(i32*) #1

declare dso_local i32 @dmu_tx_hold_bonus(i32*, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dnode_setdirty(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @dnode_next_offset(%struct.TYPE_8__*, i32, i64*, i32, i32, i32) #1

declare dso_local i32 @dmu_object_remap_one_indirect(i32*, %struct.TYPE_8__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
