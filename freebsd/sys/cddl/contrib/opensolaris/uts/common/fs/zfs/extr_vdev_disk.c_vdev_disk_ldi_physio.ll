; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_ldi_physio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_ldi_physio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@B_READ = common dso_local global i32 0, align 4
@B_WRITE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@B_BUSY = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@B_FAILFAST = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_disk_ldi_physio(i32* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  %18 = call i32 @SET_ERROR(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %81

19:                                               ; preds = %5
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @B_READ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @B_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %19
  %30 = phi i1 [ true, %19 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call %struct.TYPE_8__* @getrbuf(i32 %33)
  store %struct.TYPE_8__* %34, %struct.TYPE_8__** %12, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @B_BUSY, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @B_NOCACHE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @B_FAILFAST, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @lbtodb(i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %61 = call i32 @ldi_strategy(i32* %59, %struct.TYPE_8__* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %67 = call i32 @biowait(%struct.TYPE_8__* %66)
  store i32 %67, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %29
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @EIO, align 4
  %76 = call i32 @SET_ERROR(i32 %75)
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %69, %29
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %79 = call i32 @freerbuf(%struct.TYPE_8__* %78)
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %16
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_8__* @getrbuf(i32) #1

declare dso_local i32 @lbtodb(i32) #1

declare dso_local i32 @ldi_strategy(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @biowait(%struct.TYPE_8__*) #1

declare dso_local i32 @freerbuf(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
