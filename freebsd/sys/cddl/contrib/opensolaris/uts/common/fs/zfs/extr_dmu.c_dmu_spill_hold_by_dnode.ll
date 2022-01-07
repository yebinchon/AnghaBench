; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_spill_hold_by_dnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_spill_hold_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@DB_RF_HAVESTRUCT = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DMU_SPILL_BLKID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_spill_hold_by_dnode(%struct.TYPE_8__* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32** %3, i32*** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* @RW_READER, align 4
  %19 = call i32 @rw_enter(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = load i32, i32* @DMU_SPILL_BLKID, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = call %struct.TYPE_9__* @dbuf_hold(%struct.TYPE_8__* %21, i32 %22, i8* %23)
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = call i32 @rw_exit(i32* %31)
  br label %33

33:                                               ; preds = %29, %20
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dbuf_read(%struct.TYPE_9__* %38, i32* null, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32**, i32*** %8, align 8
  store i32* %45, i32** %46, align 8
  br label %51

47:                                               ; preds = %33
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @dbuf_rele(%struct.TYPE_9__* %48, i8* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @dbuf_hold(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dbuf_read(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @dbuf_rele(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
