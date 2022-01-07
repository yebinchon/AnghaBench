; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.open_file = type { i64 }
%struct.disk_devdesc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ud_info = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @userdisk_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userdisk_close(%struct.open_file* %0) #0 {
  %2 = alloca %struct.open_file*, align 8
  %3 = alloca %struct.disk_devdesc*, align 8
  store %struct.open_file* %0, %struct.open_file** %2, align 8
  %4 = load %struct.open_file*, %struct.open_file** %2, align 8
  %5 = getelementptr inbounds %struct.open_file, %struct.open_file* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %7, %struct.disk_devdesc** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ud_info, align 8
  %9 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %10 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ud_info, align 8
  %18 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %19 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ud_info, align 8
  %28 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %29 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bcache_free(i32* %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ud_info, align 8
  %37 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %38 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %26, %1
  %44 = load %struct.disk_devdesc*, %struct.disk_devdesc** %3, align 8
  %45 = call i32 @disk_close(%struct.disk_devdesc* %44)
  ret i32 %45
}

declare dso_local i32 @bcache_free(i32*) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
