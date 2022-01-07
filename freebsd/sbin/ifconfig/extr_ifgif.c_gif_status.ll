; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgif.c_gif_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifgif.c_gif_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ifr = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@GIFGOPTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"\09options\00", align 1
@GIFBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gif_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gif_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = ptrtoint i32* %3 to i64
  store i64 %4, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ifr, i32 0, i32 0), align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @GIFGOPTS, align 4
  %7 = call i32 @ioctl(i32 %5, i32 %6, %struct.TYPE_3__* @ifr)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GIFBITS, align 4
  %17 = call i32 @printb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  %18 = call i32 @putchar(i8 signext 10)
  br label %19

19:                                               ; preds = %14, %13, %9
  ret void
}

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @printb(i8*, i32, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
