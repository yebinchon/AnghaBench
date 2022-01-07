; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_create_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { i32, i32, i32 }

@message_size = common dso_local global i32 0, align 4
@message_count = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"failed message allocation\0A\00", align 1
@IBV_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"failed to reg MR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @create_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_message(%struct.cmatest_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmatest_node*, align 8
  store %struct.cmatest_node* %0, %struct.cmatest_node** %3, align 8
  %4 = load i32, i32* @message_size, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i64 0, i64* @message_count, align 8
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i64, i64* @message_count, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %46

11:                                               ; preds = %7
  %12 = load i32, i32* @message_size, align 4
  %13 = call i32 @malloc(i32 %12)
  %14 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %15 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %17 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %46

22:                                               ; preds = %11
  %23 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %24 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %27 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @message_size, align 4
  %30 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %31 = call i32 @ibv_reg_mr(i32 %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %33 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %35 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %22
  %39 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %41

40:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %38
  %42 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %43 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @free(i32 %44)
  store i32 -1, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %40, %20, %10
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ibv_reg_mr(i32, i32, i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
