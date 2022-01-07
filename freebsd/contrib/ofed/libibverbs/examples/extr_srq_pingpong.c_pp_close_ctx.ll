; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_srq_pingpong.c_pp_close_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_srq_pingpong.c_pp_close_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pingpong_context = type { %struct.pingpong_context*, i32, i64, i32, i32, i32, i32, i32* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't destroy QP[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Couldn't destroy SRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Couldn't destroy CQ\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't deregister MR\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Couldn't deallocate PD\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Couldn't destroy completion channel\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Couldn't release context\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pingpong_context*, i32)* @pp_close_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pp_close_ctx(%struct.pingpong_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pingpong_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pingpong_context* %0, %struct.pingpong_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %13 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %12, i32 0, i32 7
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ibv_destroy_qp(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load i32, i32* @stderr, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 1, i32* %3, align 4
  br label %96

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %31 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ibv_destroy_srq(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

38:                                               ; preds = %29
  %39 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %40 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @ibv_destroy_cq(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

47:                                               ; preds = %38
  %48 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %49 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ibv_dereg_mr(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

56:                                               ; preds = %47
  %57 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %58 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ibv_dealloc_pd(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

65:                                               ; preds = %56
  %66 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %67 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %72 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @ibv_destroy_comp_channel(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %82 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @ibv_close_device(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %96

89:                                               ; preds = %80
  %90 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %91 = getelementptr inbounds %struct.pingpong_context, %struct.pingpong_context* %90, i32 0, i32 0
  %92 = load %struct.pingpong_context*, %struct.pingpong_context** %91, align 8
  %93 = call i32 @free(%struct.pingpong_context* %92)
  %94 = load %struct.pingpong_context*, %struct.pingpong_context** %4, align 8
  %95 = call i32 @free(%struct.pingpong_context* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %86, %76, %62, %53, %44, %35, %21
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @ibv_destroy_qp(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @ibv_destroy_srq(i32) #1

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
