; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_clearentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_clearentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i64, i32, %struct.direct* }
%struct.direct = type { i64 }

@KEEPON = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@ALTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clearentry(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %5 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %6 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %5, i32 0, i32 2
  %7 = load %struct.direct*, %struct.direct** %6, align 8
  store %struct.direct* %7, %struct.direct** %4, align 8
  %8 = load %struct.direct*, %struct.direct** %4, align 8
  %9 = getelementptr inbounds %struct.direct, %struct.direct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %12 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %17 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %15, %1
  %21 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %22 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* @KEEPON, align 4
  store i32 %25, i32* %2, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.direct*, %struct.direct** %4, align 8
  %28 = getelementptr inbounds %struct.direct, %struct.direct* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @STOP, align 4
  %30 = load i32, i32* @FOUND, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ALTERED, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %20
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
