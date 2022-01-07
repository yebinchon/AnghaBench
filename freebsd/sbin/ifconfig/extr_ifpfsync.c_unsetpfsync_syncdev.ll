; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifpfsync.c_unsetpfsync_syncdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifpfsync.c_unsetpfsync_syncdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.afswtch = type { i32 }
%struct.pfsyncreq = type { i32 }

@ifr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SIOCGETPFSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"SIOCGETPFSYNC\00", align 1
@SIOCSETPFSYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"SIOCSETPFSYNC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unsetpfsync_syncdev(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca %struct.pfsyncreq, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = bitcast %struct.pfsyncreq* %9 to i8*
  %11 = call i32 @bzero(i8* %10, i32 4)
  %12 = ptrtoint %struct.pfsyncreq* %9 to i64
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SIOCGETPFSYNC, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, i64 ptrtoint (%struct.TYPE_2__* @ifr to i64))
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %4
  %20 = getelementptr inbounds %struct.pfsyncreq, %struct.pfsyncreq* %9, i32 0, i32 0
  %21 = bitcast i32* %20 to i8*
  %22 = call i32 @bzero(i8* %21, i32 4)
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SIOCSETPFSYNC, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, i64 ptrtoint (%struct.TYPE_2__* @ifr to i64))
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %19
  ret void
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
