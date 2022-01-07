; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_ptblread.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_disk.c_ptblread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_devdesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.disk_devdesc*, i32, i32, i64, i8*, i32*)* }
%struct.open_disk = type { i32 }

@F_READ = common dso_local global i32 0, align 4
@F_NORA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptblread(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.disk_devdesc*, align 8
  %10 = alloca %struct.open_disk*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %12, %struct.disk_devdesc** %9, align 8
  %13 = load %struct.disk_devdesc*, %struct.disk_devdesc** %9, align 8
  %14 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.open_disk*
  store %struct.open_disk* %17, %struct.open_disk** %10, align 8
  %18 = load %struct.open_disk*, %struct.open_disk** %10, align 8
  %19 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 512
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load %struct.disk_devdesc*, %struct.disk_devdesc** %9, align 8
  %25 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.disk_devdesc*, i32, i32, i64, i8*, i32*)*, i32 (%struct.disk_devdesc*, i32, i32, i64, i8*, i32*)** %28, align 8
  %30 = load %struct.disk_devdesc*, %struct.disk_devdesc** %9, align 8
  %31 = load i32, i32* @F_READ, align 4
  %32 = load i32, i32* @F_NORA, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.open_disk*, %struct.open_disk** %10, align 8
  %37 = getelementptr inbounds %struct.open_disk, %struct.open_disk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %35, %39
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 %29(%struct.disk_devdesc* %30, i32 %33, i32 %34, i64 %40, i8* %41, i32* null)
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
