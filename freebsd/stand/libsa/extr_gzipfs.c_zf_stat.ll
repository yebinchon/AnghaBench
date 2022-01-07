; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_zf_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_zf_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.stat = type { i32 }
%struct.z_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.stat*)* @zf_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zf_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.z_file*, align 8
  %6 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %7 = load %struct.open_file*, %struct.open_file** %3, align 8
  %8 = getelementptr inbounds %struct.open_file, %struct.open_file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.z_file*
  store %struct.z_file* %10, %struct.z_file** %5, align 8
  %11 = load %struct.z_file*, %struct.z_file** %5, align 8
  %12 = getelementptr inbounds %struct.z_file, %struct.z_file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.stat*, %struct.stat** %4, align 8
  %15 = call i32 @fstat(i32 %13, %struct.stat* %14)
  store i32 %15, i32* %6, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.stat*, %struct.stat** %4, align 8
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
