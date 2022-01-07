; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_ginode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_ginode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32*, i32* }
%union.dinode = type { i32 }
%struct.ufs2_dinode = type { i32 }

@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bad inode number %ju to ginode\00", align 1
@startinum = common dso_local global i64 0, align 8
@sblock = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@pbp = common dso_local global %struct.TYPE_11__* null, align 8
@B_INUSE = common dso_local global i32 0, align 4
@BT_INODES = common dso_local global i32 0, align 4
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"INODE CHECK-HASH FAILED\00", align 1
@preen = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"FIX\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" (FIXED)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.dinode* @ginode(i64 %0) #0 {
  %2 = alloca %union.dinode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.dinode*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @UFS_ROOTINO, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @maxino, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EEXIT, align 4
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @errx(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %9
  %19 = load i64, i64* @startinum, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @startinum, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @startinum, align 8
  %28 = call i64 @INOPB(%struct.TYPE_10__* @sblock)
  %29 = add nsw i64 %27, %28
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %25, %21, %18
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @ino_to_fsba(%struct.TYPE_10__* @sblock, i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pbp, align 8
  %35 = icmp ne %struct.TYPE_11__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @B_INUSE, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pbp, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sblock, i32 0, i32 1), align 8
  %46 = load i32, i32* @BT_INODES, align 4
  %47 = call %struct.TYPE_11__* @getdatablk(i32 %44, i32 %45, i32 %46)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** @pbp, align 8
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @INOPB(%struct.TYPE_10__* @sblock)
  %50 = call i64 @rounddown(i64 %48, i64 %49)
  store i64 %50, i64* @startinum, align 8
  br label %51

51:                                               ; preds = %43, %25
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @sblock, i32 0, i32 0), align 8
  %53 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pbp, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @INOPB(%struct.TYPE_10__* @sblock)
  %62 = srem i64 %60, %61
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = bitcast i32* %63 to %union.dinode*
  store %union.dinode* %64, %union.dinode** %2, align 8
  br label %103

65:                                               ; preds = %51
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** @pbp, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = call i64 @INOPB(%struct.TYPE_10__* @sblock)
  %72 = srem i64 %70, %71
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = bitcast i32* %73 to %union.dinode*
  store %union.dinode* %74, %union.dinode** %5, align 8
  %75 = load %union.dinode*, %union.dinode** %5, align 8
  %76 = bitcast %union.dinode* %75 to %struct.ufs2_dinode*
  %77 = call i64 @ffs_verify_dinode_ckhash(%struct.TYPE_10__* @sblock, %struct.ufs2_dinode* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %65
  %80 = call i32 @pwarn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i64, i64* %3, align 8
  %82 = load %union.dinode*, %union.dinode** %5, align 8
  %83 = call i32 @prtinode(i64 %81, %union.dinode* %82)
  %84 = load i64, i64* @preen, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = call i64 @reply(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %86, %79
  %90 = load i64, i64* @preen, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %union.dinode*, %union.dinode** %5, align 8
  %96 = bitcast %union.dinode* %95 to %struct.ufs2_dinode*
  %97 = call i32 @ffs_update_dinode_ckhash(%struct.TYPE_10__* @sblock, %struct.ufs2_dinode* %96)
  %98 = load %union.dinode*, %union.dinode** %5, align 8
  %99 = call i32 @inodirty(%union.dinode* %98)
  br label %100

100:                                              ; preds = %94, %86
  br label %101

101:                                              ; preds = %100, %65
  %102 = load %union.dinode*, %union.dinode** %5, align 8
  store %union.dinode* %102, %union.dinode** %2, align 8
  br label %103

103:                                              ; preds = %101, %55
  %104 = load %union.dinode*, %union.dinode** %2, align 8
  ret %union.dinode* %104
}

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i64 @INOPB(%struct.TYPE_10__*) #1

declare dso_local i32 @ino_to_fsba(%struct.TYPE_10__*, i64) #1

declare dso_local %struct.TYPE_11__* @getdatablk(i32, i32, i32) #1

declare dso_local i64 @rounddown(i64, i64) #1

declare dso_local i64 @ffs_verify_dinode_ckhash(%struct.TYPE_10__*, %struct.ufs2_dinode*) #1

declare dso_local i32 @pwarn(i8*) #1

declare dso_local i32 @prtinode(i64, %union.dinode*) #1

declare dso_local i64 @reply(i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ffs_update_dinode_ckhash(%struct.TYPE_10__*, %struct.ufs2_dinode*) #1

declare dso_local i32 @inodirty(%union.dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
