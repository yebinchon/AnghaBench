; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_update_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_update_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_ref = type { %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.alloc_cache = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rrset_ref*, %struct.alloc_cache*)* @rrset_update_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rrset_update_id(%struct.rrset_ref* %0, %struct.alloc_cache* %1) #0 {
  %3 = alloca %struct.rrset_ref*, align 8
  %4 = alloca %struct.alloc_cache*, align 8
  %5 = alloca i8*, align 8
  store %struct.rrset_ref* %0, %struct.rrset_ref** %3, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %4, align 8
  %6 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %7 = call i8* @alloc_get_id(%struct.alloc_cache* %6)
  store i8* %7, i8** %5, align 8
  %8 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %9 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @lock_rw_wrlock(i32* %12)
  %14 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %15 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %20 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %26 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %24, i8** %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %31 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %34 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @lock_rw_unlock(i32* %37)
  ret void
}

declare dso_local i8* @alloc_get_id(%struct.alloc_cache*) #1

declare dso_local i32 @lock_rw_wrlock(i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
