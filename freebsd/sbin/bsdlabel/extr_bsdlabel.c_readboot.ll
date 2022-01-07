; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_readboot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_readboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@xxboot = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"/boot/boot\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@BBSIZE = common dso_local global i64 0, align 8
@bootarea = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"read error %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"boot code %s is wrong size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @readboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readboot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 8
  %3 = load i8*, i8** @xxboot, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** @xxboot, align 8
  br label %6

6:                                                ; preds = %5, %0
  %7 = load i8*, i8** @xxboot, align 8
  %8 = load i32, i32* @O_RDONLY, align 4
  %9 = call i32 @open(i8* %7, i32 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i8*, i8** @xxboot, align 8
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %6
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @fstat(i32 %16, %struct.stat* %2)
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BBSIZE, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* @bootarea, align 4
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @read(i32 %23, i32 %24, i64 %26)
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %2, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i8*, i8** @xxboot, align 8
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %22
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @close(i32 %35)
  br label %40

37:                                               ; preds = %15
  %38 = load i8*, i8** @xxboot, align 8
  %39 = call i32 @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @read(i32, i32, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
