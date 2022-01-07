; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_connect_to_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sftp.c_connect_to_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"socketpair: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@sshpid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"dup2: %s\0A\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"exec: %s: %s\0A\00", align 1
@killchild = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@suspchild = common dso_local global i32 0, align 4
@SIGTTIN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@sigchld_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i32*, i32*)* @connect_to_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_to_server(i8* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* @AF_UNIX, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %15 = call i32 @socketpair(i32 %12, i32 %13, i32 0, i32* %14)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 @fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %17, %4
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %7, align 8
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  store i32 %27, i32* %9, align 4
  %28 = call i32 (...) @fork()
  store i32 %28, i32* @sshpid, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  %31 = load i32, i32* @errno, align 4
  %32 = call i8* @strerror(i32 %31)
  %33 = call i32 @fatal(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %80

34:                                               ; preds = %21
  %35 = load i32, i32* @sshpid, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %79

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @STDIN_FILENO, align 4
  %40 = call i32 @dup2(i32 %38, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @STDOUT_FILENO, align 4
  %45 = call i32 @dup2(i32 %43, i32 %44)
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %37
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* @errno, align 4
  %50 = call i8* @strerror(i32 %49)
  %51 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = call i32 @_exit(i32 1) #3
  unreachable

53:                                               ; preds = %42
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @close(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @close(i32 %62)
  %64 = load i32, i32* @SIGINT, align 4
  %65 = load i32, i32* @SIG_IGN, align 4
  %66 = call i32 @signal(i32 %64, i32 %65)
  %67 = load i32, i32* @SIGTERM, align 4
  %68 = load i32, i32* @SIG_DFL, align 4
  %69 = call i32 @signal(i32 %67, i32 %68)
  %70 = load i8*, i8** %5, align 8
  %71 = load i8**, i8*** %6, align 8
  %72 = call i32 @execvp(i8* %70, i8** %71)
  %73 = load i32, i32* @stderr, align 4
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* @errno, align 4
  %76 = call i8* @strerror(i32 %75)
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %74, i8* %76)
  %78 = call i32 @_exit(i32 1) #3
  unreachable

79:                                               ; preds = %34
  br label %80

80:                                               ; preds = %79, %30
  %81 = load i32, i32* @SIGTERM, align 4
  %82 = load i32, i32* @killchild, align 4
  %83 = call i32 @signal(i32 %81, i32 %82)
  %84 = load i32, i32* @SIGINT, align 4
  %85 = load i32, i32* @killchild, align 4
  %86 = call i32 @signal(i32 %84, i32 %85)
  %87 = load i32, i32* @SIGHUP, align 4
  %88 = load i32, i32* @killchild, align 4
  %89 = call i32 @signal(i32 %87, i32 %88)
  %90 = load i32, i32* @SIGTSTP, align 4
  %91 = load i32, i32* @suspchild, align 4
  %92 = call i32 @signal(i32 %90, i32 %91)
  %93 = load i32, i32* @SIGTTIN, align 4
  %94 = load i32, i32* @suspchild, align 4
  %95 = call i32 @signal(i32 %93, i32 %94)
  %96 = load i32, i32* @SIGTTOU, align 4
  %97 = load i32, i32* @suspchild, align 4
  %98 = call i32 @signal(i32 %96, i32 %97)
  %99 = load i32, i32* @SIGCHLD, align 4
  %100 = load i32, i32* @sigchld_handler, align 4
  %101 = call i32 @signal(i32 %99, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @close(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @close(i32 %104)
  ret void
}

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
