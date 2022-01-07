; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togbinary.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togbinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@donebinarytoggle = common dso_local global i32 0, align 4
@binmode = common dso_local global i32 0, align 4
@TELOPT_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Already operating in binary mode with remote host.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Negotiating binary mode with remote host.\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Already in network ascii mode with remote host.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Negotiating network ascii mode with remote host.\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @togbinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @togbinary(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @donebinarytoggle, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* @binmode, align 4
  br label %31

7:                                                ; preds = %1
  %8 = load i32, i32* @TELOPT_BINARY, align 4
  %9 = call i64 @my_want_state_is_will(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* @TELOPT_BINARY, align 4
  %13 = call i64 @my_want_state_is_do(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* @binmode, align 4
  br label %26

16:                                               ; preds = %11, %7
  %17 = load i32, i32* @TELOPT_BINARY, align 4
  %18 = call i64 @my_want_state_is_wont(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* @TELOPT_BINARY, align 4
  %22 = call i64 @my_want_state_is_dont(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* @binmode, align 4
  br label %25

25:                                               ; preds = %24, %20, %16
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i32, i32* @binmode, align 4
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 0, i32 1
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %26, %5
  %32 = load i32, i32* %2, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32, i32* @TELOPT_BINARY, align 4
  %36 = call i64 @my_want_state_is_will(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @TELOPT_BINARY, align 4
  %40 = call i64 @my_want_state_is_do(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %47

44:                                               ; preds = %38, %34
  %45 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %46 = call i32 @tel_enter_binary(i32 3)
  br label %47

47:                                               ; preds = %44, %42
  br label %62

48:                                               ; preds = %31
  %49 = load i32, i32* @TELOPT_BINARY, align 4
  %50 = call i64 @my_want_state_is_wont(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @TELOPT_BINARY, align 4
  %54 = call i64 @my_want_state_is_dont(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %61

58:                                               ; preds = %52, %48
  %59 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %60 = call i32 @tel_leave_binary(i32 3)
  br label %61

61:                                               ; preds = %58, %56
  br label %62

62:                                               ; preds = %61, %47
  ret i32 1
}

declare dso_local i64 @my_want_state_is_will(i32) #1

declare dso_local i64 @my_want_state_is_do(i32) #1

declare dso_local i64 @my_want_state_is_wont(i32) #1

declare dso_local i64 @my_want_state_is_dont(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tel_enter_binary(i32) #1

declare dso_local i32 @tel_leave_binary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
