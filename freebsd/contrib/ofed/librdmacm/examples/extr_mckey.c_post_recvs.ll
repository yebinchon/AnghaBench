; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_post_recvs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_post_recvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_recv_wr = type { i32, i64, %struct.ibv_sge*, i32* }
%struct.ibv_sge = type { i64, i32, i64 }

@message_count = common dso_local global i32 0, align 4
@message_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"failed to post receives: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @post_recvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_recvs(%struct.cmatest_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmatest_node*, align 8
  %4 = alloca %struct.ibv_recv_wr, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca %struct.ibv_sge, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @message_count, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %4, i32 0, i32 3
  store i32* null, i32** %13, align 8
  %14 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %4, i32 0, i32 2
  store %struct.ibv_sge* %6, %struct.ibv_sge** %14, align 8
  %15 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %4, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %17 = ptrtoint %struct.cmatest_node* %16 to i64
  %18 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %4, i32 0, i32 1
  store i64 %17, i64* %18, align 8
  %19 = load i64, i64* @message_size, align 8
  %20 = add i64 %19, 4
  %21 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 2
  store i64 %20, i64* %21, align 8
  %22 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %23 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %29 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %55, %12
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @message_count, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %58

42:                                               ; preds = %40
  %43 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %44 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ibv_post_recv(i32 %47, %struct.ibv_recv_wr* %4, %struct.ibv_recv_wr** %5)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %58

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %32

58:                                               ; preds = %51, %40
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ibv_post_recv(i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
