; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_setinodebuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/quotacheck/extr_quotacheck.c_setinodebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@sblock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"bad inode number %ju to setinodebuf\00", align 1
@lastvalidinum = common dso_local global i32 0, align 4
@nextino = common dso_local global i32 0, align 4
@lastinum = common dso_local global i32 0, align 4
@readcnt = common dso_local global i64 0, align 8
@inodebuf = common dso_local global i32* null, align 8
@INOBUFSIZE = common dso_local global i32 0, align 4
@inobufsize = common dso_local global i32 0, align 4
@FS_UFS1_MAGIC = common dso_local global i64 0, align 8
@fullcnt = common dso_local global i32 0, align 4
@readpercg = common dso_local global i32 0, align 4
@partialcnt = common dso_local global i32 0, align 4
@partialsize = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot allocate space for inode buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setinodebuf(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %5 = srem i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %13 = add nsw i32 %11, %12
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* @lastvalidinum, align 4
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* @nextino, align 4
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* @lastinum, align 4
  store i64 0, i64* @readcnt, align 8
  %17 = load i32*, i32** @inodebuf, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %61

20:                                               ; preds = %10
  %21 = load i32, i32* @INOBUFSIZE, align 4
  %22 = call i32 @blkroundup(%struct.TYPE_3__* @sblock, i32 %21)
  store i32 %22, i32* @inobufsize, align 4
  %23 = load i32, i32* @inobufsize, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 1), align 8
  %26 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i64 4, i64 4
  %30 = udiv i64 %24, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @fullcnt, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %33 = load i32, i32* @fullcnt, align 4
  %34 = sdiv i32 %32, %33
  store i32 %34, i32* @readpercg, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %36 = load i32, i32* @fullcnt, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* @partialcnt, align 4
  %38 = load i32, i32* @partialcnt, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 1), align 8
  %41 = load i64, i64* @FS_UFS1_MAGIC, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i64 4, i64 4
  %45 = mul i64 %39, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* @partialsize, align 4
  %47 = load i32, i32* @partialcnt, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %20
  %50 = load i32, i32* @readpercg, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @readpercg, align 4
  br label %55

52:                                               ; preds = %20
  %53 = load i32, i32* @fullcnt, align 4
  store i32 %53, i32* @partialcnt, align 4
  %54 = load i32, i32* @inobufsize, align 4
  store i32 %54, i32* @partialsize, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @inobufsize, align 4
  %57 = call i32* @malloc(i32 %56)
  store i32* %57, i32** @inodebuf, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %19, %59, %55
  ret void
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @blkroundup(%struct.TYPE_3__*, i32) #1

declare dso_local i32* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
