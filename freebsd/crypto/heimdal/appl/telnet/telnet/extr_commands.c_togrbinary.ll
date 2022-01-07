; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togrbinary.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_togrbinary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@donebinarytoggle = common dso_local global i32 0, align 4
@TELOPT_BINARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Already receiving in binary mode.\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Negotiating binary mode on input.\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Already receiving in network ascii mode.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Negotiating network ascii mode on input.\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @togrbinary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @togrbinary(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* @donebinarytoggle, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @TELOPT_BINARY, align 4
  %7 = call i64 @my_want_state_is_do(i32 %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 0, i32 1
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %5, %1
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i32, i32* @TELOPT_BINARY, align 4
  %16 = call i64 @my_want_state_is_do(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %23

20:                                               ; preds = %14
  %21 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @tel_enter_binary(i32 1)
  br label %23

23:                                               ; preds = %20, %18
  br label %34

24:                                               ; preds = %11
  %25 = load i32, i32* @TELOPT_BINARY, align 4
  %26 = call i64 @my_want_state_is_dont(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %33

30:                                               ; preds = %24
  %31 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %32 = call i32 @tel_leave_binary(i32 1)
  br label %33

33:                                               ; preds = %30, %28
  br label %34

34:                                               ; preds = %33, %23
  ret i32 1
}

declare dso_local i64 @my_want_state_is_do(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @tel_enter_binary(i32) #1

declare dso_local i64 @my_want_state_is_dont(i32) #1

declare dso_local i32 @tel_leave_binary(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
