; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_alive.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/libgdb/extr_fbsd-threads.c_fbsd_thread_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@TD_THR_UNKNOWN = common dso_local global i64 0, align 8
@TD_THR_ZOMBIE = common dso_local global i64 0, align 8
@fbsd_thread_active = common dso_local global i64 0, align 8
@target_has_execution = common dso_local global i32 0, align 4
@core_bfd = common dso_local global i32 0, align 4
@fbsd_core_check_lwp = common dso_local global i32 0, align 4
@PT_GETREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @fbsd_thread_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbsd_thread_alive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @IS_THREAD(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %1
  %13 = load i32, i32* @thread_agent, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @GET_THREAD(i32 %14)
  %16 = call i64 @td_ta_map_id2thr_p(i32 %13, i32 %15, i32* %4)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @TD_OK, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %78

21:                                               ; preds = %12
  %22 = call i64 @td_thr_get_info_p(i32* %4, %struct.TYPE_3__* %5)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @TD_OK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %78

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TD_THR_UNKNOWN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TD_THR_ZOMBIE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  store i32 0, i32* %2, align 4
  br label %78

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %78

39:                                               ; preds = %1
  %40 = load i32, i32* %3, align 4
  %41 = call i64 @GET_LWP(i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %78

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* @fbsd_thread_active, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* @thread_agent, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i64 @GET_LWP(i32 %50)
  %52 = call i64 @td_ta_map_lwp2thr_p(i32 %49, i64 %51, i32* %4)
  store i64 %52, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @TD_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %78

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %45
  %59 = load i32, i32* @target_has_execution, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = call i64 @GET_LWP(i32 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* @core_bfd, align 4
  %65 = load i32, i32* @fbsd_core_check_lwp, align 4
  %66 = call i32 @bfd_map_over_sections(i32 %64, i32 %65, i64* %8)
  %67 = load i64, i64* %8, align 8
  %68 = icmp eq i64 %67, 0
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %2, align 4
  br label %78

70:                                               ; preds = %58
  %71 = load i32, i32* @PT_GETREGS, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @GET_LWP(i32 %72)
  %74 = ptrtoint i32* %7 to i32
  %75 = call i64 @ptrace(i32 %71, i64 %73, i32 %74, i32 0)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %70, %61, %56, %43, %38, %37, %26, %20
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @IS_THREAD(i32) #1

declare dso_local i64 @td_ta_map_id2thr_p(i32, i32, i32*) #1

declare dso_local i32 @GET_THREAD(i32) #1

declare dso_local i64 @td_thr_get_info_p(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @GET_LWP(i32) #1

declare dso_local i64 @td_ta_map_lwp2thr_p(i32, i64, i32*) #1

declare dso_local i32 @bfd_map_over_sections(i32, i32, i64*) #1

declare dso_local i64 @ptrace(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
