; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_post_recvs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_post_recvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_recv_wr = type { i32, i64, %struct.ibv_sge*, i32* }
%struct.ibv_sge = type { i64, i32, i32 }

@message_count = common dso_local global i32 0, align 4
@message_size = common dso_local global i32 0, align 4
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
  br label %59

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
  %19 = load i32, i32* @message_size, align 4
  %20 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %22 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 8
  %27 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %28 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %54, %12
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @message_count, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ false, %31 ], [ %38, %35 ]
  br i1 %40, label %41, label %57

41:                                               ; preds = %39
  %42 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %43 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ibv_post_recv(i32 %46, %struct.ibv_recv_wr* %4, %struct.ibv_recv_wr** %5)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %31

57:                                               ; preds = %50, %39
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ibv_post_recv(i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
