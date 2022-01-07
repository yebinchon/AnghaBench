; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_array_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_rrset.c_rrset_array_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rrset_ref = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rrset_array_unlock(%struct.rrset_ref* %0, i64 %1) #0 {
  %3 = alloca %struct.rrset_ref*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rrset_ref* %0, %struct.rrset_ref** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %36, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load i64, i64* %5, align 8
  %12 = icmp ugt i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %14, i64 %15
  %17 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %20, 1
  %22 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %19, i64 %21
  %23 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp eq %struct.TYPE_4__* %18, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  br label %36

27:                                               ; preds = %13, %10
  %28 = load %struct.rrset_ref*, %struct.rrset_ref** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %28, i64 %29
  %31 = getelementptr inbounds %struct.rrset_ref, %struct.rrset_ref* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @lock_rw_unlock(i32* %34)
  br label %36

36:                                               ; preds = %27, %26
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
