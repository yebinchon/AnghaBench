; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_spill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_receive_spill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.receive_writer_arg = type { i64, i32 }
%struct.drr_spill = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.receive_writer_arg*, %struct.drr_spill*, i8*)* @receive_spill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_spill(%struct.receive_writer_arg* %0, %struct.drr_spill* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.receive_writer_arg*, align 8
  %6 = alloca %struct.drr_spill*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  store %struct.receive_writer_arg* %0, %struct.receive_writer_arg** %5, align 8
  store %struct.drr_spill* %1, %struct.drr_spill** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %13 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %19 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %22 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dmu_objset_spa(i32 %23)
  %25 = call i32 @spa_maxblocksize(i32 %24)
  %26 = icmp sgt i32 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SET_ERROR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %138

30:                                               ; preds = %17
  %31 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %32 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %35 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @dmu_object_info(i32 %33, i64 %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %138

42:                                               ; preds = %30
  %43 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %44 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %47 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %52 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %55 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %58 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %61 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @FTAG, align 4
  %64 = call i32 @dmu_bonus_hold(i32 %59, i64 %62, i32 %63, %struct.TYPE_8__** %9)
  %65 = call i32 @VERIFY0(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = load i32, i32* @FTAG, align 4
  %68 = call i32 @dmu_spill_hold_by_bonus(%struct.TYPE_8__* %66, i32 %67, %struct.TYPE_8__** %10)
  store i32 %68, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %56
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %72 = load i32, i32* @FTAG, align 4
  %73 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %71, i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %4, align 4
  br label %138

75:                                               ; preds = %56
  %76 = load %struct.receive_writer_arg*, %struct.receive_writer_arg** %5, align 8
  %77 = getelementptr inbounds %struct.receive_writer_arg, %struct.receive_writer_arg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32* @dmu_tx_create(i32 %78)
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dmu_tx_hold_spill(i32* %80, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @TXG_WAIT, align 4
  %87 = call i32 @dmu_tx_assign(i32* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %75
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = load i32, i32* @FTAG, align 4
  %93 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %91, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = load i32, i32* @FTAG, align 4
  %96 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %94, i32 %95)
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @dmu_tx_abort(i32* %97)
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %4, align 4
  br label %138

100:                                              ; preds = %75
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @dmu_buf_will_dirty(%struct.TYPE_8__* %101, i32* %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %108 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %100
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %113 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %114 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = call i64 @dbuf_spill_set_blksz(%struct.TYPE_8__* %112, i32 %115, i32* %116)
  %118 = icmp eq i64 0, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @VERIFY(i32 %119)
  br label %121

121:                                              ; preds = %111, %100
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.drr_spill*, %struct.drr_spill** %6, align 8
  %127 = getelementptr inbounds %struct.drr_spill, %struct.drr_spill* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bcopy(i8* %122, i32 %125, i32 %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %131 = load i32, i32* @FTAG, align 4
  %132 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %130, i32 %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %134 = load i32, i32* @FTAG, align 4
  %135 = call i32 @dmu_buf_rele(%struct.TYPE_8__* %133, i32 %134)
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @dmu_tx_commit(i32* %136)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %121, %90, %70, %39, %27
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @spa_maxblocksize(i32) #1

declare dso_local i32 @dmu_objset_spa(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dmu_object_info(i32, i64, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_bonus_hold(i32, i64, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @dmu_spill_hold_by_bonus(%struct.TYPE_8__*, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @dmu_tx_create(i32) #1

declare dso_local i32 @dmu_tx_hold_spill(i32*, i32) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dbuf_spill_set_blksz(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
