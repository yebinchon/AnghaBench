; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_init() #0 {
  %1 = call i32 (...) @abd_init()
  %2 = call i32 (...) @zfs_dbgmsg_init()
  %3 = call i32 (...) @sa_cache_init()
  %4 = call i32 (...) @xuio_stat_init()
  %5 = call i32 (...) @dmu_objset_init()
  %6 = call i32 (...) @dnode_init()
  %7 = call i32 (...) @zfetch_init()
  %8 = call i32 (...) @zio_compress_init()
  %9 = call i32 (...) @l2arc_init()
  %10 = call i32 (...) @arc_init()
  %11 = call i32 (...) @dbuf_init()
  ret void
}

declare dso_local i32 @abd_init(...) #1

declare dso_local i32 @zfs_dbgmsg_init(...) #1

declare dso_local i32 @sa_cache_init(...) #1

declare dso_local i32 @xuio_stat_init(...) #1

declare dso_local i32 @dmu_objset_init(...) #1

declare dso_local i32 @dnode_init(...) #1

declare dso_local i32 @zfetch_init(...) #1

declare dso_local i32 @zio_compress_init(...) #1

declare dso_local i32 @l2arc_init(...) #1

declare dso_local i32 @arc_init(...) #1

declare dso_local i32 @dbuf_init(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
