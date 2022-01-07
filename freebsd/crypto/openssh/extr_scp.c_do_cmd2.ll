; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_do_cmd2.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_do_cmd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@verbose_mode = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Executing: 2nd program %s host %s, user %s, command %s\0A\00", align 1
@ssh_program = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"(unspecified)\00", align 1
@sshport = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"do_cmd2: waitpid: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_cmd2(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* @verbose_mode, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* @ssh_program, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i8*, i8** %8, align 8
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i8* [ %24, %23 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %25 ]
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @fmprintf(i32 %18, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %19, i8* %20, i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %26, %6
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @sshport, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 (...) @fork()
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @dup2(i32 %40, i32 0)
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dup2(i32 %42, i32 1)
  %44 = load i32, i32* @ssh_program, align 4
  %45 = call i32 @replacearg(%struct.TYPE_4__* @args, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i32, i32* %9, align 4
  %51 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @ssh_program, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 4
  %67 = call i32 @execvp(i32 %65, i32 %66)
  %68 = load i32, i32* @ssh_program, align 4
  %69 = call i32 @perror(i32 %68)
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %35
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = call i32 @strerror(i64 %75)
  %77 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %92, %79
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @waitpid(i32 %81, i32* %14, i32 0)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i64, i64* @errno, align 8
  %86 = load i64, i64* @EINTR, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* @errno, align 8
  %90 = call i32 @strerror(i64 %89)
  %91 = call i32 @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  br label %80

93:                                               ; preds = %80
  ret i32 0
}

declare dso_local i32 @fmprintf(i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @replacearg(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @addargs(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @execvp(i32, i32) #1

declare dso_local i32 @perror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
