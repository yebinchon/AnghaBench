; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_check_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_check_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@DECR_PC_AFTER_BREAK = common dso_local global i64 0, align 8
@td_create_bp_addr = common dso_local global i64 0, align 8
@td_death_bp_addr = common dso_local global i64 0, align 8
@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@TD_NOMSG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Cannot get thread event message: %s\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot get thread info: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Spurious thread death event.\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Spurious thread event.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @read_pc_pid(i32 %8)
  %10 = load i64, i64* @DECR_PC_AFTER_BREAK, align 8
  %11 = sub nsw i64 %9, %10
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @td_create_bp_addr, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @td_death_bp_addr, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %80

20:                                               ; preds = %15, %1
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %77, %20
  %22 = load i32, i32* @thread_agent, align 4
  %23 = call i64 @td_ta_event_getmsg_p(i32 %22, %struct.TYPE_7__* %3)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @TD_OK, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @TD_NOMSG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %80

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @thread_db_err_str(i64 %33)
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %21
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @td_thr_get_info_p(i32 %38, %struct.TYPE_6__* %4)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @TD_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @thread_db_err_str(i64 %44)
  %46 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @GET_PID(i32 %50)
  %52 = call i32 @BUILD_THREAD(i32 %49, i32 %51)
  store i32 %52, i32* %2, align 4
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %74 [
    i32 129, label %55
    i32 128, label %65
  ]

55:                                               ; preds = %47
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @in_thread_list(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %2, align 4
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @attach_thread(i32 %60, i32 %62, %struct.TYPE_6__* %4, i32 1)
  br label %64

64:                                               ; preds = %59, %55
  br label %76

65:                                               ; preds = %47
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @in_thread_list(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %65
  %72 = load i32, i32* %2, align 4
  %73 = call i32 @detach_thread(i32 %72, i32 1)
  br label %76

74:                                               ; preds = %47
  %75 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %71, %64
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %21, label %80

80:                                               ; preds = %19, %31, %77
  ret void
}

declare dso_local i64 @read_pc_pid(i32) #1

declare dso_local i64 @td_ta_event_getmsg_p(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @thread_db_err_str(i64) #1

declare dso_local i64 @td_thr_get_info_p(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @BUILD_THREAD(i32, i32) #1

declare dso_local i32 @GET_PID(i32) #1

declare dso_local i32 @in_thread_list(i32) #1

declare dso_local i32 @attach_thread(i32, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @detach_thread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
