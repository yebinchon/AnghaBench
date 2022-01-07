; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_noread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_noread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_buf_hold_noread(i32* %0, i32 %1, i32 %2, i8* %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32** %4, i32*** %11, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i32 @dnode_hold(i32* %16, i32 %17, i32 %18, %struct.TYPE_8__** %12)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %53

24:                                               ; preds = %5
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dbuf_whichblock(%struct.TYPE_8__* %25, i32 0, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* @RW_READER, align 4
  %31 = call i32 @rw_enter(i32* %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call %struct.TYPE_9__* @dbuf_hold(%struct.TYPE_8__* %32, i32 %33, i8* %34)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %14, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = call i32 @rw_exit(i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %40 = load i32, i32* @FTAG, align 4
  %41 = call i32 @dnode_rele(%struct.TYPE_8__* %39, i32 %40)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %43 = icmp eq %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %24
  %45 = load i32**, i32*** %11, align 8
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @EIO, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %53

48:                                               ; preds = %24
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32**, i32*** %11, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %48, %44, %22
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @dnode_hold(i32*, i32, i32, %struct.TYPE_8__**) #1

declare dso_local i32 @dbuf_whichblock(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @dbuf_hold(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
