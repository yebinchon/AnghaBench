; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_evict_dbufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_evict_dbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_objset_evict_dbufs(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = call i32 @mutex_enter(i32* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = call i32* @list_head(i32* %9)
  store i32* %10, i32** %4, align 8
  br label %11

11:                                               ; preds = %46, %1
  %12 = load i32*, i32** %4, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %47

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @FTAG, align 4
  %17 = call i64 @dnode_add_ref(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @list_insert_after(i32* %21, i32* %22, i32* %3)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @mutex_exit(i32* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @dnode_evict_dbufs(i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dnode_rele(i32* %29, i32 %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @mutex_enter(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = call i32* @list_next(i32* %36, i32* %3)
  store i32* %37, i32** %4, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = call i32 @list_remove(i32* %39, i32* %3)
  br label %46

41:                                               ; preds = %14
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @list_next(i32* %43, i32* %44)
  store i32* %45, i32** %4, align 8
  br label %46

46:                                               ; preds = %41, %19
  br label %11

47:                                               ; preds = %11
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @mutex_exit(i32* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %52 = call i32* @DMU_USERUSED_DNODE(%struct.TYPE_6__* %51)
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %47
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = call i32* @DMU_GROUPUSED_DNODE(%struct.TYPE_6__* %55)
  %57 = call i32 @dnode_evict_dbufs(i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = call i32* @DMU_USERUSED_DNODE(%struct.TYPE_6__* %58)
  %60 = call i32 @dnode_evict_dbufs(i32* %59)
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %63 = call i32* @DMU_META_DNODE(%struct.TYPE_6__* %62)
  %64 = call i32 @dnode_evict_dbufs(i32* %63)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @list_head(i32*) #1

declare dso_local i64 @dnode_add_ref(i32*, i32) #1

declare dso_local i32 @list_insert_after(i32*, i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dnode_evict_dbufs(i32*) #1

declare dso_local i32 @dnode_rele(i32*, i32) #1

declare dso_local i32* @list_next(i32*, i32*) #1

declare dso_local i32 @list_remove(i32*, i32*) #1

declare dso_local i32* @DMU_USERUSED_DNODE(%struct.TYPE_6__*) #1

declare dso_local i32* @DMU_GROUPUSED_DNODE(%struct.TYPE_6__*) #1

declare dso_local i32* @DMU_META_DNODE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
