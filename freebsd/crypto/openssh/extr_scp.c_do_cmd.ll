; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_do_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_scp.c_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@verbose_mode = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Executing: program %s host %s, user %s, command %s\0A\00", align 1
@ssh_program = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"(unspecified)\00", align 1
@sshport = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"pipe: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@suspchild = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@do_cmd_pid = common dso_local global i32 0, align 4
@args = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@SIGTERM = common dso_local global i32 0, align 4
@killchild = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_cmd(i8* %0, i8* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [2 x i32], align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i32], align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i64, i64* @verbose_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %6
  %19 = load i32, i32* @stderr, align 4
  %20 = load i32, i32* @ssh_program, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** %8, align 8
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i8* [ %25, %24 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %26 ]
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @fmprintf(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %21, i8* %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %6
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @sshport, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %38 = call i64 @pipe(i32* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @errno, align 4
  %42 = call i32 @strerror(i32 %41)
  %43 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %46 = call i64 @pipe(i32* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @errno, align 4
  %50 = call i32 @strerror(i32 %49)
  %51 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %54 = call i64 @pipe(i32* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @errno, align 4
  %58 = call i32 @strerror(i32 %57)
  %59 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @close(i32 %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @close(i32 %65)
  %67 = load i32, i32* @SIGTSTP, align 4
  %68 = load i32, i32* @suspchild, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  %70 = load i32, i32* @SIGTTIN, align 4
  %71 = load i32, i32* @suspchild, align 4
  %72 = call i32 @signal(i32 %70, i32 %71)
  %73 = load i32, i32* @SIGTTOU, align 4
  %74 = load i32, i32* @suspchild, align 4
  %75 = call i32 @signal(i32 %73, i32 %74)
  %76 = call i32 (...) @fork()
  store i32 %76, i32* @do_cmd_pid, align 4
  %77 = load i32, i32* @do_cmd_pid, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %60
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @close(i32 %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dup2(i32 %87, i32 0)
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dup2(i32 %90, i32 1)
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @close(i32 %93)
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* @ssh_program, align 4
  %99 = call i32 @replacearg(%struct.TYPE_4__* @args, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %106

102:                                              ; preds = %79
  %103 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %102, %79
  %107 = load i8*, i8** %8, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 (%struct.TYPE_4__*, i8*, ...) @addargs(%struct.TYPE_4__* @args, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @ssh_program, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @args, i32 0, i32 0), align 4
  %121 = call i32 @execvp(i32 %119, i32 %120)
  %122 = load i32, i32* @ssh_program, align 4
  %123 = call i32 @perror(i32 %122)
  %124 = call i32 @exit(i32 1) #3
  unreachable

125:                                              ; preds = %60
  %126 = load i32, i32* @do_cmd_pid, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 @strerror(i32 %129)
  %131 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %130)
  br label %132

132:                                              ; preds = %128, %125
  br label %133

133:                                              ; preds = %132
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @close(i32 %135)
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @close(i32 %141)
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %11, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* @SIGTERM, align 4
  %147 = load i32, i32* @killchild, align 4
  %148 = call i32 @signal(i32 %146, i32 %147)
  %149 = load i32, i32* @SIGINT, align 4
  %150 = load i32, i32* @killchild, align 4
  %151 = call i32 @signal(i32 %149, i32 %150)
  %152 = load i32, i32* @SIGHUP, align 4
  %153 = load i32, i32* @killchild, align 4
  %154 = call i32 @signal(i32 %152, i32 %153)
  ret i32 0
}

declare dso_local i32 @fmprintf(i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @replacearg(%struct.TYPE_4__*, i32, i8*, i32) #1

declare dso_local i32 @addargs(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @execvp(i32, i32) #1

declare dso_local i32 @perror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
