; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_find_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }
%struct.autr_ta = type { %struct.autr_ta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trust_anchor*, i32, i32*, i64, %struct.autr_ta**)* @find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_key(%struct.trust_anchor* %0, i32 %1, i32* %2, i64 %3, %struct.autr_ta** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.trust_anchor*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.autr_ta**, align 8
  %12 = alloca %struct.autr_ta*, align 8
  store %struct.trust_anchor* %0, %struct.trust_anchor** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.autr_ta** %4, %struct.autr_ta*** %11, align 8
  %13 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %14 = icmp ne %struct.trust_anchor* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32*, i32** %9, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15, %5
  %19 = load %struct.autr_ta**, %struct.autr_ta*** %11, align 8
  store %struct.autr_ta* null, %struct.autr_ta** %19, align 8
  store i32 0, i32* %6, align 4
  br label %46

20:                                               ; preds = %15
  %21 = load %struct.trust_anchor*, %struct.trust_anchor** %7, align 8
  %22 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.autr_ta*, %struct.autr_ta** %24, align 8
  store %struct.autr_ta* %25, %struct.autr_ta** %12, align 8
  br label %26

26:                                               ; preds = %40, %20
  %27 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %28 = icmp ne %struct.autr_ta* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @ta_compare(%struct.autr_ta* %30, i32 %31, i32* %32, i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %38 = load %struct.autr_ta**, %struct.autr_ta*** %11, align 8
  store %struct.autr_ta* %37, %struct.autr_ta** %38, align 8
  store i32 1, i32* %6, align 4
  br label %46

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.autr_ta*, %struct.autr_ta** %12, align 8
  %42 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %41, i32 0, i32 0
  %43 = load %struct.autr_ta*, %struct.autr_ta** %42, align 8
  store %struct.autr_ta* %43, %struct.autr_ta** %12, align 8
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.autr_ta**, %struct.autr_ta*** %11, align 8
  store %struct.autr_ta* null, %struct.autr_ta** %45, align 8
  store i32 1, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %36, %18
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @ta_compare(%struct.autr_ta*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
