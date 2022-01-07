; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_verify_test_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_verify_test_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ibv_port_attr = type { i32 }

@message_count = common dso_local global i64 0, align 8
@message_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"udaddy: message_size %d is larger than active mtu %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @verify_test_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_test_params(%struct.cmatest_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmatest_node*, align 8
  %4 = alloca %struct.ibv_port_attr, align 4
  %5 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %3, align 8
  %6 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %7 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %12 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ibv_query_port(i32 %10, i32 %15, %struct.ibv_port_attr* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load i64, i64* @message_count, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i32, i32* @message_size, align 4
  %26 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 7
  %29 = shl i32 1, %28
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i32, i32* @message_size, align 4
  %33 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 7
  %36 = shl i32 1, %35
  %37 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %31, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @ibv_query_port(i32, i32, %struct.ibv_port_attr*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
