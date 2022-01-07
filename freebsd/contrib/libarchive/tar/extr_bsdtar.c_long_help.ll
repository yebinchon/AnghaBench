; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_bsdtar.c_long_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_bsdtar.c_long_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"bsdtar\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(bsdtar)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s%s: manipulate archive files\0A\00", align 1
@long_help_msg = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @long_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @long_help() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = call i8* (...) @lafe_getprogname()
  store i8* %3, i8** %1, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fflush(i32 %4)
  %6 = load i8*, i8** %1, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  store i8* %10, i8** %2, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %11, i8* %12)
  %14 = load i8*, i8** @long_help_msg, align 8
  store i8* %14, i8** %2, align 8
  br label %15

15:                                               ; preds = %45, %0
  %16 = load i8*, i8** %2, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load i8*, i8** %2, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 37
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i8*, i8** %2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 112
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %1, align 8
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i8* %32, i32 %33)
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %2, align 8
  br label %39

37:                                               ; preds = %25
  %38 = call i32 @putchar(i8 signext 37)
  br label %39

39:                                               ; preds = %37, %31
  br label %44

40:                                               ; preds = %20
  %41 = load i8*, i8** %2, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @putchar(i8 signext %42)
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %2, align 8
  br label %15

48:                                               ; preds = %15
  %49 = call i32 (...) @version()
  ret void
}

declare dso_local i8* @lafe_getprogname(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @version(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
