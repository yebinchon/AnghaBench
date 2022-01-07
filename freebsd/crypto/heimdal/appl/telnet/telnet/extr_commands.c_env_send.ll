; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_commands.c_env_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.env_lst = type { i32 }

@TELOPT_NEW_ENVIRON = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Cannot send '%s': Telnet ENVIRON option not enabled\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot send '%s': variable not defined\0D\0A\00", align 1
@TELOPT_OLD_ENVIRON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @env_send(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.env_lst*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @TELOPT_NEW_ENVIRON, align 4
  %5 = call i64 @my_state_is_wont(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %27

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  %13 = call %struct.env_lst* @env_find(i8* %12)
  store %struct.env_lst* %13, %struct.env_lst** %3, align 8
  %14 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %15 = icmp eq %struct.env_lst* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  br label %27

20:                                               ; preds = %11
  %21 = call i32 (...) @env_opt_start_info()
  %22 = load %struct.env_lst*, %struct.env_lst** %3, align 8
  %23 = getelementptr inbounds %struct.env_lst, %struct.env_lst* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @env_opt_add(i32 %24)
  %26 = call i32 @env_opt_end(i32 0)
  br label %27

27:                                               ; preds = %20, %16, %7
  ret void
}

declare dso_local i64 @my_state_is_wont(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.env_lst* @env_find(i8*) #1

declare dso_local i32 @env_opt_start_info(...) #1

declare dso_local i32 @env_opt_add(i32) #1

declare dso_local i32 @env_opt_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
