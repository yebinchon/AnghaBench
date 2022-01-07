; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_group_delete_if_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_group.c_fst_group_delete_if_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fst_group_delete_if_empty(%struct.fst_group* %0) #0 {
  %2 = alloca %struct.fst_group*, align 8
  %3 = alloca i32, align 4
  store %struct.fst_group* %0, %struct.fst_group** %2, align 8
  %4 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %5 = call i32 @fst_group_has_ifaces(%struct.fst_group* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %9 = call i32 @fst_session_global_get_first_by_group(%struct.fst_group* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.fst_group*, %struct.fst_group** %2, align 8
  %19 = call i32 @fst_group_delete(%struct.fst_group* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @fst_group_has_ifaces(%struct.fst_group*) #1

declare dso_local i32 @fst_session_global_get_first_by_group(%struct.fst_group*) #1

declare dso_local i32 @fst_group_delete(%struct.fst_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
