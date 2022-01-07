; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_set_tracelevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_set_tracelevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@new_tracelevel = common dso_local global i64 0, align 8
@tracelevel = common dso_local global i64 0, align 8
@ftrace = common dso_local global i32* null, align 8
@savetracename = common dso_local global i8* null, align 8
@sigtrace_pat = common dso_local global i32 0, align 4
@inittracename = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_tracelevel() #0 {
  %1 = load i64, i64* @new_tracelevel, align 8
  %2 = load i64, i64* @tracelevel, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %38

5:                                                ; preds = %0
  %6 = load i64, i64* @new_tracelevel, align 8
  %7 = load i64, i64* @tracelevel, align 8
  %8 = icmp sgt i64 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load i32*, i32** @ftrace, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = load i8*, i8** @savetracename, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i8*, i8** @savetracename, align 8
  %20 = load i32, i32* @sigtrace_pat, align 4
  %21 = call i32 @set_tracefile(i8* %19, i32 %20, i32 0)
  br label %34

22:                                               ; preds = %12
  %23 = load i8*, i8** @inittracename, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i8*, i8** @inittracename, align 8
  %30 = load i32, i32* @sigtrace_pat, align 4
  %31 = call i32 @set_tracefile(i8* %29, i32 %30, i32 0)
  br label %33

32:                                               ; preds = %22
  store i64 0, i64* @new_tracelevel, align 8
  br label %38

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %18
  br label %38

35:                                               ; preds = %9, %5
  %36 = load i32, i32* @sigtrace_pat, align 4
  %37 = call i32 @tracelevel_msg(i32 %36, i32 0)
  br label %38

38:                                               ; preds = %4, %32, %35, %34
  ret void
}

declare dso_local i32 @set_tracefile(i8*, i32, i32) #1

declare dso_local i32 @tracelevel_msg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
