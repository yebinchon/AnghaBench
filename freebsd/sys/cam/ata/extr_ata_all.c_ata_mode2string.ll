; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_mode2string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_all.c_ata_mode2string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"UNSUPPORTED\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PIO0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PIO1\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PIO2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PIO3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PIO4\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"WDMA0\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"WDMA1\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"WDMA2\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UDMA0\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UDMA1\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"UDMA2\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"UDMA3\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"UDMA4\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"UDMA5\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"UDMA6\00", align 1
@ATA_DMA_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"BIOSDMA\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"BIOSPIO\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ata_mode2string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %22 [
    i32 -1, label %5
    i32 0, label %6
    i32 142, label %7
    i32 141, label %8
    i32 140, label %9
    i32 139, label %10
    i32 138, label %11
    i32 130, label %12
    i32 129, label %13
    i32 128, label %14
    i32 137, label %15
    i32 136, label %16
    i32 135, label %17
    i32 134, label %18
    i32 133, label %19
    i32 132, label %20
    i32 131, label %21
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %29

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %29

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %29

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %29

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %29

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %29

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %29

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %29

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %29

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %29

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %29

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %29

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %29

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %29

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %29

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %29

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @ATA_DMA_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %29

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %27, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
