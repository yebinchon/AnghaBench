; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/ulog-helper/extr_ulog-helper.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/ulog-helper/extr_ulog-helper.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"login\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@EX_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"logout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @STDIN_FILENO, align 4
  %10 = call i8* @ptsname(i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EX_USAGE, align 4
  store i32 %13, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %47

20:                                               ; preds = %17, %14
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = call i8* (...) @get_username()
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @EX_OSERR, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  br label %40

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i8* [ %38, %35 ], [ null, %39 ]
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @ulog_login(i8* %42, i8* %43, i8* %44)
  %46 = load i32, i32* @EX_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %63

47:                                               ; preds = %20, %17
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @ulog_logout(i8* %57)
  %59 = load i32, i32* @EX_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %63

60:                                               ; preds = %50, %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* @EX_USAGE, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %56, %40, %30, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i8* @ptsname(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @get_username(...) #1

declare dso_local i32 @ulog_login(i8*, i8*, i8*) #1

declare dso_local i32 @ulog_logout(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
