; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_local_zones_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zones = type { i32, i32 }

@local_zone_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.local_zones* @local_zones_create() #0 {
  %1 = alloca %struct.local_zones*, align 8
  %2 = alloca %struct.local_zones*, align 8
  %3 = call i64 @calloc(i32 1, i32 8)
  %4 = inttoptr i64 %3 to %struct.local_zones*
  store %struct.local_zones* %4, %struct.local_zones** %2, align 8
  %5 = load %struct.local_zones*, %struct.local_zones** %2, align 8
  %6 = icmp ne %struct.local_zones* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.local_zones* null, %struct.local_zones** %1, align 8
  br label %21

8:                                                ; preds = %0
  %9 = load %struct.local_zones*, %struct.local_zones** %2, align 8
  %10 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %9, i32 0, i32 0
  %11 = call i32 @rbtree_init(i32* %10, i32* @local_zone_cmp)
  %12 = load %struct.local_zones*, %struct.local_zones** %2, align 8
  %13 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %12, i32 0, i32 1
  %14 = call i32 @lock_rw_init(i32* %13)
  %15 = load %struct.local_zones*, %struct.local_zones** %2, align 8
  %16 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %15, i32 0, i32 1
  %17 = load %struct.local_zones*, %struct.local_zones** %2, align 8
  %18 = getelementptr inbounds %struct.local_zones, %struct.local_zones* %17, i32 0, i32 0
  %19 = call i32 @lock_protect(i32* %16, i32* %18, i32 4)
  %20 = load %struct.local_zones*, %struct.local_zones** %2, align 8
  store %struct.local_zones* %20, %struct.local_zones** %1, align 8
  br label %21

21:                                               ; preds = %8, %7
  %22 = load %struct.local_zones*, %struct.local_zones** %1, align 8
  ret %struct.local_zones* %22
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i32 @lock_rw_init(i32*) #1

declare dso_local i32 @lock_protect(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
