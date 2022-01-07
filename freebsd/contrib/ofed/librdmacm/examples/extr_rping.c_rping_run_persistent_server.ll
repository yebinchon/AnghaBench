; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_run_persistent_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_run_persistent_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i64, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"pthread_attr_init\00", align 1
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pthread_attr_setdetachstate\00", align 1
@CONNECT_REQUEST = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"wait for CONNECT_REQUEST state %d\0A\00", align 1
@rping_persistent_server_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_run_persistent_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_run_persistent_server(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rping_cb*, align 8
  %6 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %7 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %8 = call i32 @rping_bind_server(%struct.rping_cb* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = call i32 @pthread_attr_init(i32* %6)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %62

20:                                               ; preds = %13
  %21 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %22 = call i32 @pthread_attr_setdetachstate(i32* %6, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %62

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %61
  %30 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 2
  %32 = call i32 @sem_wait(i32* %31)
  %33 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %34 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CONNECT_REQUEST, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %41 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  store i32 -1, i32* %2, align 4
  br label %62

44:                                               ; preds = %29
  %45 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %46 = call %struct.rping_cb* @clone_cb(%struct.rping_cb* %45)
  store %struct.rping_cb* %46, %struct.rping_cb** %5, align 8
  %47 = load %struct.rping_cb*, %struct.rping_cb** %5, align 8
  %48 = icmp ne %struct.rping_cb* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %62

50:                                               ; preds = %44
  %51 = load %struct.rping_cb*, %struct.rping_cb** %5, align 8
  %52 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %51, i32 0, i32 1
  %53 = load i32, i32* @rping_persistent_server_thread, align 4
  %54 = load %struct.rping_cb*, %struct.rping_cb** %5, align 8
  %55 = call i32 @pthread_create(i32* %52, i32* %6, i32 %53, %struct.rping_cb* %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %50
  br label %29

62:                                               ; preds = %58, %49, %38, %25, %17, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @rping_bind_server(%struct.rping_cb*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local %struct.rping_cb* @clone_cb(%struct.rping_cb*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.rping_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
