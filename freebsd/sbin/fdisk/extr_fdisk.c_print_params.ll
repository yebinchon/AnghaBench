; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_print_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fdisk/extr_fdisk.c_print_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [50 x i8] c"parameters extracted from in-core disklabel are:\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"cylinders=%d heads=%d sectors/track=%d (%d blks/cyl)\0A\0A\00", align 1
@cyls = common dso_local global i32 0, align 4
@heads = common dso_local global i32 0, align 4
@sectors = common dso_local global i32 0, align 4
@cylsecs = common dso_local global i32 0, align 4
@dos_cyls = common dso_local global i32 0, align 4
@dos_heads = common dso_local global i32 0, align 4
@dos_sectors = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"Figures below won't work with BIOS for partitions not in cyl 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"parameters to be used for BIOS calculations are:\0A\00", align 1
@dos_cylsecs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_params() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @cyls, align 4
  %3 = load i32, i32* @heads, align 4
  %4 = load i32, i32* @sectors, align 4
  %5 = load i32, i32* @cylsecs, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %2, i32 %3, i32 %4, i32 %5)
  %7 = load i32, i32* @dos_cyls, align 4
  %8 = icmp sgt i32 %7, 1023
  br i1 %8, label %15, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @dos_heads, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @dos_sectors, align 4
  %14 = icmp sgt i32 %13, 63
  br i1 %14, label %15, label %17

15:                                               ; preds = %12, %9, %0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i32, i32* @dos_cyls, align 4
  %20 = load i32, i32* @dos_heads, align 4
  %21 = load i32, i32* @dos_sectors, align 4
  %22 = load i32, i32* @dos_cylsecs, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
