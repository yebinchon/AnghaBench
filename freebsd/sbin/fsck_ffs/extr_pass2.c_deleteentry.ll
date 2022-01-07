; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass2.c_deleteentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_pass2.c_deleteentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i64, i32, %struct.direct* }
%struct.direct = type { i64 }

@KEEPON = common dso_local global i32 0, align 4
@ALTERED = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inodesc*)* @deleteentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deleteentry(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %5 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %6 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %5, i32 0, i32 2
  %7 = load %struct.direct*, %struct.direct** %6, align 8
  store %struct.direct* %7, %struct.direct** %4, align 8
  %8 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %9 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = icmp slt i32 %10, 2
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.direct*, %struct.direct** %4, align 8
  %15 = getelementptr inbounds %struct.direct, %struct.direct* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %18 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %1
  %22 = load i32, i32* @KEEPON, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %13
  %24 = load %struct.direct*, %struct.direct** %4, align 8
  %25 = getelementptr inbounds %struct.direct, %struct.direct* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @ALTERED, align 4
  %27 = load i32, i32* @STOP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FOUND, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %21
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
