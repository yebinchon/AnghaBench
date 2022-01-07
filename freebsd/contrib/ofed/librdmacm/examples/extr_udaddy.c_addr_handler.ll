; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_addr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { i32 }

@set_tos = common dso_local global i64 0, align 8
@RDMA_OPTION_ID = common dso_local global i32 0, align 4
@RDMA_OPTION_ID_TOS = common dso_local global i32 0, align 4
@tos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"udaddy: set TOS option failed\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"udaddy: resolve route failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_handler(%struct.cmatest_node* %0) #0 {
  %2 = alloca %struct.cmatest_node*, align 8
  %3 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %2, align 8
  %4 = load i64, i64* @set_tos, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %8 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RDMA_OPTION_ID, align 4
  %11 = load i32, i32* @RDMA_OPTION_ID_TOS, align 4
  %12 = call i32 @rdma_set_option(i32 %9, i32 %10, i32 %11, i32* @tos, i32 4)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = call i32 @perror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %6
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %20 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rdma_resolve_route(i32 %21, i32 2000)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i32 (...) @connect_error()
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @rdma_set_option(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_resolve_route(i32, i32) #1

declare dso_local i32 @connect_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
