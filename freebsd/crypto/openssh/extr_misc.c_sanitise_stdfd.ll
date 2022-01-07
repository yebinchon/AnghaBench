; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_sanitise_stdfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_sanitise_stdfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Couldn't open /dev/null: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@STDERR_FILENO = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"dup2: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sanitise_stdfd() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @_PATH_DEVNULL, align 4
  %4 = load i32, i32* @O_RDWR, align 4
  %5 = call i32 @open(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  store i32 %5, i32* %1, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  %8 = load i32, i32* @stderr, align 4
  %9 = load i64, i64* @errno, align 8
  %10 = call i8* @strerror(i64 %9)
  %11 = call i32 @fprintf(i32 %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %0
  br label %14

14:                                               ; preds = %40, %13
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @STDERR_FILENO, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @F_GETFL, align 4
  %22 = call i32 @fcntl(i32 %20, i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i64, i64* @errno, align 8
  %26 = load i64, i64* @EBADF, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @dup2(i32 %29, i32 %30)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = load i64, i64* @errno, align 8
  %36 = call i8* @strerror(i64 %35)
  %37 = call i32 @fprintf(i32 %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %24, %19
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @STDERR_FILENO, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @close(i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fcntl(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
