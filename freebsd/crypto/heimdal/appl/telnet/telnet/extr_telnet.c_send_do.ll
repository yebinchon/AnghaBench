; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_send_do.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_send_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_dont_resp = common dso_local global i64* null, align 8
@IAC = common dso_local global i32 0, align 4
@DO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SENT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_do(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = load i64*, i64** @do_dont_resp, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @my_state_is_do(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %7
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @my_want_state_is_do(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  br label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @set_my_want_state_do(i32 %24)
  %26 = load i64*, i64** @do_dont_resp, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %32

32:                                               ; preds = %23, %2
  %33 = load i32, i32* @IAC, align 4
  %34 = load i32, i32* @DO, align 4
  %35 = call i32 @NET2ADD(i32 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @NETADD(i32 %36)
  %38 = load i32, i32* @DO, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @printoption(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %22
  ret void
}

declare dso_local i64 @my_state_is_do(i32) #1

declare dso_local i64 @my_want_state_is_do(i32) #1

declare dso_local i32 @set_my_want_state_do(i32) #1

declare dso_local i32 @NET2ADD(i32, i32) #1

declare dso_local i32 @NETADD(i32) #1

declare dso_local i32 @printoption(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
