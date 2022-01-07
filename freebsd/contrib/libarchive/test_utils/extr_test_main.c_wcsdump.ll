; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_wcsdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_wcsdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"      %s = \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\\x%02X\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\\u%04X\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\\U%08X\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @wcsdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcsdump(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %6)
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %50

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %47, %12
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %4, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp uge i32 %22, 32
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %5, align 4
  %26 = icmp ult i32 %25, 127
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %47

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %5, align 4
  %32 = icmp ult i32 %31, 256
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %34)
  br label %46

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = icmp ult i32 %37, 65536
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  br label %45

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  br label %46

46:                                               ; preds = %45, %33
  br label %47

47:                                               ; preds = %46, %27
  br label %14

48:                                               ; preds = %14
  %49 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @logprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
