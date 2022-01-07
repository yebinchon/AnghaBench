; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i32 }
%struct.dqblk = type { i32 }

@Q_GETQUOTA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quota_read(%struct.quotafile* %0, %struct.dqblk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.quotafile*, align 8
  %6 = alloca %struct.dqblk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %5, align 8
  store %struct.dqblk* %1, %struct.dqblk** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %10 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* @Q_GETQUOTA, align 4
  %15 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %16 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @QCMD(i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %20 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %25 = call i32 @quotactl(i32 %21, i32 %22, i32 %23, %struct.dqblk* %24)
  store i32 %25, i32* %4, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %28 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %40 [
    i32 32, label %30
    i32 64, label %35
  ]

30:                                               ; preds = %26
  %31 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %32 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @quota_read32(%struct.quotafile* %31, %struct.dqblk* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %37 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @quota_read64(%struct.quotafile* %36, %struct.dqblk* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %35, %30, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @QCMD(i32, i32) #1

declare dso_local i32 @quotactl(i32, i32, i32, %struct.dqblk*) #1

declare dso_local i32 @quota_read32(%struct.quotafile*, %struct.dqblk*, i32) #1

declare dso_local i32 @quota_read64(%struct.quotafile*, %struct.dqblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
