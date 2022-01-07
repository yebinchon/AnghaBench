; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_free_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"rping_free_buffers called on cb %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rping_cb*)* @rping_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rping_free_buffers(%struct.rping_cb* %0) #0 {
  %2 = alloca %struct.rping_cb*, align 8
  store %struct.rping_cb* %0, %struct.rping_cb** %2, align 8
  %3 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %4 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.rping_cb* %3)
  %5 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %6 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ibv_dereg_mr(i32 %7)
  %9 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %10 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ibv_dereg_mr(i32 %11)
  %13 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %14 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ibv_dereg_mr(i32 %15)
  %17 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %18 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @free(i32 %19)
  %21 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %22 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %1
  %26 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %27 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ibv_dereg_mr(i32 %28)
  %30 = load %struct.rping_cb*, %struct.rping_cb** %2, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @free(i32 %32)
  br label %34

34:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @DEBUG_LOG(i8*, %struct.rping_cb*) #1

declare dso_local i32 @ibv_dereg_mr(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
