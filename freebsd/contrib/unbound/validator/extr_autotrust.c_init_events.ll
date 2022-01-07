; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_init_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_init_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }
%struct.autr_ta = type { i64, %struct.autr_ta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trust_anchor*)* @init_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_events(%struct.trust_anchor* %0) #0 {
  %2 = alloca %struct.trust_anchor*, align 8
  %3 = alloca %struct.autr_ta*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %2, align 8
  %4 = load %struct.trust_anchor*, %struct.trust_anchor** %2, align 8
  %5 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  store %struct.autr_ta* %8, %struct.autr_ta** %3, align 8
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %11 = icmp ne %struct.autr_ta* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %14 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.autr_ta*, %struct.autr_ta** %3, align 8
  %17 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %16, i32 0, i32 1
  %18 = load %struct.autr_ta*, %struct.autr_ta** %17, align 8
  store %struct.autr_ta* %18, %struct.autr_ta** %3, align 8
  br label %9

19:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
