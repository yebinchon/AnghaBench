; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_fptr_wlist.c_fptr_whitelist_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fptr_whitelist_event(void (i32, i16, i8*)* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca void (i32, i16, i8*)*, align 8
  store void (i32, i16, i8*)* %0, void (i32, i16, i8*)** %3, align 8
  %4 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %5 = icmp eq void (i32, i16, i8*)* %4, @comm_point_udp_callback
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %58

7:                                                ; preds = %1
  %8 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %9 = icmp eq void (i32, i16, i8*)* %8, @comm_point_udp_ancil_callback
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %58

11:                                               ; preds = %7
  %12 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %13 = icmp eq void (i32, i16, i8*)* %12, @comm_point_tcp_accept_callback
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %58

15:                                               ; preds = %11
  %16 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %17 = icmp eq void (i32, i16, i8*)* %16, @comm_point_tcp_handle_callback
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %58

19:                                               ; preds = %15
  %20 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %21 = icmp eq void (i32, i16, i8*)* %20, @comm_timer_callback
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %58

23:                                               ; preds = %19
  %24 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %25 = icmp eq void (i32, i16, i8*)* %24, @comm_signal_callback
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %58

27:                                               ; preds = %23
  %28 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %29 = icmp eq void (i32, i16, i8*)* %28, @comm_point_local_handle_callback
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %58

31:                                               ; preds = %27
  %32 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %33 = icmp eq void (i32, i16, i8*)* %32, @comm_point_raw_handle_callback
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %58

35:                                               ; preds = %31
  %36 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %37 = icmp eq void (i32, i16, i8*)* %36, @tube_handle_signal
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %58

39:                                               ; preds = %35
  %40 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %41 = icmp eq void (i32, i16, i8*)* %40, @comm_base_handle_slow_accept
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %58

43:                                               ; preds = %39
  %44 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %3, align 8
  %45 = icmp eq void (i32, i16, i8*)* %44, @comm_point_http_handle_callback
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %58

47:                                               ; preds = %43
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local void @comm_point_udp_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_point_udp_ancil_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_point_tcp_accept_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_point_tcp_handle_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_timer_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_signal_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_point_local_handle_callback(i32, i16 signext, i8*) #1

declare dso_local void @comm_point_raw_handle_callback(i32, i16 signext, i8*) #1

declare dso_local void @tube_handle_signal(i32, i16 signext, i8*) #1

declare dso_local void @comm_base_handle_slow_accept(i32, i16 signext, i8*) #1

declare dso_local void @comm_point_http_handle_callback(i32, i16 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
