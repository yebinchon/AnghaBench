; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_editit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/bsdlabel/extr_bsdlabel.c_editit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPROCLIM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"you have too many processes\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"setresgid\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"setresuid\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@DEFEDITOR = common dso_local global i8* null, align 8
@tmpfil = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @editit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @editit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @SIGINT, align 4
  %10 = call i32 @sigmask(i32 %9)
  %11 = load i32, i32* @SIGQUIT, align 4
  %12 = call i32 @sigmask(i32 %11)
  %13 = or i32 %10, %12
  %14 = load i32, i32* @SIGHUP, align 4
  %15 = call i32 @sigmask(i32 %14)
  %16 = or i32 %13, %15
  %17 = call i32 @sigblock(i32 %16)
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %33, %0
  %19 = call i32 (...) @fork()
  store i32 %19, i32* %2, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EPROCLIM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %87

27:                                               ; preds = %21
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EAGAIN, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %87

33:                                               ; preds = %27
  %34 = call i32 @sleep(i32 1)
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @sigsetmask(i32 %39)
  %41 = call i32 (...) @getgid()
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @setresgid(i32 %42, i32 %43, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %38
  %50 = call i32 (...) @getuid()
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @setresuid(i32 %51, i32 %52, i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %49
  %59 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %59, i8** %6, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i8*, i8** @DEFEDITOR, align 8
  store i8* %62, i8** %6, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @tmpfil, align 4
  %67 = call i32 @execlp(i8* %64, i8* %65, i32 %66, i8* null)
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  br label %70

70:                                               ; preds = %63, %35
  br label %71

71:                                               ; preds = %79, %70
  %72 = call i32 @wait(i32* %4)
  store i32 %72, i32* %3, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %80

79:                                               ; preds = %74
  br label %71

80:                                               ; preds = %78, %71
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @sigsetmask(i32 %81)
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %1, align 4
  br label %87

87:                                               ; preds = %80, %31, %25
  %88 = load i32, i32* %1, align 4
  ret i32 %88
}

declare dso_local i32 @sigblock(i32) #1

declare dso_local i32 @sigmask(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @sigsetmask(i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @setresgid(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @setresuid(i32, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @execlp(i8*, i8*, i32, i8*) #1

declare dso_local i32 @wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
