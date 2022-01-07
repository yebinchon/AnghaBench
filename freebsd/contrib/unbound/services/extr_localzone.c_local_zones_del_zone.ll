; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_del_zone.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_del_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32 }
%struct.local_zone = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_zones_del_zone(%struct.local_zones* %0, %struct.local_zone* %1) #0 {
  %3 = alloca %struct.local_zones*, align 8
  %4 = alloca %struct.local_zone*, align 8
  store %struct.local_zones* %0, %struct.local_zones** %3, align 8
  store %struct.local_zone* %1, %struct.local_zone** %4, align 8
  %5 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %6 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %5, i32 0, i32 0
  %7 = call i32 @lock_rw_wrlock(i32* %6)
  %8 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %9 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %10 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %11 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @set_kiddo_parents(%struct.local_zone* %8, %struct.local_zone* %9, i32 %12)
  %14 = load %struct.local_zones*, %struct.local_zones** %3, align 8
  %15 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %14, i32 0, i32 0
  %16 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %17 = call i32 @rbtree_delete(i32* %15, %struct.local_zone* %16)
  %18 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %19 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %18, i32 0, i32 0
  %20 = call i32 @lock_rw_unlock(i32* %19)
  %21 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %22 = call i32 @local_zone_delete(%struct.local_zone* %21)
  ret void
}

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @set_kiddo_parents(%struct.local_zone*, %struct.local_zone*, i32) #1

declare dso_local i32 @rbtree_delete(i32*, %struct.local_zone*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @local_zone_delete(%struct.local_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
