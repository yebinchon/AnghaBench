; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_dvd_struct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_ioctl.c_linux_to_bsd_dvd_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.dvd_struct = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.dvd_struct*)* @linux_to_bsd_dvd_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_to_bsd_dvd_struct(%struct.TYPE_9__* %0, %struct.dvd_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.dvd_struct*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.dvd_struct* %1, %struct.dvd_struct** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %10 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %12 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %43 [
    i32 128, label %14
    i32 131, label %28
    i32 130, label %35
    i32 132, label %42
    i32 129, label %42
  ]

14:                                               ; preds = %2
  %15 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %16 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %14
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %27 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %45

28:                                               ; preds = %2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %34 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dvd_struct*, %struct.dvd_struct** %5, align 8
  %41 = getelementptr inbounds %struct.dvd_struct, %struct.dvd_struct* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  br label %45

42:                                               ; preds = %2, %2
  br label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %42, %35, %28, %21
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
