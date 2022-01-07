; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bcache_devdata = type { i32, i8*, i32 }
%struct.disk_devdesc = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@userdisk_realstrategy = common dso_local global i32 0, align 4
@ud_info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @userdisk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userdisk_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca %struct.bcache_devdata, align 8
  %14 = alloca %struct.disk_devdesc*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64* %5, i64** %12, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %16, %struct.disk_devdesc** %14, align 8
  %17 = load i32, i32* @userdisk_realstrategy, align 4
  %18 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %13, i32 0, i32 2
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %13, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ud_info, align 8
  %22 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %23 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %13, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.disk_devdesc*, %struct.disk_devdesc** %14, align 8
  %33 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64*, i64** %12, align 8
  %39 = call i32 @bcache_strategy(%struct.bcache_devdata* %13, i32 %30, i64 %35, i64 %36, i8* %37, i64* %38)
  ret i32 %39
}

declare dso_local i32 @bcache_strategy(%struct.bcache_devdata*, i32, i64, i64, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
