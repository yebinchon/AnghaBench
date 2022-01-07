; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_assembled_rrset_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_anchor.c_assembled_rrset_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_4__, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ub_packed_rrset_key* }
%struct.TYPE_3__ = type { i64 }
%struct.packed_rrset_data = type { %struct.TYPE_4__, %struct.packed_rrset_data*, %struct.packed_rrset_data*, %struct.packed_rrset_data*, %struct.TYPE_3__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_packed_rrset_key*)* @assembled_rrset_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assembled_rrset_delete(%struct.ub_packed_rrset_key* %0) #0 {
  %2 = alloca %struct.ub_packed_rrset_key*, align 8
  %3 = alloca %struct.packed_rrset_data*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %2, align 8
  %4 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %5 = icmp ne %struct.ub_packed_rrset_key* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %45

7:                                                ; preds = %1
  %8 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %9 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %15 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.packed_rrset_data*
  store %struct.packed_rrset_data* %18, %struct.packed_rrset_data** %3, align 8
  %19 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %20 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %19, i32 0, i32 3
  %21 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %20, align 8
  %22 = bitcast %struct.packed_rrset_data* %21 to %struct.ub_packed_rrset_key*
  %23 = call i32 @free(%struct.ub_packed_rrset_key* %22)
  %24 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %25 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %24, i32 0, i32 2
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %25, align 8
  %27 = bitcast %struct.packed_rrset_data* %26 to %struct.ub_packed_rrset_key*
  %28 = call i32 @free(%struct.ub_packed_rrset_key* %27)
  %29 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %30 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %29, i32 0, i32 1
  %31 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %30, align 8
  %32 = bitcast %struct.packed_rrset_data* %31 to %struct.ub_packed_rrset_key*
  %33 = call i32 @free(%struct.ub_packed_rrset_key* %32)
  %34 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %3, align 8
  %35 = bitcast %struct.packed_rrset_data* %34 to %struct.ub_packed_rrset_key*
  %36 = call i32 @free(%struct.ub_packed_rrset_key* %35)
  br label %37

37:                                               ; preds = %13, %7
  %38 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %39 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %40, align 8
  %42 = call i32 @free(%struct.ub_packed_rrset_key* %41)
  %43 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %2, align 8
  %44 = call i32 @free(%struct.ub_packed_rrset_key* %43)
  br label %45

45:                                               ; preds = %37, %6
  ret void
}

declare dso_local i32 @free(%struct.ub_packed_rrset_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
