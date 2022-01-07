; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_sync_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_pool.c_dsl_pool_sync_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_pool_sync_done(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %13, %2
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.TYPE_10__* @txg_list_head(i32* %9, i32 %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %5, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_12__* @dmu_objset_ds(i32 %16)
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %6, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @zil_clean(%struct.TYPE_10__* %18, i32 %19)
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @txg_list_remove_this(i32* %22, %struct.TYPE_10__* %23, i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dmu_objset_is_dirty(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = call i32 @dmu_buf_rele(i32 %37, %struct.TYPE_10__* %38)
  br label %7

40:                                               ; preds = %7
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @dmu_objset_is_dirty(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  ret void
}

declare dso_local %struct.TYPE_10__* @txg_list_head(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @dmu_objset_ds(i32) #1

declare dso_local i32 @zil_clean(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @txg_list_remove_this(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_objset_is_dirty(i32, i32) #1

declare dso_local i32 @dmu_buf_rele(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
