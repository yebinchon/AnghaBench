; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_zf_rewind.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_zf_rewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.z_file = type { %struct.TYPE_2__, i64, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @zf_rewind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zf_rewind(%struct.open_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.z_file*, align 8
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  %5 = load %struct.open_file*, %struct.open_file** %3, align 8
  %6 = getelementptr inbounds %struct.open_file, %struct.open_file* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.z_file*
  store %struct.z_file* %8, %struct.z_file** %4, align 8
  %9 = load %struct.z_file*, %struct.z_file** %4, align 8
  %10 = getelementptr inbounds %struct.z_file, %struct.z_file* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.z_file*, %struct.z_file** %4, align 8
  %13 = getelementptr inbounds %struct.z_file, %struct.z_file* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SEEK_SET, align 4
  %16 = call i32 @lseek(i32 %11, i32 %14, i32 %15)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.z_file*, %struct.z_file** %4, align 8
  %21 = getelementptr inbounds %struct.z_file, %struct.z_file* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.z_file*, %struct.z_file** %4, align 8
  %24 = getelementptr inbounds %struct.z_file, %struct.z_file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = load %struct.z_file*, %struct.z_file** %4, align 8
  %27 = getelementptr inbounds %struct.z_file, %struct.z_file* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.z_file*, %struct.z_file** %4, align 8
  %29 = getelementptr inbounds %struct.z_file, %struct.z_file* %28, i32 0, i32 0
  %30 = call i32 @inflateReset(%struct.TYPE_2__* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %19, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @inflateReset(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
