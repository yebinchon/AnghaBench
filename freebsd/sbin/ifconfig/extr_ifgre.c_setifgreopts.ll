; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgre.c_setifgreopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgre.c_setifgreopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.afswtch = type { i32 }

@ifr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GREGOPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"ioctl(GREGOPTS)\00", align 1
@GRESOPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ioctl(GIFSOPTS)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, %struct.afswtch*)* @setifgreopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setifgreopts(i8* %0, i32 %1, i32 %2, %struct.afswtch* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.afswtch*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.afswtch* %3, %struct.afswtch** %8, align 8
  %10 = ptrtoint i32* %9 to i64
  store i64 %10, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ifr, i32 0, i32 0), align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @GREGOPTS, align 4
  %13 = call i32 @ioctl(i32 %11, i32 %12, %struct.TYPE_3__* @ifr)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %37

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 0, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %30

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @GRESOPTS, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, %struct.TYPE_3__* @ifr)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %15, %35, %30
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
