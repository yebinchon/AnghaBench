; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_mod_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_mod_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type opaque
%struct.module_qstate.0 = type opaque
%struct.module_qstate.1 = type opaque
%struct.module_qstate.2 = type opaque
%struct.module_qstate.3 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fptr_whitelist_mod_clear(void (%struct.module_qstate*, i32)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void (%struct.module_qstate*, i32)*, align 8
  store void (%struct.module_qstate*, i32)* %0, void (%struct.module_qstate*, i32)** %3, align 8
  %4 = load void (%struct.module_qstate*, i32)*, void (%struct.module_qstate*, i32)** %3, align 8
  %5 = icmp eq void (%struct.module_qstate*, i32)* %4, bitcast (void (%struct.module_qstate.0*, i32)* @iter_clear to void (%struct.module_qstate*, i32)*)
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %23

7:                                                ; preds = %1
  %8 = load void (%struct.module_qstate*, i32)*, void (%struct.module_qstate*, i32)** %3, align 8
  %9 = icmp eq void (%struct.module_qstate*, i32)* %8, bitcast (void (%struct.module_qstate.1*, i32)* @val_clear to void (%struct.module_qstate*, i32)*)
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %23

11:                                               ; preds = %7
  %12 = load void (%struct.module_qstate*, i32)*, void (%struct.module_qstate*, i32)** %3, align 8
  %13 = icmp eq void (%struct.module_qstate*, i32)* %12, bitcast (void (%struct.module_qstate.2*, i32)* @dns64_clear to void (%struct.module_qstate*, i32)*)
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %23

15:                                               ; preds = %11
  %16 = load void (%struct.module_qstate*, i32)*, void (%struct.module_qstate*, i32)** %3, align 8
  %17 = icmp eq void (%struct.module_qstate*, i32)* %16, bitcast (void (%struct.module_qstate.3*, i32)* @respip_clear to void (%struct.module_qstate*, i32)*)
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %23

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %18, %14, %10, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local void @iter_clear(%struct.module_qstate.0*, i32) #1

declare dso_local void @val_clear(%struct.module_qstate.1*, i32) #1

declare dso_local void @dns64_clear(%struct.module_qstate.2*, i32) #1

declare dso_local void @respip_clear(%struct.module_qstate.3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
