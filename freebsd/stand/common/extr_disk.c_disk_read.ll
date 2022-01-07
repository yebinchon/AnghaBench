; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_disk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.disk_devdesc*, i32, i64, i32, i8*, i32*)* }
%struct.open_disk = type { i32 }

@F_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disk_read(%struct.disk_devdesc* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.disk_devdesc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.open_disk*, align 8
  %10 = alloca i32, align 4
  store %struct.disk_devdesc* %0, %struct.disk_devdesc** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %12 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.open_disk*
  store %struct.open_disk* %15, %struct.open_disk** %9, align 8
  %16 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %17 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.disk_devdesc*, i32, i64, i32, i8*, i32*)*, i32 (%struct.disk_devdesc*, i32, i64, i32, i8*, i32*)** %20, align 8
  %22 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %23 = load i32, i32* @F_READ, align 4
  %24 = load %struct.disk_devdesc*, %struct.disk_devdesc** %5, align 8
  %25 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.open_disk*, %struct.open_disk** %9, align 8
  %31 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 %21(%struct.disk_devdesc* %22, i32 %23, i64 %28, i32 %33, i8* %34, i32* null)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
