; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_proxabort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_proxabort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sigint_raised = common dso_local global i32 0, align 4
@proxy = common dso_local global i32 0, align 4
@connected = common dso_local global i64 0, align 8
@proxflag = common dso_local global i32 0, align 4
@abortprox = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proxabort(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @sigint_raised, align 4
  %3 = call i32 @alarmtimer(i32 0)
  %4 = load i32, i32* @proxy, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = call i32 @pswitch(i32 1)
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i64, i64* @connected, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* @proxflag, align 4
  br label %13

12:                                               ; preds = %8
  store i32 0, i32* @proxflag, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = call i32 @pswitch(i32 0)
  %15 = load i32, i32* @abortprox, align 4
  %16 = call i32 @siglongjmp(i32 %15, i32 1)
  ret void
}

declare dso_local i32 @alarmtimer(i32) #1

declare dso_local i32 @pswitch(i32) #1

declare dso_local i32 @siglongjmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
