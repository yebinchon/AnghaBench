; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_execute_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/init/extr_init.c_execute_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }

@SIG_IGN = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@X_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't directly exec %s: %m\00", align 1
@errno = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"can't access %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"can't exec %s for %s: %m\00", align 1
@RESOURCE_RC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**)* @execute_script to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_script(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %7 = call i32 @bzero(%struct.sigaction* %3, i32 8)
  %8 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %9 = call i32 @sigemptyset(i32* %8)
  %10 = load i32, i32* @SIG_IGN, align 4
  %11 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @SIGTSTP, align 4
  %13 = call i32 @sigaction(i32 %12, %struct.sigaction* %3, i32* null)
  %14 = load i32, i32* @SIGHUP, align 4
  %15 = call i32 @sigaction(i32 %14, %struct.sigaction* %3, i32* null)
  %16 = call i32 (...) @open_console()
  %17 = load i32, i32* @SIG_SETMASK, align 4
  %18 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 0
  %19 = call i32 @sigprocmask(i32 %17, i32* %18, i32* null)
  %20 = load i8**, i8*** %2, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* @X_OK, align 4
  %25 = call i32 @access(i8* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load i8*, i8** %5, align 8
  %30 = load i8**, i8*** %2, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = call i32 @execv(i8* %29, i8** %31)
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @warning(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %43

35:                                               ; preds = %1
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @EACCES, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %28
  %44 = call i8* (...) @get_shell()
  store i8* %44, i8** %4, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = load i8**, i8*** %2, align 8
  %47 = call i32 @execv(i8* %45, i8** %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @stall(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %48, i8* %49)
  ret void
}

declare dso_local i32 @bzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @open_console(...) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @execv(i8*, i8**) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i8* @get_shell(...) #1

declare dso_local i32 @stall(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
