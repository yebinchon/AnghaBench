; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_chkrecovery.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_chkrecovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsrecovery = type { i64 }

@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@SBLOCK_UFS2 = common dso_local global i32 0, align 4
@dev_bsize = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chkrecovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chkrecovery(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsrecovery*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %9 = call i32 @ioctl(i32 %7, i32 %8, i32* %6)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %26, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @Malloc(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @SBLOCK_UFS2, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load i32, i32* @dev_bsize, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @blread(i32 %16, i8* %17, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15, %11, %1
  store i32 1, i32* %2, align 4
  br label %45

27:                                               ; preds = %15
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 %30, 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = bitcast i8* %32 to %struct.fsrecovery*
  store %struct.fsrecovery* %33, %struct.fsrecovery** %4, align 8
  %34 = load %struct.fsrecovery*, %struct.fsrecovery** %4, align 8
  %35 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @free(i8* %40)
  store i32 1, i32* %2, align 4
  br label %45

42:                                               ; preds = %27
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @free(i8* %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %39, %26
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i64 @blread(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
