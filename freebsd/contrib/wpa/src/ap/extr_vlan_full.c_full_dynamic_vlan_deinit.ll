; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_full_dynamic_vlan_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_vlan_full.c_full_dynamic_vlan_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.full_dynamic_vlan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @full_dynamic_vlan_deinit(%struct.full_dynamic_vlan* %0) #0 {
  %2 = alloca %struct.full_dynamic_vlan*, align 8
  store %struct.full_dynamic_vlan* %0, %struct.full_dynamic_vlan** %2, align 8
  %3 = load %struct.full_dynamic_vlan*, %struct.full_dynamic_vlan** %2, align 8
  %4 = icmp eq %struct.full_dynamic_vlan* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.full_dynamic_vlan*, %struct.full_dynamic_vlan** %2, align 8
  %8 = getelementptr inbounds %struct.full_dynamic_vlan, %struct.full_dynamic_vlan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @eloop_unregister_read_sock(i32 %9)
  %11 = load %struct.full_dynamic_vlan*, %struct.full_dynamic_vlan** %2, align 8
  %12 = getelementptr inbounds %struct.full_dynamic_vlan, %struct.full_dynamic_vlan* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @close(i32 %13)
  %15 = load %struct.full_dynamic_vlan*, %struct.full_dynamic_vlan** %2, align 8
  %16 = call i32 @os_free(%struct.full_dynamic_vlan* %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @eloop_unregister_read_sock(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @os_free(%struct.full_dynamic_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
