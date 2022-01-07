; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_get_cq_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_get_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ibv_cq*, i32 }
%struct.ibv_cq = type { i32 }

@ctx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Failed to get cq_event\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CQ event for unknown CQ %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't request CQ notification\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_cq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cq_event() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ibv_cq*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 1), align 8
  %5 = call i64 @ibv_get_cq_event(i32 %4, %struct.ibv_cq** %2, i8** %3)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %26

10:                                               ; preds = %0
  %11 = load %struct.ibv_cq*, %struct.ibv_cq** %2, align 8
  %12 = load %struct.ibv_cq*, %struct.ibv_cq** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 8
  %13 = icmp ne %struct.ibv_cq* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.ibv_cq*, %struct.ibv_cq** %2, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), %struct.ibv_cq* %16)
  store i32 1, i32* %1, align 4
  br label %26

18:                                               ; preds = %10
  %19 = load %struct.ibv_cq*, %struct.ibv_cq** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ctx, i32 0, i32 0), align 8
  %20 = call i64 @ibv_req_notify_cq(%struct.ibv_cq* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %22, %14, %7
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i64 @ibv_get_cq_event(i32, %struct.ibv_cq**, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @ibv_req_notify_cq(%struct.ibv_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
