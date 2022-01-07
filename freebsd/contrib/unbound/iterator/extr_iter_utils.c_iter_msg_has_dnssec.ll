; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_msg_has_dnssec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_msg_has_dnssec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dns_msg = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.packed_rrset_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_msg_has_dnssec(%struct.dns_msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dns_msg*, align 8
  %4 = alloca i64, align 8
  store %struct.dns_msg* %0, %struct.dns_msg** %3, align 8
  %5 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  %6 = icmp ne %struct.dns_msg* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  %9 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = icmp ne %struct.TYPE_5__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %50

13:                                               ; preds = %7
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  %17 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  %22 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %20, %25
  %27 = icmp ult i64 %15, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %14
  %29 = load %struct.dns_msg*, %struct.dns_msg** %3, align 8
  %30 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %34
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.packed_rrset_data*
  %41 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %50

45:                                               ; preds = %28
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %14

49:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %44, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
