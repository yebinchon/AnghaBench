; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_ub_packed_rrset_parsedelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/data/extr_packed_rrset.c_ub_packed_rrset_parsedelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }
%struct.alloc_cache = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ub_packed_rrset_parsedelete(%struct.ub_packed_rrset_key* %0, %struct.alloc_cache* %1) #0 {
  %3 = alloca %struct.ub_packed_rrset_key*, align 8
  %4 = alloca %struct.alloc_cache*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %3, align 8
  store %struct.alloc_cache* %1, %struct.alloc_cache** %4, align 8
  %5 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %6 = icmp ne %struct.ub_packed_rrset_key* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %30

8:                                                ; preds = %2
  %9 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %10 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @free(i32* %12)
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %18 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @free(i32* %20)
  %22 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %23 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %26 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.alloc_cache*, %struct.alloc_cache** %4, align 8
  %28 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %29 = call i32 @alloc_special_release(%struct.alloc_cache* %27, %struct.ub_packed_rrset_key* %28)
  br label %30

30:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @alloc_special_release(%struct.alloc_cache*, %struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
