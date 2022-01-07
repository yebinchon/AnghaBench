; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.dirent = type { i32, i32, i32, i64 }
%struct.tarfile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@package = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.dirent*)* @pkg_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_readdir(%struct.open_file* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.tarfile*, align 8
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %7 = load %struct.open_file*, %struct.open_file** %4, align 8
  %8 = getelementptr inbounds %struct.open_file, %struct.open_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tarfile*
  store %struct.tarfile* %10, %struct.tarfile** %6, align 8
  %11 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %12 = icmp ne %struct.tarfile* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EBADF, align 4
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* @package, align 4
  %17 = call %struct.tarfile* @scan_tarfile(i32 %16, i32* null)
  store %struct.tarfile* %17, %struct.tarfile** %6, align 8
  %18 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %19 = icmp eq %struct.tarfile* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOENT, align 4
  store i32 %21, i32* %3, align 4
  br label %38

22:                                               ; preds = %15
  %23 = load %struct.dirent*, %struct.dirent** %5, align 8
  %24 = getelementptr inbounds %struct.dirent, %struct.dirent* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.dirent*, %struct.dirent** %5, align 8
  %26 = getelementptr inbounds %struct.dirent, %struct.dirent* %25, i32 0, i32 0
  store i32 24, i32* %26, align 8
  %27 = load i32, i32* @DT_REG, align 4
  %28 = load %struct.dirent*, %struct.dirent** %5, align 8
  %29 = getelementptr inbounds %struct.dirent, %struct.dirent* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.dirent*, %struct.dirent** %5, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.tarfile*, %struct.tarfile** %6, align 8
  %34 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32 %32, i32 %36, i32 4)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %20, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.tarfile* @scan_tarfile(i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
