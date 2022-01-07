; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_create_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_create_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { i32, i32, i32 }

@message_size = common dso_local global i64 0, align 8
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
  %4 = load i64, i64* @message_size, align 8
  %5 = icmp ne i64 %4, 0
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
  br label %48

11:                                               ; preds = %7
  %12 = load i64, i64* @message_size, align 8
  %13 = add i64 %12, 4
  %14 = call i32 @malloc(i64 %13)
  %15 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %16 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %18 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  %22 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %48

23:                                               ; preds = %11
  %24 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %25 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %28 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* @message_size, align 8
  %31 = add i64 %30, 4
  %32 = load i32, i32* @IBV_ACCESS_LOCAL_WRITE, align 4
  %33 = call i32 @ibv_reg_mr(i32 %26, i32 %29, i64 %31, i32 %32)
  %34 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %35 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %37 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %23
  %41 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %43

42:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %48

43:                                               ; preds = %40
  %44 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %45 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @free(i32 %46)
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %42, %21, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @malloc(i64) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @ibv_reg_mr(i32, i32, i64, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
