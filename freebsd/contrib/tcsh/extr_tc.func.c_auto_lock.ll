; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_auto_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.func.c_auto_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8*, i8* }

@euid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@GettingInput = common dso_local global i64 0, align 8
@just_signaled = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"\0AIncorrect passwd for %s\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@KA_USERAUTH_VERSION = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@STRafsuser = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @auto_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auto_lock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* null, i8** %2, align 8
  %6 = load i32, i32* @euid, align 4
  %7 = call %struct.passwd* @xgetpwuid(i32 %6)
  store %struct.passwd* %7, %struct.passwd** %3, align 8
  %8 = icmp ne %struct.passwd* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load %struct.passwd*, %struct.passwd** %3, align 8
  %11 = getelementptr inbounds %struct.passwd, %struct.passwd* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %2, align 8
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i8*, i8** %2, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @auto_logout()
  br label %65

18:                                               ; preds = %13
  %19 = call i32 @setalarm(i32 0)
  %20 = call i32 @xputchar(i8 signext 10)
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %60, %18
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %63

24:                                               ; preds = %21
  %25 = call i8* @xgetpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @crypt to i32 (i8*, i8*, ...)*)(i8* %26, i8* %27)
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %4, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %54

33:                                               ; preds = %24
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = call i32 @memset(i8* %39, i32 0, i32 %41)
  %43 = load i64, i64* @GettingInput, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %38
  %46 = load i64, i64* @just_signaled, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = call i32 (...) @Rawmode()
  %50 = call i32 (...) @ClearLines()
  %51 = call i32 (...) @ClearDisp()
  %52 = call i32 (...) @Refresh()
  br label %53

53:                                               ; preds = %48, %45, %38
  store i64 0, i64* @just_signaled, align 8
  br label %65

54:                                               ; preds = %33, %24
  %55 = call i32 @CGETS(i32 22, i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.passwd*, %struct.passwd** %3, align 8
  %57 = getelementptr inbounds %struct.passwd, %struct.passwd* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @xprintf(i32 %55, i8* %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %21

63:                                               ; preds = %21
  %64 = call i32 (...) @auto_logout()
  br label %65

65:                                               ; preds = %63, %53, %16
  ret void
}

declare dso_local %struct.passwd* @xgetpwuid(i32) #1

declare dso_local i32 @auto_logout(...) #1

declare dso_local i32 @setalarm(i32) #1

declare dso_local i32 @xputchar(i8 signext) #1

declare dso_local i8* @xgetpass(i8*) #1

declare dso_local i32 @crypt(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @Rawmode(...) #1

declare dso_local i32 @ClearLines(...) #1

declare dso_local i32 @ClearDisp(...) #1

declare dso_local i32 @Refresh(...) #1

declare dso_local i32 @xprintf(i32, i8*) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
