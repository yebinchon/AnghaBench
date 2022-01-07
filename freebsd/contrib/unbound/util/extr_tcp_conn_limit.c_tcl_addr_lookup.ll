; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_addr_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_addr_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcl_addr = type { i32 }
%struct.tcl_list = type { i32 }
%struct.sockaddr_storage = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcl_addr* @tcl_addr_lookup(%struct.tcl_list* %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca %struct.tcl_list*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca i32, align 4
  store %struct.tcl_list* %0, %struct.tcl_list** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcl_list*, %struct.tcl_list** %4, align 8
  %8 = getelementptr inbounds %struct.tcl_list, %struct.tcl_list* %7, i32 0, i32 0
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @addr_tree_lookup(i32* %8, %struct.sockaddr_storage* %9, i32 %10)
  %12 = inttoptr i64 %11 to %struct.tcl_addr*
  ret %struct.tcl_addr* %12
}

declare dso_local i64 @addr_tree_lookup(i32*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
