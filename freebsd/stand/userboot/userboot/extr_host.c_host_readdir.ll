; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_host.c_host_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_host.c_host_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32 }
%struct.dirent = type { i64, i32, i32, i32 }

@readdir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.dirent*)* @host_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host_readdir(%struct.open_file* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %10 = load i32, i32* @readdir, align 4
  %11 = load %struct.open_file*, %struct.open_file** %4, align 8
  %12 = getelementptr inbounds %struct.open_file, %struct.open_file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dirent*, %struct.dirent** %5, align 8
  %15 = getelementptr inbounds %struct.dirent, %struct.dirent* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @CALLBACK(i32 %10, i32 %13, i32* %6, i32* %7, i64* %8, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %3, align 4
  br label %32

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.dirent*, %struct.dirent** %5, align 8
  %25 = getelementptr inbounds %struct.dirent, %struct.dirent* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.dirent*, %struct.dirent** %5, align 8
  %28 = getelementptr inbounds %struct.dirent, %struct.dirent* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.dirent*, %struct.dirent** %5, align 8
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %22, %20
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @CALLBACK(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
