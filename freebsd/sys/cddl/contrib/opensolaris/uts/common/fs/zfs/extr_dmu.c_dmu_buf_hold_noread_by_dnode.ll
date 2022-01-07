; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_noread_by_dnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_noread_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@RW_READER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_buf_hold_noread_by_dnode(%struct.TYPE_7__* %0, i32 %1, i8* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32** %3, i32*** %9, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @dbuf_whichblock(%struct.TYPE_7__* %12, i32 0, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* @RW_READER, align 4
  %18 = call i32 @rw_enter(i32* %16, i32 %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call %struct.TYPE_8__* @dbuf_hold(%struct.TYPE_7__* %19, i32 %20, i8* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %11, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i32 @rw_exit(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %27 = icmp eq %struct.TYPE_8__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32**, i32*** %9, align 8
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* @EIO, align 4
  %31 = call i32 @SET_ERROR(i32 %30)
  store i32 %31, i32* %5, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32**, i32*** %9, align 8
  store i32* %34, i32** %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @dbuf_whichblock(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @dbuf_hold(%struct.TYPE_7__*, i32, i8*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
