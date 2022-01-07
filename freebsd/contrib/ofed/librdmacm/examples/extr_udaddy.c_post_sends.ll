; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_post_sends.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_post_sends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_9__*, i64, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ibv_send_wr = type { i32, i32, i64, %struct.TYPE_7__, i32, i32, %struct.ibv_sge*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ibv_sge = type { i64, i32, i32 }

@message_count = common dso_local global i32 0, align 4
@IBV_WR_SEND_WITH_IMM = common dso_local global i32 0, align 4
@message_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to post sends: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*, i32)* @post_sends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_sends(%struct.cmatest_node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmatest_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_send_wr, align 8
  %7 = alloca %struct.ibv_send_wr*, align 8
  %8 = alloca %struct.ibv_sge, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cmatest_node* %0, %struct.cmatest_node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %12 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @message_count, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %97

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 6
  store %struct.ibv_sge* %8, %struct.ibv_sge** %21, align 8
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @IBV_WR_SEND_WITH_IMM, align 4
  %24 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 5
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %28 = ptrtoint %struct.cmatest_node* %27 to i64
  %29 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %31 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @htobe32(i32 %36)
  %38 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %40 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 8
  %45 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %46 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %52 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %6, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @message_size, align 4
  %58 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %8, i32 0, i32 2
  store i32 %57, i32* %58, align 4
  %59 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %60 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %8, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %66 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %8, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %92, %19
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @message_count, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %79, label %95

79:                                               ; preds = %77
  %80 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %81 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call i32 @ibv_post_send(%struct.TYPE_10__* %84, %struct.ibv_send_wr* %6, %struct.ibv_send_wr** %7)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %69

95:                                               ; preds = %77
  %96 = load i32, i32* %10, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %18
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @ibv_post_send(%struct.TYPE_10__*, %struct.ibv_send_wr*, %struct.ibv_send_wr**) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
