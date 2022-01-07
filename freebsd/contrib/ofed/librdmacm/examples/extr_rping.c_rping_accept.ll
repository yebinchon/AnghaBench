; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"accepting client connection request\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rdma_accept\00", align 1
@ERROR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"wait for CONNECTED state %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_accept(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %5 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %7 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @rdma_accept(i32 %8, i32* null)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %17 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %16, i32 0, i32 1
  %18 = call i32 @sem_wait(i32* %17)
  %19 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %20 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ERROR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %15
  %25 = load i32, i32* @stderr, align 4
  %26 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %27 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %28)
  store i32 -1, i32* %2, align 4
  br label %31

30:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %24, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @DEBUG_LOG(i8*) #1

declare dso_local i32 @rdma_accept(i32, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
