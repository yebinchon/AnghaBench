; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_dlv_topdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec.c_dlv_topdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_packed_rrset_key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_packed_rrset_key*, i32*, i32**, i64*)* @dlv_topdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlv_topdomain(%struct.ub_packed_rrset_key* %0, i32* %1, i32** %2, i64* %3) #0 {
  %5 = alloca %struct.ub_packed_rrset_key*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.ub_packed_rrset_key* %0, %struct.ub_packed_rrset_key** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %5, align 8
  %13 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @dname_get_shared_topdomain(i32* %11, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @dname_count_labels(i32* %18)
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @dname_count_labels(i32* %20)
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32**, i32*** %7, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @dname_remove_labels(i32** %23, i64* %24, i32 %25)
  ret void
}

declare dso_local i32* @dname_get_shared_topdomain(i32*, i32) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @dname_remove_labels(i32**, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
