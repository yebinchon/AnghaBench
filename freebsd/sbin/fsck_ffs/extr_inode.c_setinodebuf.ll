; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_setinodebuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_setinodebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@sblock = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"bad inode number %ju to setinodebuf\00", align 1
@lastvalidinum = common dso_local global i32 0, align 4
@startinum = common dso_local global i64 0, align 8
@nextino = common dso_local global i32 0, align 4
@lastinum = common dso_local global i32 0, align 4
@readcount = common dso_local global i64 0, align 8
@inobuf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@INOBUFSIZE = common dso_local global i32 0, align 4
@inobufsize = common dso_local global i32 0, align 4
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@fullcnt = common dso_local global i32 0, align 4
@readpercg = common dso_local global i32 0, align 4
@partialcnt = common dso_local global i32 0, align 4
@partialsize = common dso_local global i32 0, align 4
@BT_INODES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot allocate space for inode buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setinodebuf(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %5 = srem i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @EEXIT, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 (i32, i8*, ...) @errx(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %14 = add nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* @lastvalidinum, align 4
  store i64 0, i64* @startinum, align 8
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* @nextino, align 4
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* @lastinum, align 4
  store i64 0, i64* @readcount, align 8
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inobuf, i32 0, i32 0, i32 0), align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %65

21:                                               ; preds = %11
  %22 = load i32, i32* @INOBUFSIZE, align 4
  %23 = call i32 @blkroundup(%struct.TYPE_7__* @sblock, i32 %22)
  store i32 %23, i32* @inobufsize, align 4
  %24 = load i32, i32* @inobufsize, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 1), align 8
  %27 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i64 4, i64 4
  %31 = udiv i64 %25, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* @fullcnt, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %34 = load i32, i32* @fullcnt, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* @readpercg, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 0), align 8
  %37 = load i32, i32* @fullcnt, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* @partialcnt, align 4
  %39 = load i32, i32* @partialcnt, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @sblock, i32 0, i32 1), align 8
  %42 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i64 4, i64 4
  %46 = mul i64 %40, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @partialsize, align 4
  %48 = load i32, i32* @partialcnt, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %21
  %51 = load i32, i32* @readpercg, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @readpercg, align 4
  br label %56

53:                                               ; preds = %21
  %54 = load i32, i32* @fullcnt, align 4
  store i32 %54, i32* @partialcnt, align 4
  %55 = load i32, i32* @inobufsize, align 4
  store i32 %55, i32* @partialsize, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* @BT_INODES, align 4
  %58 = call i32 @initbarea(%struct.TYPE_8__* @inobuf, i32 %57)
  %59 = load i32, i32* @inobufsize, align 4
  %60 = call i32* @Malloc(i32 %59)
  store i32* %60, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @inobuf, i32 0, i32 0, i32 0), align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @EEXIT, align 4
  %64 = call i32 (i32, i8*, ...) @errx(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %20, %62, %56
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @blkroundup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @initbarea(%struct.TYPE_8__*, i32) #1

declare dso_local i32* @Malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
