; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_findino.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_findino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i64, i32, %struct.direct* }
%struct.direct = type { i64, i32 }

@KEEPON = common dso_local global i32 0, align 4
@UFS_ROOTINO = common dso_local global i64 0, align 8
@maxino = common dso_local global i64 0, align 8
@STOP = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @findino(%struct.inodesc* %0) #0 {
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
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @KEEPON, align 4
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.direct*, %struct.direct** %4, align 8
  %16 = getelementptr inbounds %struct.direct, %struct.direct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %19 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @strcmp(i32 %17, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %14
  %24 = load %struct.direct*, %struct.direct** %4, align 8
  %25 = getelementptr inbounds %struct.direct, %struct.direct* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UFS_ROOTINO, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.direct*, %struct.direct** %4, align 8
  %31 = getelementptr inbounds %struct.direct, %struct.direct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @maxino, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.direct*, %struct.direct** %4, align 8
  %37 = getelementptr inbounds %struct.direct, %struct.direct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %40 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* @STOP, align 4
  %42 = load i32, i32* @FOUND, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %29, %23, %14
  %45 = load i32, i32* @KEEPON, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %35, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
