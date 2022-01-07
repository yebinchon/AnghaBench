; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_lwp_to_thr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_lwp_to_thr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"lwp_to_thr: no thr for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lwp_to_thr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lwp_to_thr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @ISTID(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @LIDGET(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  br label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.thread_info* @find_thread_lwp(i32 %17)
  store %struct.thread_info* %18, %struct.thread_info** %3, align 8
  %19 = icmp ne %struct.thread_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  br label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @PIDGET(i32 %22)
  %24 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %25 = getelementptr inbounds %struct.thread_info, %struct.thread_info* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @MKTID(i32 %23, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %21, %20, %15, %10
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @ISTID(i32 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @dbgpid(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @DBG2(i8* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i64 @ISTID(i32) #1

declare dso_local i32 @LIDGET(i32) #1

declare dso_local %struct.thread_info* @find_thread_lwp(i32) #1

declare dso_local i32 @MKTID(i32, i32) #1

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i32 @DBG2(i8*) #1

declare dso_local i32 @dbgpid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
