; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_verbs.c_c4iw_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_port_attr = type { i32 }
%struct.ibv_query_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_query_port(%struct.ibv_context* %0, i32 %1, %struct.ibv_port_attr* %2) #0 {
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_port_attr*, align 8
  %7 = alloca %struct.ibv_query_port, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ibv_port_attr* %2, %struct.ibv_port_attr** %6, align 8
  %8 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %6, align 8
  %11 = call i32 @ibv_cmd_query_port(%struct.ibv_context* %8, i32 %9, %struct.ibv_port_attr* %10, %struct.ibv_query_port* %7, i32 4)
  ret i32 %11
}

declare dso_local i32 @ibv_cmd_query_port(%struct.ibv_context*, i32, %struct.ibv_port_attr*, %struct.ibv_query_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
