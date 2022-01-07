; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efipart.c_efipart_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.disk_devdesc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32*, i32* }
%struct.devdesc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEVT_DISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @efipart_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efipart_close(%struct.open_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.disk_devdesc*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  %6 = load %struct.open_file*, %struct.open_file** %3, align 8
  %7 = getelementptr inbounds %struct.open_file, %struct.open_file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.disk_devdesc*
  store %struct.disk_devdesc* %9, %struct.disk_devdesc** %4, align 8
  %10 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %11 = icmp eq %struct.disk_devdesc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %16 = bitcast %struct.disk_devdesc* %15 to %struct.devdesc*
  %17 = call %struct.TYPE_7__* @efiblk_get_pdinfo(%struct.devdesc* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %14
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @bcache_free(i32* %36)
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %31, %22
  %41 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %42 = getelementptr inbounds %struct.disk_devdesc, %struct.disk_devdesc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DEVT_DISK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.disk_devdesc*, %struct.disk_devdesc** %4, align 8
  %51 = call i32 @disk_close(%struct.disk_devdesc* %50)
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49, %20, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_7__* @efiblk_get_pdinfo(%struct.devdesc*) #1

declare dso_local i32 @bcache_free(i32*) #1

declare dso_local i32 @disk_close(%struct.disk_devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
