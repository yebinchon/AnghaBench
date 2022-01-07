; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_sblock_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_sblock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@fswritefd = common dso_local global i32 0, align 4
@fsmodified = common dso_local global i64 0, align 8
@lfdir = common dso_local global i64 0, align 8
@sblk = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BT_SUPERBLK = common dso_local global i32 0, align 4
@asblk = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SBLOCKSIZE = common dso_local global i32 0, align 4
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot allocate space for superblock\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@secsize = common dso_local global i32 0, align 4
@dev_bsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sblock_init() #0 {
  store i32 -1, i32* @fswritefd, align 4
  store i64 0, i64* @fsmodified, align 8
  store i64 0, i64* @lfdir, align 8
  %1 = load i32, i32* @BT_SUPERBLK, align 4
  %2 = call i32 @initbarea(%struct.TYPE_6__* @sblk, i32 %1)
  %3 = load i32, i32* @BT_SUPERBLK, align 4
  %4 = call i32 @initbarea(%struct.TYPE_6__* @asblk, i32 %3)
  %5 = load i32, i32* @SBLOCKSIZE, align 4
  %6 = call i8* @Malloc(i32 %5)
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblk, i32 0, i32 0, i32 0), align 8
  %8 = load i32, i32* @SBLOCKSIZE, align 4
  %9 = call i8* @Malloc(i32 %8)
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @asblk, i32 0, i32 0, i32 0), align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sblk, i32 0, i32 0, i32 0), align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %0
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @asblk, i32 0, i32 0, i32 0), align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13, %0
  %17 = load i32, i32* @EEXIT, align 4
  %18 = call i32 @errx(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %20, i32* @secsize, align 4
  store i32 %20, i32* @dev_bsize, align 4
  ret void
}

declare dso_local i32 @initbarea(%struct.TYPE_6__*, i32) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
