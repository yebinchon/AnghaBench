; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_list_apply_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_list_apply_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcl_list = type { i32, i32 }
%struct.config_file = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcl_list_apply_cfg(%struct.tcl_list* %0, %struct.config_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcl_list*, align 8
  %5 = alloca %struct.config_file*, align 8
  store %struct.tcl_list* %0, %struct.tcl_list** %4, align 8
  store %struct.config_file* %1, %struct.config_file** %5, align 8
  %6 = load %struct.tcl_list*, %struct.tcl_list** %4, align 8
  %7 = getelementptr inbounds %struct.tcl_list, %struct.tcl_list* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @regional_free_all(i32 %8)
  %10 = load %struct.tcl_list*, %struct.tcl_list** %4, align 8
  %11 = getelementptr inbounds %struct.tcl_list, %struct.tcl_list* %10, i32 0, i32 0
  %12 = call i32 @addr_tree_init(i32* %11)
  %13 = load %struct.tcl_list*, %struct.tcl_list** %4, align 8
  %14 = load %struct.config_file*, %struct.config_file** %5, align 8
  %15 = call i32 @read_tcl_list(%struct.tcl_list* %13, %struct.config_file* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load %struct.tcl_list*, %struct.tcl_list** %4, align 8
  %20 = getelementptr inbounds %struct.tcl_list, %struct.tcl_list* %19, i32 0, i32 0
  %21 = call i32 @addr_tree_init_parents(i32* %20)
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @addr_tree_init(i32*) #1

declare dso_local i32 @read_tcl_list(%struct.tcl_list*, %struct.config_file*) #1

declare dso_local i32 @addr_tree_init_parents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
