; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bptree.c_bptree_is_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_bptree.c_bptree_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bptree_is_empty(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @FTAG, align 4
  %11 = call i32 @dmu_bonus_hold(i32* %8, i32 %9, i32 %10, %struct.TYPE_5__** %5)
  %12 = call i32 @VERIFY0(i32 %11)
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %6, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = load i32, i32* @FTAG, align 4
  %26 = call i32 @dmu_buf_rele(%struct.TYPE_5__* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  ret i32 %27
}

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_bonus_hold(i32*, i32, i32, %struct.TYPE_5__**) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
