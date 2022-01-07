; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_askuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_tset.c_askuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@askuser.answer = internal global [256 x i8] zeroinitializer, align 16
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Terminal type? [%s] \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Terminal type? \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @askuser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @askuser(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @stdin, align 4
  %6 = call i32 @clearerr(i32 %5)
  %7 = load i32, i32* @stdin, align 4
  %8 = call i64 @feof(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @stdin, align 4
  %12 = call i64 @ferror(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (...) @exit_error()
  br label %18

18:                                               ; preds = %14, %10
  br label %19

19:                                               ; preds = %56, %18
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @stderr, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 @fflush(i32 %30)
  %32 = load i32, i32* @stdin, align 4
  %33 = call i64 @fgets(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @askuser.answer, i64 0, i64 0), i32 256, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (...) @exit_error()
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i8*, i8** %3, align 8
  store i8* %41, i8** %2, align 8
  br label %57

42:                                               ; preds = %29
  %43 = call i8* @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @askuser.answer, i64 0, i64 0), i8 signext 10)
  store i8* %43, i8** %4, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i8*, i8** %4, align 8
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @askuser.answer, i64 0, i64 0), align 16
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @askuser.answer, i64 0, i64 0), i8** %2, align 8
  br label %57

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8*, i8** %3, align 8
  store i8* %55, i8** %2, align 8
  br label %57

56:                                               ; preds = %51
  br label %19

57:                                               ; preds = %54, %50, %40
  %58 = load i8*, i8** %2, align 8
  ret i8* %58
}

declare dso_local i32 @clearerr(i32) #1

declare dso_local i64 @feof(i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @exit_error(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
