; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_calcsb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_setup.c_calcsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64, i32, i32, i32, i32 }
%struct.fsrecovery = type { i64, i32, i32, i32, i32 }

@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"calcsb: cannot allocate recovery buffer\00", align 1
@SBLOCK_UFS2 = common dso_local global i32 0, align 4
@dev_bsize = common dso_local global i32 0, align 4
@FS_UFS2_MAGIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.fs*)* @calcsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calcsb(i8* %0, i32 %1, %struct.fs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fs*, align 8
  %8 = alloca %struct.fsrecovery*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fs* %2, %struct.fs** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %13 = call i32 @ioctl(i32 %11, i32 %12, i32* %10)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

16:                                               ; preds = %3
  %17 = load i32, i32* %10, align 4
  %18 = call i8* @Malloc(i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EEXIT, align 4
  %23 = call i32 @errx(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %6, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @SBLOCK_UFS2, align 4
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %27, %28
  %30 = load i32, i32* @dev_bsize, align 4
  %31 = sdiv i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @blread(i32 %25, i8* %26, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %79

36:                                               ; preds = %24
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 24
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = bitcast i8* %41 to %struct.fsrecovery*
  store %struct.fsrecovery* %42, %struct.fsrecovery** %8, align 8
  %43 = load %struct.fsrecovery*, %struct.fsrecovery** %8, align 8
  %44 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FS_UFS2_MAGIC, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %79

49:                                               ; preds = %36
  %50 = load %struct.fs*, %struct.fs** %7, align 8
  %51 = call i32 @memset(%struct.fs* %50, i32 0, i32 24)
  %52 = load %struct.fsrecovery*, %struct.fsrecovery** %8, align 8
  %53 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fs*, %struct.fs** %7, align 8
  %56 = getelementptr inbounds %struct.fs, %struct.fs* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.fsrecovery*, %struct.fsrecovery** %8, align 8
  %58 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fs*, %struct.fs** %7, align 8
  %61 = getelementptr inbounds %struct.fs, %struct.fs* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.fsrecovery*, %struct.fsrecovery** %8, align 8
  %63 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fs*, %struct.fs** %7, align 8
  %66 = getelementptr inbounds %struct.fs, %struct.fs* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.fsrecovery*, %struct.fsrecovery** %8, align 8
  %68 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.fs*, %struct.fs** %7, align 8
  %71 = getelementptr inbounds %struct.fs, %struct.fs* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.fsrecovery*, %struct.fsrecovery** %8, align 8
  %73 = getelementptr inbounds %struct.fsrecovery, %struct.fsrecovery* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.fs*, %struct.fs** %7, align 8
  %76 = getelementptr inbounds %struct.fs, %struct.fs* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @free(i8* %77)
  store i32 1, i32* %4, align 4
  br label %79

79:                                               ; preds = %49, %48, %35, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i64 @blread(i32, i8*, i32, i32) #1

declare dso_local i32 @memset(%struct.fs*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
