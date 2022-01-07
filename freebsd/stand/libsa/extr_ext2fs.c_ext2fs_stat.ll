; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ext2fs.c_ext2fs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.stat = type { i32, i32, i32, i32 }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.stat*)* @ext2fs_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2fs_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %6 = load %struct.open_file*, %struct.open_file** %3, align 8
  %7 = getelementptr inbounds %struct.open_file, %struct.open_file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.file*
  store %struct.file* %9, %struct.file** %5, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stat*, %struct.stat** %4, align 8
  %15 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.stat*, %struct.stat** %4, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.file*, %struct.file** %5, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stat*, %struct.stat** %4, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.stat*, %struct.stat** %4, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
