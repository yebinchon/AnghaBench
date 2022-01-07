; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.stat = type { i32, i32, i32 }
%struct.tarfile = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.stat*)* @pkg_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.stat*, align 8
  %6 = alloca %struct.tarfile*, align 8
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.stat* %1, %struct.stat** %5, align 8
  %7 = load %struct.open_file*, %struct.open_file** %4, align 8
  %8 = getelementptr inbounds %struct.open_file, %struct.open_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tarfile*
  store %struct.tarfile* %10, %struct.tarfile** %6, align 8
  %11 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %12 = icmp eq %struct.tarfile* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EBADF, align 4
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.stat*, %struct.stat** %5, align 8
  %17 = call i32 @memset(%struct.stat* %16, i32 0, i32 12)
  %18 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %19 = call i32 @get_mode(%struct.tarfile* %18)
  %20 = load %struct.stat*, %struct.stat** %5, align 8
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %23 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stat*, %struct.stat** %5, align 8
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %28 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 511
  %31 = sdiv i32 %30, 512
  %32 = load %struct.stat*, %struct.stat** %5, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %15, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memset(%struct.stat*, i32, i32) #1

declare dso_local i32 @get_mode(%struct.tarfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
