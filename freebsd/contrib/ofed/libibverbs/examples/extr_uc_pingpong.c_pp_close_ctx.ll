; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_uc_pingpong.c_pp_close_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_uc_pingpong.c_pp_close_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { %struct.pingpong_context*, i32, i64, i32, i32, i32, i32 }

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
  %5 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @ibv_destroy_qp(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %14 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @ibv_destroy_cq(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

21:                                               ; preds = %12
  %22 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %23 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ibv_dereg_mr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %32 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ibv_dealloc_pd(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

39:                                               ; preds = %30
  %40 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %41 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %46 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @ibv_destroy_comp_channel(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fprintf(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %39
  %55 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %56 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @ibv_close_device(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %70

63:                                               ; preds = %54
  %64 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %65 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %64, i32 0, i32 0
  %66 = load %struct.pingpong_context*, %struct.pingpong_context** %65, align 8
  %67 = call i32 @free(%struct.pingpong_context* %66)
  %68 = load %struct.pingpong_context*, %struct.pingpong_context** %3, align 8
  %69 = call i32 @free(%struct.pingpong_context* %68)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %63, %60, %50, %36, %27, %18, %9
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @ibv_destroy_qp(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ibv_destroy_cq(i32) #1

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
