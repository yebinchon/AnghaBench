; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }

@zfs_trim_enabled = common dso_local global i64 0, align 8
@zfs_sync_pass_deferred_free = common dso_local global i64 0, align 8
@TXG_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_free(%struct.TYPE_7__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = call i32 @zfs_blkptr_verify(%struct.TYPE_7__* %7, i32* %8)
  %10 = load i32*, i32** %6, align 8
  %11 = call i64 @BP_IS_EMBEDDED(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %58

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @metaslab_check_free(%struct.TYPE_7__* %15, i32* %16)
  %18 = load i64, i64* @zfs_trim_enabled, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  %22 = call i64 @BP_IS_GANG(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @BP_GET_DEDUP(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = call i64 @spa_sync_pass(%struct.TYPE_7__* %35)
  %37 = load i64, i64* @zfs_sync_pass_deferred_free, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34, %28, %24, %20, %14
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @TXG_MASK, align 8
  %45 = and i64 %43, %44
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @bplist_append(i32* %46, i32* %47)
  br label %58

49:                                               ; preds = %34
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @BP_GET_PSIZE(i32* %53)
  %55 = call i32 @zio_free_sync(i32* null, %struct.TYPE_7__* %50, i64 %51, i32* %52, i32 %54, i32 0)
  %56 = call i32 @zio_wait(i32 %55)
  %57 = call i32 @VERIFY0(i32 %56)
  br label %58

58:                                               ; preds = %13, %49, %39
  ret void
}

declare dso_local i32 @zfs_blkptr_verify(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32 @metaslab_check_free(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @BP_IS_GANG(i32*) #1

declare dso_local i64 @BP_GET_DEDUP(i32*) #1

declare dso_local i64 @spa_sync_pass(%struct.TYPE_7__*) #1

declare dso_local i32 @bplist_append(i32*, i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @zio_free_sync(i32*, %struct.TYPE_7__*, i64, i32*, i32, i32) #1

declare dso_local i32 @BP_GET_PSIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
