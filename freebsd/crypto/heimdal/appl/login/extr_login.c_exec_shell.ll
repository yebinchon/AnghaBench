; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login.c_exec_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/login/extr_login.c_exec_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"login process\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@env = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't exec %s, trying %s\00", align 1
@_PATH_BSHELL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"-sh\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @exec_shell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_shell(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 @extend_env(i32* null)
  %8 = call i64 (...) @start_login_process()
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %2
  %13 = call i32 (...) @start_logout_process()
  %14 = load i8*, i8** %3, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %6, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load i8*, i8** %3, align 8
  store i8* %22, i8** %6, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i8*, i8** %3, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @env, align 4
  %33 = call i32 @execle(i8* %30, i8* %31, i32* null, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** @_PATH_BSHELL, align 8
  %39 = call i32 @warnx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %37, i8* %38)
  %40 = load i8*, i8** @_PATH_BSHELL, align 8
  %41 = load i32, i32* @env, align 4
  %42 = call i32 @execle(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %41)
  %43 = load i8*, i8** @_PATH_BSHELL, align 8
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %36, %29
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  ret void
}

declare dso_local i32 @extend_env(i32*) #1

declare dso_local i64 @start_login_process(...) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @start_logout_process(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @execle(i8*, i8*, i32*, i32) #1

declare dso_local i32 @warnx(i8*, i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
