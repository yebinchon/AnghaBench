; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_setifmediacallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_setifmediacallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ifmediareq = type { %struct.ifmediareq*, i32 }

@setifmediacallback.did_it = internal global i32 0, align 4
@ifr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SIOCSIFMEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SIOCSIFMEDIA (media)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @setifmediacallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setifmediacallback(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifmediareq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ifmediareq*
  store %struct.ifmediareq* %7, %struct.ifmediareq** %5, align 8
  %8 = load i32, i32* @setifmediacallback.did_it, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %2
  %11 = load %struct.ifmediareq*, %struct.ifmediareq** %5, align 8
  %12 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ifr, i32 0, i32 0), align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @SIOCSIFMEDIA, align 4
  %16 = call i64 @ioctl(i32 %14, i32 %15, i32 ptrtoint (%struct.TYPE_2__* @ifr to i32))
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %10
  %21 = load %struct.ifmediareq*, %struct.ifmediareq** %5, align 8
  %22 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %21, i32 0, i32 0
  %23 = load %struct.ifmediareq*, %struct.ifmediareq** %22, align 8
  %24 = call i32 @free(%struct.ifmediareq* %23)
  %25 = load %struct.ifmediareq*, %struct.ifmediareq** %5, align 8
  %26 = call i32 @free(%struct.ifmediareq* %25)
  store i32 1, i32* @setifmediacallback.did_it, align 4
  br label %27

27:                                               ; preds = %20, %2
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @free(%struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
