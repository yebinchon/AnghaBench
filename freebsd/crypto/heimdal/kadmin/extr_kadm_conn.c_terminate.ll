; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_terminate.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kadmin/extr_kadm_conn.c_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pgrp = common dso_local global i64 0, align 8
@term_flag = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@doing_useful_work = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terminate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i64 (...) @getpid()
  %5 = load i64, i64* @pgrp, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  store i32 1, i32* @term_flag, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SIG_IGN, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  %11 = load i64, i64* @pgrp, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @killpg(i64 %11, i32 %12)
  br label %21

14:                                               ; preds = %1
  %15 = load i64, i64* @doing_useful_work, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* @term_flag, align 4
  br label %20

18:                                               ; preds = %14
  %19 = call i32 @exit(i32 0) #3
  unreachable

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %20, %7
  %22 = call i32 @SIGRETURN(i32 0)
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @killpg(i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SIGRETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
