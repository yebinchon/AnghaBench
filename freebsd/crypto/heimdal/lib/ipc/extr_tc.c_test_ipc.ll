; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_tc.c_test_ipc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/ipc/extr_tc.c_test_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i64 }

@.str = private unnamed_addr constant [26 x i8] c"heim_ipc_init_context: %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"heim_ipc_call: %d\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"heim_ipc_semaphore_create\00", align 1
@reply = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"heim_ipc_async: %d\00", align 1
@HEIM_IPC_WAIT_FOREVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ipc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 8
  %5 = alloca %struct.TYPE_5__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i32 @heim_ipc_init_context(i8* %8, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %7, align 4
  %14 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @heim_ipc_call(i32 %18, %struct.TYPE_5__* %4, %struct.TYPE_5__* %5, i32* null)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %15
  %26 = call i32* @heim_ipc_semaphore_create(i32 0)
  store i32* %26, i32** %3, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @reply, align 4
  %35 = call i32 @heim_ipc_async(i32 %32, %struct.TYPE_5__* %4, i32* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* @HEIM_IPC_WAIT_FOREVER, align 4
  %44 = call i32 @heim_ipc_semaphore_wait(i32* %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @heim_ipc_free_context(i32 %45)
  ret void
}

declare dso_local i32 @heim_ipc_init_context(i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @heim_ipc_call(i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32* @heim_ipc_semaphore_create(i32) #1

declare dso_local i32 @heim_ipc_async(i32, %struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @heim_ipc_semaphore_wait(i32*, i32) #1

declare dso_local i32 @heim_ipc_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
