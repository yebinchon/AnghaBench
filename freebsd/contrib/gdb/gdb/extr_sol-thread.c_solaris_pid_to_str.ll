; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_solaris_pid_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sol-thread.c_solaris_pid_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@solaris_pid_to_str.buf = internal global [100 x i8] zeroinitializer, align 16
@procfs_suppress_run = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Thread %ld (defunct)\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Thread %ld (LWP %ld)\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Thread %ld        \00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"LWP    %ld        \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"process %d    \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @solaris_pid_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @procfs_suppress_run, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i8* @procfs_pid_to_str(i32 %8)
  store i8* %9, i8** %2, align 8
  br label %54

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @is_thread(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @thread_to_lwp(i32 %15, i32 -2)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @PIDGET(i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @GET_THREAD(i32 %21)
  %23 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @solaris_pid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %39

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @PIDGET(i32 %25)
  %27 = icmp ne i32 %26, -2
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @GET_THREAD(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @GET_LWP(i32 %31)
  %33 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @solaris_pid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  br label %38

34:                                               ; preds = %24
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @GET_THREAD(i32 %35)
  %37 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @solaris_pid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  br label %39

39:                                               ; preds = %38, %20
  br label %53

40:                                               ; preds = %10
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @GET_LWP(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @GET_LWP(i32 %45)
  %47 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @solaris_pid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @PIDGET(i32 %49)
  %51 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @solaris_pid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %39
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @solaris_pid_to_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %54

54:                                               ; preds = %53, %7
  %55 = load i8*, i8** %2, align 8
  ret i8* %55
}

declare dso_local i8* @procfs_pid_to_str(i32) #1

declare dso_local i64 @is_thread(i32) #1

declare dso_local i32 @thread_to_lwp(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i32 @GET_LWP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
