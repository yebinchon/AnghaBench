; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_lwp_infpid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_uw-thread.c_lwp_infpid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_ptid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c" inferior_ptid to procfs: %s => %s\00", align 1
@null_ptid = common dso_local global i32 0, align 4
@thr_infpid = common dso_local global i32 0, align 4
@infpid_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lwp_infpid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lwp_infpid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @inferior_ptid, align 4
  %4 = call i32 @thr_to_lwp(i32 %3)
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @inferior_ptid, align 4
  %6 = call i32 @dbgpid(i32 %5)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @dbgpid(i32 %7)
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @DBG2(i8* %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @null_ptid, align 4
  %14 = call i64 @ptid_equal(i32 %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %21

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* @inferior_ptid, align 4
  %19 = load i32, i32* @thr_infpid, align 4
  %20 = call i32 @make_cleanup(i32 %19, i32* null)
  store i32 %20, i32* @infpid_cleanup, align 4
  store i32 1, i32* %1, align 4
  br label %21

21:                                               ; preds = %17, %16
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @thr_to_lwp(i32) #1

declare dso_local i32 @DBG2(i8*) #1

declare dso_local i32 @dbgpid(i32) #1

declare dso_local i64 @ptid_equal(i32, i32) #1

declare dso_local i32 @make_cleanup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
