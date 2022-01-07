; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_add_trustanchor_frm_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_add_trustanchor_frm_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.autr_ta = type { %struct.autr_ta*, %struct.autr_ta* }
%struct.val_anchors = type { i32 }
%struct.trust_anchor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.autr_ta* (%struct.val_anchors*, i32*, i64, i64, %struct.trust_anchor**)* @add_trustanchor_frm_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.autr_ta* @add_trustanchor_frm_rr(%struct.val_anchors* %0, i32* %1, i64 %2, i64 %3, %struct.trust_anchor** %4) #0 {
  %6 = alloca %struct.autr_ta*, align 8
  %7 = alloca %struct.val_anchors*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.trust_anchor**, align 8
  %12 = alloca %struct.autr_ta*, align 8
  store %struct.val_anchors* %0, %struct.val_anchors** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.trust_anchor** %4, %struct.trust_anchor*** %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %10, align 8
  %16 = call %struct.autr_ta* @autr_ta_create(i32* %13, i64 %14, i64 %15)
  store %struct.autr_ta* %16, %struct.autr_ta** %12, align 8
  %17 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %18 = icmp ne %struct.autr_ta* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.autr_ta* null, %struct.autr_ta** %6, align 8
  br label %57

20:                                               ; preds = %5
  %21 = load %struct.val_anchors*, %struct.val_anchors** %7, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call %struct.trust_anchor* @find_add_tp(%struct.val_anchors* %21, i32* %22, i64 %23, i64 %24)
  %26 = load %struct.trust_anchor**, %struct.trust_anchor*** %11, align 8
  store %struct.trust_anchor* %25, %struct.trust_anchor** %26, align 8
  %27 = load %struct.trust_anchor**, %struct.trust_anchor*** %11, align 8
  %28 = load %struct.trust_anchor*, %struct.trust_anchor** %27, align 8
  %29 = icmp ne %struct.trust_anchor* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %20
  %31 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %32 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %31, i32 0, i32 1
  %33 = load %struct.autr_ta*, %struct.autr_ta** %32, align 8
  %34 = call i32 @free(%struct.autr_ta* %33)
  %35 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %36 = call i32 @free(%struct.autr_ta* %35)
  store %struct.autr_ta* null, %struct.autr_ta** %6, align 8
  br label %57

37:                                               ; preds = %20
  %38 = load %struct.trust_anchor**, %struct.trust_anchor*** %11, align 8
  %39 = load %struct.trust_anchor*, %struct.trust_anchor** %38, align 8
  %40 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.autr_ta*, %struct.autr_ta** %42, align 8
  %44 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %45 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %44, i32 0, i32 0
  store %struct.autr_ta* %43, %struct.autr_ta** %45, align 8
  %46 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %47 = load %struct.trust_anchor**, %struct.trust_anchor*** %11, align 8
  %48 = load %struct.trust_anchor*, %struct.trust_anchor** %47, align 8
  %49 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store %struct.autr_ta* %46, %struct.autr_ta** %51, align 8
  %52 = load %struct.trust_anchor**, %struct.trust_anchor*** %11, align 8
  %53 = load %struct.trust_anchor*, %struct.trust_anchor** %52, align 8
  %54 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %53, i32 0, i32 0
  %55 = call i32 @lock_basic_unlock(i32* %54)
  %56 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  store %struct.autr_ta* %56, %struct.autr_ta** %6, align 8
  br label %57

57:                                               ; preds = %37, %30, %19
  %58 = load %struct.autr_ta*, %struct.autr_ta** %6, align 8
  ret %struct.autr_ta* %58
}

declare dso_local %struct.autr_ta* @autr_ta_create(i32*, i64, i64) #1

declare dso_local %struct.trust_anchor* @find_add_tp(%struct.val_anchors*, i32*, i64, i64) #1

declare dso_local i32 @free(%struct.autr_ta*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
