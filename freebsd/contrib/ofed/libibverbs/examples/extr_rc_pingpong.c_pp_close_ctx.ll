; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_pp_close_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_rc_pingpong.c_pp_close_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { %struct.pingpong_context*, i32, i64, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Couldn't destroy QP\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Couldn't destroy CQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Couldn't deregister MR\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't deallocate PD\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Couldn't destroy completion channel\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Couldn't release context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*)* @pp_close_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_close_ctx(%struct.pingpong_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pingpong_context*, align 8
  store %struct.pingpong_context* %0, %struct.pingpong_context** %3, align 8
  %4 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %5 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %4, i32 0, i32 5
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @ibv_destroy_qp(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %14 = call i32 @pp_cq(%struct.pingpong_context* %13)
  %15 = call i64 @ibv_destroy_cq(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %69

20:                                               ; preds = %12
  %21 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %22 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ibv_dereg_mr(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %69

29:                                               ; preds = %20
  %30 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %31 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @ibv_dealloc_pd(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %69

38:                                               ; preds = %29
  %39 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %40 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %45 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ibv_destroy_comp_channel(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @stderr, align 4
  %51 = call i32 @fprintf(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %69

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %55 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ibv_close_device(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @stderr, align 4
  %61 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %69

62:                                               ; preds = %53
  %63 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %64 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %63, i32 0, i32 0
  %65 = load %struct.pingpong_context*, %struct.pingpong_context** %64, align 8
  %66 = call i32 @free(%struct.pingpong_context* %65)
  %67 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %68 = call i32 @free(%struct.pingpong_context* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %59, %49, %35, %26, %17, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @ibv_destroy_qp(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ibv_destroy_cq(i32) #1

declare dso_local i32 @pp_cq(%struct.pingpong_context*) #1

declare dso_local i64 @ibv_dereg_mr(i32) #1

declare dso_local i64 @ibv_dealloc_pd(i32) #1

declare dso_local i64 @ibv_destroy_comp_channel(i64) #1

declare dso_local i64 @ibv_close_device(i32) #1

declare dso_local i32 @free(%struct.pingpong_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
