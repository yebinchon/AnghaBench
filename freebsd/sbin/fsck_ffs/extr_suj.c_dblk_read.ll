; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_dblk_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_dblk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_blk = type { i32, i32* }

@disk = common dso_local global i32 0, align 4
@fs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to read data block %jd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32)* @dblk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dblk_read(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_blk*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.data_blk* @dblk_lookup(i32 %6)
  store %struct.data_blk* %7, %struct.data_blk** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %10 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %15 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %20 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @free(i32* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %4, align 4
  %25 = call i32* @errmalloc(i32 %24)
  %26 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %27 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %30 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @fs, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @fsbtodb(i32 %31, i32 %32)
  %34 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %35 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @bread(i32* @disk, i32 %33, i32* %36, i32 %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @err_suj(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %23
  br label %44

44:                                               ; preds = %43, %2
  %45 = load %struct.data_blk*, %struct.data_blk** %5, align 8
  %46 = getelementptr inbounds %struct.data_blk, %struct.data_blk* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  ret i32* %47
}

declare dso_local %struct.data_blk* @dblk_lookup(i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @errmalloc(i32) #1

declare dso_local i32 @bread(i32*, i32, i32*, i32) #1

declare dso_local i32 @fsbtodb(i32, i32) #1

declare dso_local i32 @err_suj(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
