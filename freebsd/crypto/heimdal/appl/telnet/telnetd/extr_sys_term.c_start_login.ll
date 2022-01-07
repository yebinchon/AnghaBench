; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_start_login.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnetd/extr_sys_term.c_start_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_val = type { i32, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"login\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@new_login = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@net = common dso_local global i32 0, align 4
@AUTH_VALID = common dso_local global i32 0, align 4
@LOGIN_PROCESS = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@auth_level = common dso_local global i64 0, align 8
@decrypt_input = common dso_local global i32* null, align 8
@encrypt_output = common dso_local global i32* null, align 8
@line = common dso_local global i32 0, align 4
@log_unauth = common dso_local global i64 0, align 8
@no_warn = common dso_local global i32 0, align 4
@require_otp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_login(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arg_val, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = call i32 (...) @scrub_env()
  %11 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %7, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %7, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = call i32 @malloc(i32 0)
  %14 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %7, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = call i32 @addarg(%struct.arg_val* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @addarg(%struct.arg_val* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @addarg(%struct.arg_val* %7, i8* %17)
  %19 = call i32 @addarg(%struct.arg_val* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  store i8* %29, i8** %8, align 8
  br label %32

30:                                               ; preds = %22, %3
  %31 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i8* %31, i8** %8, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = load i8*, i8** %8, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = call i32 @addarg(%struct.arg_val* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @strdup(i8* %37)
  %39 = call i32 @addarg(%struct.arg_val* %7, i8* %38)
  br label %40

40:                                               ; preds = %35, %32
  %41 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 @unsetenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  %46 = call i32 (...) @closelog()
  %47 = call i32 @sleep(i32 1)
  %48 = load i32, i32* @new_login, align 4
  %49 = getelementptr inbounds %struct.arg_val, %struct.arg_val* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @execv(i32 %48, i32 %50)
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i32, i32* @new_login, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i32, i8*, i8*, ...) @syslog(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* @net, align 4
  %59 = load i32, i32* @new_login, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @fatalperror_errno(i32 %58, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @scrub_env(...) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @addarg(%struct.arg_val*, i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @unsetenv(i8*) #1

declare dso_local i32 @closelog(...) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @execv(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i8*, ...) #1

declare dso_local i32 @fatalperror_errno(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
