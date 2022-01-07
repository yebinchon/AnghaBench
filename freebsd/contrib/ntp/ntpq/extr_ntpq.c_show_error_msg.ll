; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_show_error_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq.c_show_error_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numhosts = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"server=%s \00", align 1
@currenthost = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"***Server reports a bad format request packet\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"***Server disallowed request (authentication?)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"***Server reports a bad opcode in request\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"***Association ID %d unknown to server\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"***A request variable unknown to the server\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"***Server indicates a request variable was bad\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"***Server returned an unspecified error\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"***Request timed out\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"***Response from server was incomplete\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"***Buffer size exceeded for returned data\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"***Server returns unknown error code %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_error_msg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @numhosts, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** @currenthost, align 8
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %7, %2
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %44 [
    i32 136, label %13
    i32 133, label %16
    i32 135, label %19
    i32 137, label %22
    i32 132, label %26
    i32 134, label %29
    i32 128, label %32
    i32 130, label %35
    i32 131, label %38
    i32 129, label %41
  ]

13:                                               ; preds = %11
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %48

16:                                               ; preds = %11
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %48

19:                                               ; preds = %11
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %48

22:                                               ; preds = %11
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  br label %48

26:                                               ; preds = %11
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %48

29:                                               ; preds = %11
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %48

32:                                               ; preds = %11
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %48

35:                                               ; preds = %11
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %48

38:                                               ; preds = %11
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %48

41:                                               ; preds = %11
  %42 = load i32, i32* @stderr, align 4
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %48

44:                                               ; preds = %11
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %41, %38, %35, %32, %29, %26, %22, %19, %16, %13
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
