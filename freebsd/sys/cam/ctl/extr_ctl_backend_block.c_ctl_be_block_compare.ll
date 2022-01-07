; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_block.c_ctl_be_block_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { i32 }
%struct.ctl_be_block_io = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@CTLBLK_HALF_SEGS = common dso_local global i32 0, align 4
@SSD_KEY_MISCOMPARE = common dso_local global i32 0, align 4
@SSD_ELEM_INFO = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ctl_io*)* @ctl_be_block_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_be_block_compare(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_block_io*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %8 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %9 = call %struct.TYPE_4__* @PRIV(%union.ctl_io* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ctl_be_block_io*
  store %struct.ctl_be_block_io* %12, %struct.ctl_be_block_io** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %62, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %13
  %20 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CTLBLK_HALF_SEGS, align 4
  %33 = add nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @cmp(i32 %27, i32 %37, i64 %45)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* %4, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %50, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %19
  br label %65

61:                                               ; preds = %19
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %13

65:                                               ; preds = %60, %13
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ctl_be_block_io*, %struct.ctl_be_block_io** %3, align 8
  %68 = getelementptr inbounds %struct.ctl_be_block_io, %struct.ctl_be_block_io* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %65
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %74 = call i32 @scsi_u64to8b(i64 %72, i32* %73)
  %75 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %76 = bitcast %union.ctl_io* %75 to i32*
  %77 = load i32, i32* @SSD_KEY_MISCOMPARE, align 4
  %78 = load i32, i32* @SSD_ELEM_INFO, align 4
  %79 = bitcast [8 x i32]* %7 to i32**
  %80 = load i32, i32* @SSD_ELEM_NONE, align 4
  %81 = call i32 @ctl_set_sense(i32* %76, i32 1, i32 %77, i32 29, i32 0, i32 %78, i32 32, i32** %79, i32 %80)
  br label %86

82:                                               ; preds = %65
  %83 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %84 = bitcast %union.ctl_io* %83 to i32*
  %85 = call i32 @ctl_set_success(i32* %84)
  br label %86

86:                                               ; preds = %82, %71
  ret void
}

declare dso_local %struct.TYPE_4__* @PRIV(%union.ctl_io*) #1

declare dso_local i64 @cmp(i32, i32, i64) #1

declare dso_local i32 @scsi_u64to8b(i64, i32*) #1

declare dso_local i32 @ctl_set_sense(i32*, i32, i32, i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @ctl_set_success(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
