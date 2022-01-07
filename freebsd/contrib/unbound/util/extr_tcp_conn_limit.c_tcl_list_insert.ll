; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_list_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_tcp_conn_limit.c_tcl_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcl_addr = type { i32, i32, i32 }
%struct.tcl_list = type { i32, i32 }
%struct.sockaddr_storage = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"duplicate tcl address ignored.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcl_addr* (%struct.tcl_list*, %struct.sockaddr_storage*, i32, i32, i32, i32)* @tcl_list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcl_addr* @tcl_list_insert(%struct.tcl_list* %0, %struct.sockaddr_storage* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.tcl_addr*, align 8
  %8 = alloca %struct.tcl_list*, align 8
  %9 = alloca %struct.sockaddr_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tcl_addr*, align 8
  store %struct.tcl_list* %0, %struct.tcl_list** %8, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.tcl_list*, %struct.tcl_list** %8, align 8
  %16 = getelementptr inbounds %struct.tcl_list, %struct.tcl_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tcl_addr* @regional_alloc_zero(i32 %17, i32 12)
  store %struct.tcl_addr* %18, %struct.tcl_addr** %14, align 8
  %19 = load %struct.tcl_addr*, %struct.tcl_addr** %14, align 8
  %20 = icmp ne %struct.tcl_addr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  store %struct.tcl_addr* null, %struct.tcl_addr** %7, align 8
  br label %47

22:                                               ; preds = %6
  %23 = load %struct.tcl_addr*, %struct.tcl_addr** %14, align 8
  %24 = getelementptr inbounds %struct.tcl_addr, %struct.tcl_addr* %23, i32 0, i32 2
  %25 = call i32 @lock_quick_init(i32* %24)
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.tcl_addr*, %struct.tcl_addr** %14, align 8
  %28 = getelementptr inbounds %struct.tcl_addr, %struct.tcl_addr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.tcl_list*, %struct.tcl_list** %8, align 8
  %30 = getelementptr inbounds %struct.tcl_list, %struct.tcl_list* %29, i32 0, i32 0
  %31 = load %struct.tcl_addr*, %struct.tcl_addr** %14, align 8
  %32 = getelementptr inbounds %struct.tcl_addr, %struct.tcl_addr* %31, i32 0, i32 0
  %33 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @addr_tree_insert(i32* %30, i32* %32, %struct.sockaddr_storage* %33, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @VERB_QUERY, align 4
  %43 = call i32 @verbose(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %22
  %46 = load %struct.tcl_addr*, %struct.tcl_addr** %14, align 8
  store %struct.tcl_addr* %46, %struct.tcl_addr** %7, align 8
  br label %47

47:                                               ; preds = %45, %21
  %48 = load %struct.tcl_addr*, %struct.tcl_addr** %7, align 8
  ret %struct.tcl_addr* %48
}

declare dso_local %struct.tcl_addr* @regional_alloc_zero(i32, i32) #1

declare dso_local i32 @lock_quick_init(i32*) #1

declare dso_local i32 @addr_tree_insert(i32*, i32*, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
