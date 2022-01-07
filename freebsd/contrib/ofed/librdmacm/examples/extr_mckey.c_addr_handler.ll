; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_addr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_addr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cmatest_node = type { i32 }

@is_sender = common dso_local global i32 0, align 4
@test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [23 x i8] c"mckey: failure joining\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @addr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_handler(%struct.cmatest_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmatest_node*, align 8
  %4 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %3, align 8
  %5 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %6 = call i32 @verify_test_params(%struct.cmatest_node* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %12 = call i32 @init_node(%struct.cmatest_node* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %38

16:                                               ; preds = %10
  %17 = load i32, i32* @is_sender, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %21 = call i32 @post_recvs(%struct.cmatest_node* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %38

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %28 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 4
  %31 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %32 = call i32 @rdma_join_multicast(i32 %29, i32 %30, %struct.cmatest_node* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @perror(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %38

37:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %41

38:                                               ; preds = %35, %24, %15, %9
  %39 = call i32 (...) @connect_error()
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %37
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @verify_test_params(%struct.cmatest_node*) #1

declare dso_local i32 @init_node(%struct.cmatest_node*) #1

declare dso_local i32 @post_recvs(%struct.cmatest_node*) #1

declare dso_local i32 @rdma_join_multicast(i32, i32, %struct.cmatest_node*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @connect_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
