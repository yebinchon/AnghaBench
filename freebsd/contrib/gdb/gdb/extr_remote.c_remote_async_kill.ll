; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_async_kill.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote.c_remote_async_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@remote_desc = common dso_local global i32 0, align 4
@kill_kludge = common dso_local global i64 0, align 8
@putpkt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RETURN_MASK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remote_async_kill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remote_async_kill() #0 {
  %1 = call i64 (...) @target_is_async_p()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @remote_desc, align 4
  %5 = call i32 @serial_async(i32 %4, i32* null, i32 0)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @kill_kludge, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store i64 0, i64* @kill_kludge, align 8
  %10 = call i32 (...) @target_mourn_inferior()
  br label %17

11:                                               ; preds = %6
  %12 = load i64, i64* @putpkt, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load i32, i32* @RETURN_MASK_ERROR, align 4
  %15 = call i32 @catch_errors(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @target_mourn_inferior()
  br label %17

17:                                               ; preds = %11, %9
  ret void
}

declare dso_local i64 @target_is_async_p(...) #1

declare dso_local i32 @serial_async(i32, i32*, i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

declare dso_local i32 @catch_errors(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
