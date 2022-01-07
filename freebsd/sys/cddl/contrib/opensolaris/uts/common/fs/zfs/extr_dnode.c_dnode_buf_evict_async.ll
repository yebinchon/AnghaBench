; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode.c_dnode_buf_evict_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dnode.c_dnode_buf_evict_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@dnode_buf_evict = common dso_local global i32 0, align 4
@DN_SLOT_UNINIT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dnode_buf_evict_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dnode_buf_evict_async(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load i32, i32* @dnode_buf_evict, align 4
  %10 = call i32 @DNODE_STAT_BUMP(i32 %9)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %61, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %22
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %5, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = call i32 @DN_SLOT_IS_PTR(%struct.TYPE_7__* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %17
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = call i32 @zrl_destroy(i32* %31)
  %33 = load i8*, i8** @DN_SLOT_UNINIT, align 8
  %34 = bitcast i8* %33 to %struct.TYPE_7__*
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %36, align 8
  br label %61

37:                                               ; preds = %17
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = call i32 @zrl_add(i32* %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %6, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = call i32 @zfs_refcount_is_zero(i32* %45)
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @zfs_refcount_is_zero(i32* %49)
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = call i32 @dnode_destroy(%struct.TYPE_7__* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = call i32 @zrl_destroy(i32* %55)
  %57 = load i8*, i8** @DN_SLOT_UNINIT, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_7__*
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  br label %61

61:                                               ; preds = %37, %29
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %11

64:                                               ; preds = %11
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 16
  %71 = add i64 16, %70
  %72 = trunc i64 %71 to i32
  %73 = call i32 @kmem_free(%struct.TYPE_9__* %65, i32 %72)
  ret void
}

declare dso_local i32 @DNODE_STAT_BUMP(i32) #1

declare dso_local i32 @DN_SLOT_IS_PTR(%struct.TYPE_7__*) #1

declare dso_local i32 @zrl_destroy(i32*) #1

declare dso_local i32 @zrl_add(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @dnode_destroy(%struct.TYPE_7__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
