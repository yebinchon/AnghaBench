; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_post_sends.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_post_sends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_4__*, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_send_wr = type { i32, i64, i64, i32, %struct.ibv_sge*, i32* }
%struct.ibv_sge = type { i64, i32, i32 }

@message_count = common dso_local global i32 0, align 4
@IBV_WR_SEND = common dso_local global i32 0, align 4
@message_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to post sends: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*)* @post_sends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_sends(%struct.cmatest_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmatest_node*, align 8
  %4 = alloca %struct.ibv_send_wr, align 8
  %5 = alloca %struct.ibv_send_wr*, align 8
  %6 = alloca %struct.ibv_sge, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %10 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @message_count, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %67

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 4
  store %struct.ibv_sge* %6, %struct.ibv_sge** %19, align 8
  %20 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load i32, i32* @IBV_WR_SEND, align 4
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %25 = ptrtoint %struct.cmatest_node* %24 to i64
  %26 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %4, i32 0, i32 1
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @message_size, align 4
  %28 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %30 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %36 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %6, i32 0, i32 0
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %62, %17
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @message_count, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ false, %39 ], [ %46, %43 ]
  br i1 %48, label %49, label %65

49:                                               ; preds = %47
  %50 = load %struct.cmatest_node*, %struct.cmatest_node** %3, align 8
  %51 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ibv_post_send(i32 %54, %struct.ibv_send_wr* %4, %struct.ibv_send_wr** %5)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %58, %49
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %39

65:                                               ; preds = %47
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ibv_post_send(i32, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
