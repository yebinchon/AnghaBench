; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_add_to_sleepqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_schedule.c_linux_add_to_sleepqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }

@TASK_PARKED = common dso_local global i32 0, align 4
@TASK_NORMAL = common dso_local global i32 0, align 4
@SLEEPQ_SLEEP = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SLEEPQ_INTERRUPTIBLE = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.task_struct*, i8*, i32, i32)* @linux_add_to_sleepqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_add_to_sleepqueue(i8* %0, %struct.task_struct* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.task_struct* %1, %struct.task_struct** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @TASK_PARKED, align 4
  %15 = load i32, i32* @TASK_NORMAL, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = and i32 %13, %17
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @MPASS(i32 %20)
  %22 = load i32, i32* @SLEEPQ_SLEEP, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @SLEEPQ_INTERRUPTIBLE, align 4
  br label %30

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = or i32 %22, %31
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @sleepq_add(i8* %33, i32* null, i8* %34, i32 %35, i32 0)
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @sleepq_set_timeout(i8* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %30
  %44 = call i32 (...) @DROP_GIANT()
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @sleepq_wait_sig(i8* %53, i32 0)
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @sleepq_timedwait_sig(i8* %57, i32 0)
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %72

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @sleepq_wait(i8* %65, i32 0)
  store i32 0, i32* %12, align 4
  br label %71

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @sleepq_timedwait(i8* %68, i32 0)
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %60
  %73 = call i32 (...) @PICKUP_GIANT()
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @EWOULDBLOCK, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @linux_schedule_save_interrupt_value(%struct.task_struct* %82, i32 %83)
  %85 = load i32, i32* @ERESTARTSYS, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %81, %76, %72
  %88 = load i32, i32* %12, align 4
  ret i32 %88
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sleepq_add(i8*, i32*, i8*, i32, i32) #1

declare dso_local i32 @sleepq_set_timeout(i8*, i32) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @sleepq_wait_sig(i8*, i32) #1

declare dso_local i32 @sleepq_timedwait_sig(i8*, i32) #1

declare dso_local i32 @sleepq_wait(i8*, i32) #1

declare dso_local i32 @sleepq_timedwait(i8*, i32) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @linux_schedule_save_interrupt_value(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
