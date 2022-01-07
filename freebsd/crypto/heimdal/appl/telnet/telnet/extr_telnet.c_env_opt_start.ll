; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_env_opt_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_env_opt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_reply = common dso_local global i8* null, align 8
@OPT_REPLY_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"env_opt_start: malloc()/realloc() failed!!!\0A\00", align 1
@opt_replyend = common dso_local global i8* null, align 8
@opt_replyp = common dso_local global i8* null, align 8
@IAC = common dso_local global i32 0, align 4
@SB = common dso_local global i32 0, align 4
@telopt_environ = common dso_local global i32 0, align 4
@TELQUAL_IS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_opt_start() #0 {
  %1 = alloca i8*, align 8
  %2 = load i8*, i8** @opt_reply, align 8
  %3 = icmp ne i8* %2, null
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i8*, i8** @opt_reply, align 8
  %6 = load i32, i32* @OPT_REPLY_SIZE, align 4
  %7 = call i8* @realloc(i8* %5, i32 %6)
  store i8* %7, i8** %1, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = load i8*, i8** %1, align 8
  store i8* %11, i8** @opt_reply, align 8
  br label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** @opt_reply, align 8
  %14 = call i32 @free(i8* %13)
  store i8* null, i8** @opt_reply, align 8
  br label %15

15:                                               ; preds = %12, %10
  br label %20

16:                                               ; preds = %0
  %17 = load i32, i32* @OPT_REPLY_SIZE, align 4
  %18 = call i64 @malloc(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** @opt_reply, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i8*, i8** @opt_reply, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** @opt_replyend, align 8
  store i8* null, i8** @opt_replyp, align 8
  store i8* null, i8** @opt_reply, align 8
  br label %47

25:                                               ; preds = %20
  %26 = load i8*, i8** @opt_reply, align 8
  store i8* %26, i8** @opt_replyp, align 8
  %27 = load i8*, i8** @opt_reply, align 8
  %28 = load i32, i32* @OPT_REPLY_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8* %30, i8** @opt_replyend, align 8
  %31 = load i32, i32* @IAC, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** @opt_replyp, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** @opt_replyp, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i32, i32* @SB, align 4
  %36 = trunc i32 %35 to i8
  %37 = load i8*, i8** @opt_replyp, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** @opt_replyp, align 8
  store i8 %36, i8* %37, align 1
  %39 = load i32, i32* @telopt_environ, align 4
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** @opt_replyp, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** @opt_replyp, align 8
  store i8 %40, i8* %41, align 1
  %43 = load i32, i32* @TELQUAL_IS, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** @opt_replyp, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** @opt_replyp, align 8
  store i8 %44, i8* %45, align 1
  br label %47

47:                                               ; preds = %25, %23
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
