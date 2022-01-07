; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_my_telnet.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_telnet.c_my_telnet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@telnetport = common dso_local global i64 0, align 8
@TELOPT_SGA = common dso_local global i32 0, align 4
@TELOPT_TTYPE = common dso_local global i32 0, align 4
@TELOPT_NAWS = common dso_local global i32 0, align 4
@TELOPT_TSPEED = common dso_local global i32 0, align 4
@TELOPT_LFLOW = common dso_local global i32 0, align 4
@TELOPT_LINEMODE = common dso_local global i32 0, align 4
@TELOPT_NEW_ENVIRON = common dso_local global i32 0, align 4
@TELOPT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"DISPLAY\00", align 1
@TELOPT_XDISPLOC = common dso_local global i32 0, align 4
@binary = common dso_local global i64 0, align 8
@MODE_TRAPSIG = common dso_local global i32 0, align 4
@TELOPT_AUTHENTICATION = common dso_local global i32 0, align 4
@TELOPT_ENCRYPT = common dso_local global i32 0, align 4
@auth_has_failed = common dso_local global i64 0, align 8
@autologin = common dso_local global i64 0, align 8
@hostname = common dso_local global i32 0, align 4
@intr_happened = common dso_local global i64 0, align 8
@intr_waiting = common dso_local global i32 0, align 4
@wantencryption = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @my_telnet(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = call i32 (...) @sys_telnet_init()
  %6 = load i64, i64* @telnetport, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %1
  %9 = load i32, i32* @TELOPT_SGA, align 4
  %10 = call i32 @send_do(i32 %9, i32 1)
  %11 = load i32, i32* @TELOPT_TTYPE, align 4
  %12 = call i32 @send_will(i32 %11, i32 1)
  %13 = load i32, i32* @TELOPT_NAWS, align 4
  %14 = call i32 @send_will(i32 %13, i32 1)
  %15 = load i32, i32* @TELOPT_TSPEED, align 4
  %16 = call i32 @send_will(i32 %15, i32 1)
  %17 = load i32, i32* @TELOPT_LFLOW, align 4
  %18 = call i32 @send_will(i32 %17, i32 1)
  %19 = load i32, i32* @TELOPT_LINEMODE, align 4
  %20 = call i32 @send_will(i32 %19, i32 1)
  %21 = load i32, i32* @TELOPT_NEW_ENVIRON, align 4
  %22 = call i32 @send_will(i32 %21, i32 1)
  %23 = load i32, i32* @TELOPT_STATUS, align 4
  %24 = call i32 @send_do(i32 %23, i32 1)
  %25 = call i64 @env_getvalue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %8
  %28 = load i32, i32* @TELOPT_XDISPLOC, align 4
  %29 = call i32 @send_will(i32 %28, i32 1)
  br label %30

30:                                               ; preds = %27, %8
  %31 = load i64, i64* @binary, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i64, i64* @binary, align 8
  %35 = call i32 @tel_enter_binary(i64 %34)
  br label %36

36:                                               ; preds = %33, %30
  br label %37

37:                                               ; preds = %36, %1
  br label %38

38:                                               ; preds = %53, %37
  br label %39

39:                                               ; preds = %47, %38
  %40 = call i32 @Scheduler(i32 0)
  store i32 %40, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (...) @setcommandmode()
  br label %54

47:                                               ; preds = %42
  br label %39

48:                                               ; preds = %39
  %49 = call i32 @Scheduler(i32 1)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 (...) @setcommandmode()
  br label %54

53:                                               ; preds = %48
  br label %38

54:                                               ; preds = %51, %45
  ret void
}

declare dso_local i32 @sys_telnet_init(...) #1

declare dso_local i32 @send_do(i32, i32) #1

declare dso_local i32 @send_will(i32, i32) #1

declare dso_local i64 @env_getvalue(i8*) #1

declare dso_local i32 @tel_enter_binary(i64) #1

declare dso_local i32 @Scheduler(i32) #1

declare dso_local i32 @setcommandmode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
