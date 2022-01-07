; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.stat = type { i32, i32, i64, i64 }
%struct.file = type { i32, i32 }

@S_IRUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@F_ISDIR = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.stat*)* @cd9660_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
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
  %10 = load i32, i32* @S_IRUSR, align 4
  %11 = load i32, i32* @S_IRGRP, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IROTH, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.stat*, %struct.stat** %4, align 8
  %16 = getelementptr inbounds %struct.stat, %struct.stat* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @F_ISDIR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @S_IFDIR, align 4
  %25 = load %struct.stat*, %struct.stat** %4, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @S_IFREG, align 4
  %31 = load %struct.stat*, %struct.stat** %4, align 8
  %32 = getelementptr inbounds %struct.stat, %struct.stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.stat*, %struct.stat** %4, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load %struct.stat*, %struct.stat** %4, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = getelementptr inbounds %struct.file, %struct.file* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.stat*, %struct.stat** %4, align 8
  %44 = getelementptr inbounds %struct.stat, %struct.stat* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
