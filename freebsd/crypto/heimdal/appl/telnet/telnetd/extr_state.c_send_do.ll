; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_state.c_send_do.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_state.c_send_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_dont_resp = common dso_local global i64* null, align 8
@TELOPT_TM = common dso_local global i32 0, align 4
@doopt = common dso_local global i64 0, align 8
@TD_OPTIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"td: send do\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_do(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %40

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
  %16 = call i64 @his_state_is_will(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %7
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @his_want_state_is_will(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  br label %49

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TELOPT_TM, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @set_his_want_state_wont(i32 %28)
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @set_his_want_state_will(i32 %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i64*, i64** @do_dont_resp, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %33, %2
  %41 = load i64, i64* @doopt, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @output_data(i8* %42, i32 %43)
  %45 = load i32, i32* @TD_OPTIONS, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @printoption(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = call i32 @DIAG(i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %40, %22
  ret void
}

declare dso_local i64 @his_state_is_will(i32) #1

declare dso_local i64 @his_want_state_is_will(i32) #1

declare dso_local i32 @set_his_want_state_wont(i32) #1

declare dso_local i32 @set_his_want_state_will(i32) #1

declare dso_local i32 @output_data(i8*, i32) #1

declare dso_local i32 @DIAG(i32, i32) #1

declare dso_local i32 @printoption(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
