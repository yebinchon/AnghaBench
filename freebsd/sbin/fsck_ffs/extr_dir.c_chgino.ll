; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_chgino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_chgino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i32, i32, %struct.direct* }
%struct.direct = type { i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@KEEPON = common dso_local global i32 0, align 4
@ALTERED = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inodesc*)* @chgino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chgino(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %5 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %6 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %5, i32 0, i32 2
  %7 = load %struct.direct*, %struct.direct** %6, align 8
  store %struct.direct* %7, %struct.direct** %4, align 8
  %8 = load %struct.direct*, %struct.direct** %4, align 8
  %9 = getelementptr inbounds %struct.direct, %struct.direct* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %12 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.direct*, %struct.direct** %4, align 8
  %15 = getelementptr inbounds %struct.direct, %struct.direct* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = add nsw i32 %17, 1
  %19 = call i64 @memcmp(i32 %10, i32 %13, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @KEEPON, align 4
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %25 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.direct*, %struct.direct** %4, align 8
  %28 = getelementptr inbounds %struct.direct, %struct.direct* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %30 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_2__* @inoinfo(i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.direct*, %struct.direct** %4, align 8
  %36 = getelementptr inbounds %struct.direct, %struct.direct* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @ALTERED, align 4
  %38 = load i32, i32* @STOP, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %23, %21
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @inoinfo(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
