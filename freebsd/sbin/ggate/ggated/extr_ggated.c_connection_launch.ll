; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_launch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ggate/ggated/extr_ggated.c_connection_launch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ggd_connection = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cannot fork: %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Process created [%s].\00", align 1
@inqueue_mtx = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"pthread_mutex_init(inqueue_mtx): %s.\00", align 1
@inqueue_cond = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"pthread_cond_init(inqueue_cond): %s.\00", align 1
@outqueue_mtx = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"pthread_mutex_init(outqueue_mtx): %s.\00", align 1
@outqueue_cond = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"pthread_cond_init(outqueue_cond): %s.\00", align 1
@send_thread = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"pthread_create(send_thread): %s.\00", align 1
@recv_thread = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"pthread_create(recv_thread): %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ggd_connection*)* @connection_launch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connection_launch(%struct.ggd_connection* %0) #0 {
  %2 = alloca %struct.ggd_connection*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ggd_connection* %0, %struct.ggd_connection** %2, align 8
  %6 = call i32 (...) @fork()
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %79

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @LOG_ERR, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @g_gate_log(i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %79

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %22 = getelementptr inbounds %struct.ggd_connection, %struct.ggd_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @g_gate_log(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @pthread_mutex_init(i32* @inqueue_mtx, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = call i32 @pthread_cond_init(i32* @inqueue_cond, i32* null)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @strerror(i32 %37)
  %39 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = call i32 @pthread_mutex_init(i32* @outqueue_mtx, i32* null)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @strerror(i32 %45)
  %47 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = call i32 @pthread_cond_init(i32* @outqueue_cond, i32* null)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @strerror(i32 %53)
  %55 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* @send_thread, align 4
  %58 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %59 = call i32 @pthread_create(i32* %3, i32* null, i32 %57, %struct.ggd_connection* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* @recv_thread, align 4
  %68 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %69 = call i32 @pthread_create(i32* %3, i32* null, i32 %67, %struct.ggd_connection* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 @g_gate_xlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %66
  %77 = load %struct.ggd_connection*, %struct.ggd_connection** %2, align 8
  %78 = call i32 @disk_thread(%struct.ggd_connection* %77)
  br label %79

79:                                               ; preds = %76, %13, %9
  ret void
}

declare dso_local i32 @fork(...) #1

declare dso_local i32 @g_gate_log(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @g_gate_xlog(i8*, i32) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.ggd_connection*) #1

declare dso_local i32 @disk_thread(%struct.ggd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
