; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_do_statetable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_do_statetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }
%struct.autr_ta = type { %struct.autr_ta* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_env*, %struct.trust_anchor*, i32*)* @do_statetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_statetable(%struct.module_env* %0, %struct.trust_anchor* %1, i32* %2) #0 {
  %4 = alloca %struct.module_env*, align 8
  %5 = alloca %struct.trust_anchor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.autr_ta*, align 8
  store %struct.module_env* %0, %struct.module_env** %4, align 8
  store %struct.trust_anchor* %1, %struct.trust_anchor** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %9 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.autr_ta*, %struct.autr_ta** %11, align 8
  store %struct.autr_ta* %12, %struct.autr_ta** %7, align 8
  br label %13

13:                                               ; preds = %26, %3
  %14 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %15 = icmp ne %struct.autr_ta* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %18 = call i32 @ta_is_dnskey_sep(%struct.autr_ta* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %26

21:                                               ; preds = %16
  %22 = load %struct.module_env*, %struct.module_env** %4, align 8
  %23 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @anchor_state_update(%struct.module_env* %22, %struct.autr_ta* %23, i32* %24)
  br label %26

26:                                               ; preds = %21, %20
  %27 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %28 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %27, i32 0, i32 0
  %29 = load %struct.autr_ta*, %struct.autr_ta** %28, align 8
  store %struct.autr_ta* %29, %struct.autr_ta** %7, align 8
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.module_env*, %struct.module_env** %4, align 8
  %32 = load %struct.trust_anchor*, %struct.trust_anchor** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @remove_missing_trustanchors(%struct.module_env* %31, %struct.trust_anchor* %32, i32* %33)
  ret i32 1
}

declare dso_local i32 @ta_is_dnskey_sep(%struct.autr_ta*) #1

declare dso_local i32 @anchor_state_update(%struct.module_env*, %struct.autr_ta*, i32*) #1

declare dso_local i32 @remove_missing_trustanchors(%struct.module_env*, %struct.trust_anchor*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
