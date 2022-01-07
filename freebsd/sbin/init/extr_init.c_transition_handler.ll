; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_transition_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_transition_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_state = common dso_local global i32 0, align 4
@read_ttys = common dso_local global i32 0, align 4
@multi_user = common dso_local global i32 0, align 4
@clean_ttys = common dso_local global i32 0, align 4
@catatonia = common dso_local global i32 0, align 4
@requested_transition = common dso_local global i32 0, align 4
@RB_POWEROFF = common dso_local global i32 0, align 4
@RB_POWERCYCLE = common dso_local global i32 0, align 4
@howto = common dso_local global i32 0, align 4
@RB_HALT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@Reboot = common dso_local global i32 0, align 4
@death = common dso_local global i32 0, align 4
@death_single = common dso_local global i32 0, align 4
@runcom = common dso_local global i32 0, align 4
@reroot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @transition_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transition_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %84 [
    i32 134, label %4
    i32 128, label %23
    i32 129, label %23
    i32 130, label %32
    i32 133, label %36
    i32 132, label %38
    i32 131, label %59
    i32 135, label %82
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @current_state, align 4
  %6 = load i32, i32* @read_ttys, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* @current_state, align 4
  %10 = load i32, i32* @multi_user, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @current_state, align 4
  %14 = load i32, i32* @clean_ttys, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @current_state, align 4
  %18 = load i32, i32* @catatonia, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12, %8, %4
  %21 = load i32, i32* @clean_ttys, align 4
  store i32 %21, i32* @requested_transition, align 4
  br label %22

22:                                               ; preds = %20, %16
  br label %85

23:                                               ; preds = %1, %1
  %24 = load i32, i32* %2, align 4
  %25 = icmp eq i32 %24, 129
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @RB_POWEROFF, align 4
  br label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @RB_POWERCYCLE, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* @howto, align 4
  br label %32

32:                                               ; preds = %1, %30
  %33 = load i32, i32* @RB_HALT, align 4
  %34 = load i32, i32* @howto, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @howto, align 4
  br label %36

36:                                               ; preds = %1, %32
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* @Reboot, align 4
  br label %38

38:                                               ; preds = %1, %36
  %39 = load i32, i32* @current_state, align 4
  %40 = load i32, i32* @read_ttys, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @current_state, align 4
  %44 = load i32, i32* @multi_user, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @current_state, align 4
  %48 = load i32, i32* @clean_ttys, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @current_state, align 4
  %52 = load i32, i32* @catatonia, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50, %46, %42, %38
  %55 = load i32, i32* @death, align 4
  store i32 %55, i32* @requested_transition, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @death_single, align 4
  store i32 %57, i32* @requested_transition, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %85

59:                                               ; preds = %1
  %60 = load i32, i32* @current_state, align 4
  %61 = load i32, i32* @runcom, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @current_state, align 4
  %65 = load i32, i32* @read_ttys, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @current_state, align 4
  %69 = load i32, i32* @clean_ttys, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @current_state, align 4
  %73 = load i32, i32* @multi_user, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* @current_state, align 4
  %77 = load i32, i32* @catatonia, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75, %71, %67, %63, %59
  %80 = load i32, i32* @catatonia, align 4
  store i32 %80, i32* @requested_transition, align 4
  br label %81

81:                                               ; preds = %79, %75
  br label %85

82:                                               ; preds = %1
  %83 = load i32, i32* @reroot, align 4
  store i32 %83, i32* @requested_transition, align 4
  br label %85

84:                                               ; preds = %1
  store i32 0, i32* @requested_transition, align 4
  br label %85

85:                                               ; preds = %84, %82, %81, %58, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
