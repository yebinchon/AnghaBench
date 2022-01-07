; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_set_kiddo_parents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_set_kiddo_parents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_zone = type { i64, i32, i32, %struct.local_zone*, i32, i32 }

@RBTREE_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.local_zone*, %struct.local_zone*, %struct.local_zone*)* @set_kiddo_parents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_kiddo_parents(%struct.local_zone* %0, %struct.local_zone* %1, %struct.local_zone* %2) #0 {
  %4 = alloca %struct.local_zone*, align 8
  %5 = alloca %struct.local_zone*, align 8
  %6 = alloca %struct.local_zone*, align 8
  %7 = alloca %struct.local_zone*, align 8
  store %struct.local_zone* %0, %struct.local_zone** %4, align 8
  store %struct.local_zone* %1, %struct.local_zone** %5, align 8
  store %struct.local_zone* %2, %struct.local_zone** %6, align 8
  %8 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  store %struct.local_zone* %8, %struct.local_zone** %7, align 8
  %9 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %10 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %9, i32 0, i32 1
  %11 = call i64 @rbtree_next(i32* %10)
  %12 = inttoptr i64 %11 to %struct.local_zone*
  store %struct.local_zone* %12, %struct.local_zone** %7, align 8
  br label %13

13:                                               ; preds = %56, %3
  %14 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %15 = load i64, i64* @RBTREE_NULL, align 8
  %16 = inttoptr i64 %15 to %struct.local_zone*
  %17 = icmp ne %struct.local_zone* %14, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %20 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %23 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %18
  %27 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %28 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %31 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %34 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.local_zone*, %struct.local_zone** %4, align 8
  %37 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @dname_strict_subdomain(i32 %29, i32 %32, i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %26, %18, %13
  %42 = phi i1 [ false, %18 ], [ false, %13 ], [ %40, %26 ]
  br i1 %42, label %43, label %64

43:                                               ; preds = %41
  %44 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %45 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %44, i32 0, i32 2
  %46 = call i32 @lock_rw_wrlock(i32* %45)
  %47 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %48 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %47, i32 0, i32 3
  %49 = load %struct.local_zone*, %struct.local_zone** %48, align 8
  %50 = load %struct.local_zone*, %struct.local_zone** %5, align 8
  %51 = icmp eq %struct.local_zone* %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load %struct.local_zone*, %struct.local_zone** %6, align 8
  %54 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %55 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %54, i32 0, i32 3
  store %struct.local_zone* %53, %struct.local_zone** %55, align 8
  br label %56

56:                                               ; preds = %52, %43
  %57 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %58 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %57, i32 0, i32 2
  %59 = call i32 @lock_rw_unlock(i32* %58)
  %60 = load %struct.local_zone*, %struct.local_zone** %7, align 8
  %61 = getelementptr inbounds %struct.local_zone, %struct.local_zone* %60, i32 0, i32 1
  %62 = call i64 @rbtree_next(i32* %61)
  %63 = inttoptr i64 %62 to %struct.local_zone*
  store %struct.local_zone* %63, %struct.local_zone** %7, align 8
  br label %13

64:                                               ; preds = %41
  ret void
}

declare dso_local i64 @rbtree_next(i32*) #1

declare dso_local i64 @dname_strict_subdomain(i32, i32, i32, i32) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
