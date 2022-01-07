; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifpfsync.c_setpfsync_maxupd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifpfsync.c_setpfsync_maxupd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.afswtch = type { i32 }
%struct.pfsyncreq = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"maxupd %s: out of range\00", align 1
@ifr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIOCGETPFSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SIOCGETPFSYNC\00", align 1
@SIOCSETPFSYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"SIOCSETPFSYNC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setpfsync_maxupd(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.pfsyncreq, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 255
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = bitcast %struct.pfsyncreq* %9 to i8*
  %23 = call i32 @memset(i8* %22, i32 0, i32 4)
  %24 = ptrtoint %struct.pfsyncreq* %9 to i64
  store i64 %24, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SIOCGETPFSYNC, align 4
  %27 = call i32 @ioctl(i32 %25, i32 %26, i64 ptrtoint (%struct.TYPE_2__* @ifr to i64))
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %21
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SIOCSETPFSYNC, align 4
  %36 = call i32 @ioctl(i32 %34, i32 %35, i64 ptrtoint (%struct.TYPE_2__* @ifr to i64))
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %31
  ret void
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
