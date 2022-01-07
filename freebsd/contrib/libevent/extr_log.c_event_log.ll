; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_log.c_event_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_log.c_event_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"err\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"[%s] %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @event_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_log(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br i1 true, label %6, label %10

6:                                                ; preds = %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @log_fn(i32 %7, i8* %8)
  br label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  switch i32 %11, label %16 [
    i32 131, label %12
    i32 129, label %13
    i32 128, label %14
    i32 130, label %15
  ]

12:                                               ; preds = %10
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %17

13:                                               ; preds = %10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %17

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %17

15:                                               ; preds = %10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %17

16:                                               ; preds = %10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %15, %14, %13, %12
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %19, i8* %20)
  br label %22

22:                                               ; preds = %17, %6
  ret void
}

declare dso_local i32 @log_fn(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
