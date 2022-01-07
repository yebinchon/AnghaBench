; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_stack.c_singlethread_map_stacks_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_stack.c_singlethread_map_stacks_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_USRSTACK = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @singlethread_map_stacks_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @singlethread_map_stacks_exec() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca %struct.rlimit, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @CTL_KERN, align 4
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @KERN_USRSTACK, align 4
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 1
  store i32 %7, i32* %8, align 4
  store i64 8, i64* %4, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %10 = call i32 @sysctl(i32* %9, i32 2, i64* %3, i64* %4, i32* null, i32 0)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %28

13:                                               ; preds = %0
  %14 = load i32, i32* @RLIMIT_STACK, align 4
  %15 = call i32 @getrlimit(i32 %14, %struct.rlimit* %2)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %28

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %19, %21
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (...) @_rtld_get_stack_prot()
  %27 = call i32 @mprotect(i8* %23, i64 %25, i32 %26)
  br label %28

28:                                               ; preds = %18, %17, %12
  ret void
}

declare dso_local i32 @sysctl(i32*, i32, i64*, i64*, i32*, i32) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @mprotect(i8*, i64, i32) #1

declare dso_local i32 @_rtld_get_stack_prot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
