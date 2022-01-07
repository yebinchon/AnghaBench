; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11-client.c_pkcs11_start_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ssh-pkcs11-client.c_pkcs11_start_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"socketpair: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"fork: %s\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"dup2: %s\0A\00", align 1
@_PATH_SSH_PKCS11_HELPER = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"exec: %s: %s\0A\00", align 1
@fd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pkcs11_start_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs11_start_helper() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [2 x i32], align 4
  %3 = load i32, i32* @AF_UNIX, align 4
  %4 = load i32, i32* @SOCK_STREAM, align 4
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %6 = call i32 @socketpair(i32 %3, i32 %4, i32 0, i32* %5)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i32, i32* @errno, align 4
  %10 = call i8* @strerror(i32 %9)
  %11 = call i32 @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10)
  store i32 -1, i32* %1, align 4
  br label %63

12:                                               ; preds = %0
  %13 = call i32 (...) @fork()
  store i32 %13, i32* @pid, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @errno, align 4
  %17 = call i8* @strerror(i32 %16)
  %18 = call i32 @error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  store i32 -1, i32* %1, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load i32, i32* @pid, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @STDIN_FILENO, align 4
  %26 = call i32 @dup2(i32 %24, i32 %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STDOUT_FILENO, align 4
  %32 = call i32 @dup2(i32 %30, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %40

34:                                               ; preds = %28, %22
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* @errno, align 4
  %37 = call i8* @strerror(i32 %36)
  %38 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = call i32 @_exit(i32 1) #3
  unreachable

40:                                               ; preds = %28
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @close(i32 %42)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close(i32 %45)
  %47 = load i8*, i8** @_PATH_SSH_PKCS11_HELPER, align 8
  %48 = load i8*, i8** @_PATH_SSH_PKCS11_HELPER, align 8
  %49 = call i32 @execlp(i8* %47, i8* %48, i8* null)
  %50 = load i32, i32* @stderr, align 4
  %51 = load i8*, i8** @_PATH_SSH_PKCS11_HELPER, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i8* @strerror(i32 %52)
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %53)
  %55 = call i32 @_exit(i32 1) #3
  unreachable

56:                                               ; preds = %19
  br label %57

57:                                               ; preds = %56
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %2, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* @fd, align 4
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %57, %15, %8
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @execlp(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
