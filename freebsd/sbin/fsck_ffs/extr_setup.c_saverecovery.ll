; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_saverecovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_saverecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.fsrecovery = type { i64, i32, i32, i32, i32 }

@sblock = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@SBLOCK_UFS2 = common dso_local global i32 0, align 4
@dev_bsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RECOVERY DATA COULD NOT BE CREATED\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @saverecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saverecovery(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsrecovery*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %9 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %14 = call i32 @ioctl(i32 %12, i32 %13, i32* %7)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @Malloc(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @SBLOCK_UFS2, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %23, %24
  %26 = load i32, i32* @dev_bsize, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @blread(i32 %21, i8* %22, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20, %16, %11, %2
  %32 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %66

33:                                               ; preds = %20
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 24
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = bitcast i8* %38 to %struct.fsrecovery*
  store %struct.fsrecovery* %39, %struct.fsrecovery** %5, align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 0), align 8
  %41 = load %struct.fsrecovery*, %struct.fsrecovery** %5, align 8
  %42 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 4), align 4
  %44 = load %struct.fsrecovery*, %struct.fsrecovery** %5, align 8
  %45 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 3), align 8
  %47 = load %struct.fsrecovery*, %struct.fsrecovery** %5, align 8
  %48 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 2), align 4
  %50 = load %struct.fsrecovery*, %struct.fsrecovery** %5, align 8
  %51 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sblock, i32 0, i32 1), align 8
  %53 = load %struct.fsrecovery*, %struct.fsrecovery** %5, align 8
  %54 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @SBLOCK_UFS2, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %7, align 4
  %61 = sdiv i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @blwrite(i32 %55, i8* %56, i32 %61, i32 %62)
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @free(i8* %64)
  br label %66

66:                                               ; preds = %33, %31
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i64 @blread(i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @blwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
