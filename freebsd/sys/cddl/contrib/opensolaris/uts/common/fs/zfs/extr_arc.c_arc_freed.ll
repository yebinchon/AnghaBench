; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_freed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_freed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@arc_anon = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_freed(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @spa_load_guid(i32* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @BP_IS_EMBEDDED(i32* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call %struct.TYPE_9__* @buf_hash_find(i32 %16, i32* %17, i32** %6)
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %5, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = call i32 @HDR_HAS_L1HDR(%struct.TYPE_9__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = call i32 @HDR_IO_IN_PROGRESS(%struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i64 @zfs_refcount_is_zero(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30, %22
  %37 = load i32, i32* @arc_anon, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @arc_change_state(i32 %37, %struct.TYPE_9__* %38, i32* %39)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = call i32 @arc_hdr_destroy(%struct.TYPE_9__* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @mutex_exit(i32* %43)
  br label %48

45:                                               ; preds = %30, %26
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @mutex_exit(i32* %46)
  br label %48

48:                                               ; preds = %21, %45, %36
  ret void
}

declare dso_local i32 @spa_load_guid(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_IS_EMBEDDED(i32*) #1

declare dso_local %struct.TYPE_9__* @buf_hash_find(i32, i32*, i32**) #1

declare dso_local i32 @HDR_HAS_L1HDR(%struct.TYPE_9__*) #1

declare dso_local i32 @HDR_IO_IN_PROGRESS(%struct.TYPE_9__*) #1

declare dso_local i64 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @arc_change_state(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @arc_hdr_destroy(%struct.TYPE_9__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
