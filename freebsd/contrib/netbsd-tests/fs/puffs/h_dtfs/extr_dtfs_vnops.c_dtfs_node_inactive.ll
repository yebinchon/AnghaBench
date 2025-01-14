; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/fs/puffs/h_dtfs/extr_dtfs_vnops.c_dtfs_node_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.puffs_usermount = type { i32 }
%struct.puffs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@PUFFS_SETBACK_NOREF_N1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtfs_node_inactive(%struct.puffs_usermount* %0, %struct.puffs_node* %1) #0 {
  %3 = alloca %struct.puffs_usermount*, align 8
  %4 = alloca %struct.puffs_node*, align 8
  %5 = alloca %struct.puffs_node*, align 8
  store %struct.puffs_usermount* %0, %struct.puffs_usermount** %3, align 8
  store %struct.puffs_node* %1, %struct.puffs_node** %4, align 8
  %6 = load %struct.puffs_node*, %struct.puffs_node** %4, align 8
  store %struct.puffs_node* %6, %struct.puffs_node** %5, align 8
  %7 = load %struct.puffs_node*, %struct.puffs_node** %5, align 8
  %8 = getelementptr inbounds %struct.puffs_node, %struct.puffs_node* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.puffs_usermount*, %struct.puffs_usermount** %3, align 8
  %14 = call i32 @puffs_cc_getcc(%struct.puffs_usermount* %13)
  %15 = load i32, i32* @PUFFS_SETBACK_NOREF_N1, align 4
  %16 = call i32 @puffs_setback(i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12, %2
  ret i32 0
}

declare dso_local i32 @puffs_setback(i32, i32) #1

declare dso_local i32 @puffs_cc_getcc(%struct.puffs_usermount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
