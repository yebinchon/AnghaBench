; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_holddown_exceed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_autotrust.c_autr_holddown_exceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_env = type { i32 }
%struct.trust_anchor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.autr_ta* }
%struct.autr_ta = type { i64, %struct.autr_ta* }

@AUTR_STATE_ADDPEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_env*, %struct.trust_anchor*, i32*)* @autr_holddown_exceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autr_holddown_exceed(%struct.module_env* %0, %struct.trust_anchor* %1, i32* %2) #0 {
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

13:                                               ; preds = %32, %3
  %14 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %15 = icmp ne %struct.autr_ta* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %18 = call i64 @ta_is_dnskey_sep(%struct.autr_ta* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %22 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AUTR_STATE_ADDPEND, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.module_env*, %struct.module_env** %4, align 8
  %28 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @do_addtime(%struct.module_env* %27, %struct.autr_ta* %28, i32* %29)
  br label %31

31:                                               ; preds = %26, %20, %16
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.autr_ta*, %struct.autr_ta** %7, align 8
  %34 = getelementptr inbounds %struct.autr_ta, %struct.autr_ta* %33, i32 0, i32 1
  %35 = load %struct.autr_ta*, %struct.autr_ta** %34, align 8
  store %struct.autr_ta* %35, %struct.autr_ta** %7, align 8
  br label %13

36:                                               ; preds = %13
  ret void
}

declare dso_local i64 @ta_is_dnskey_sep(%struct.autr_ta*) #1

declare dso_local i32 @do_addtime(%struct.module_env*, %struct.autr_ta*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
