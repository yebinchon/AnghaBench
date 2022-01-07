; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_rrset_get_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_rrset_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ub_packed_rrset_key*)* @rrset_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rrset_get_count(%struct.ub_packed_rrset_key* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ub_packed_rrset_key*, align 8
  %4 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %3, align 8
  %5 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %3, align 8
  %6 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %9, %struct.packed_rrset_data** %4, align 8
  %10 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %11 = icmp ne %struct.packed_rrset_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %4, align 8
  %15 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %2, align 8
  br label %17

17:                                               ; preds = %13, %12
  %18 = load i64, i64* %2, align 8
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
