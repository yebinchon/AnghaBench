; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_initdumptimes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dump/extr_itime.c_initdumptimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dumpdates = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"WARNING: cannot read %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"WARNING: no file `%s', making an empty one\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"WARNING: cannot create %s: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"cannot read %s even after creating it: %s\0A\00", align 1
@LOCK_SH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initdumptimes() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @dumpdates, align 4
  %3 = call i32* @fopen(i32 %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %37

5:                                                ; preds = %0
  %6 = load i64, i64* @errno, align 8
  %7 = load i64, i64* @ENOENT, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* @dumpdates, align 4
  %11 = load i64, i64* @errno, align 8
  %12 = call i32 @strerror(i64 %11)
  %13 = call i32 (i8*, i32, ...) @msg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %10, i32 %12)
  br label %46

14:                                               ; preds = %5
  %15 = load i32, i32* @dumpdates, align 4
  %16 = call i32 (i8*, i32, ...) @msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @dumpdates, align 4
  %18 = call i32* @fopen(i32 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %18, i32** %1, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @dumpdates, align 4
  %22 = load i64, i64* @errno, align 8
  %23 = call i32 @strerror(i64 %22)
  %24 = call i32 (i8*, i32, ...) @msg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %21, i32 %23)
  br label %46

25:                                               ; preds = %14
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @fclose(i32* %26)
  %28 = load i32, i32* @dumpdates, align 4
  %29 = call i32* @fopen(i32 %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %29, i32** %1, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* @dumpdates, align 4
  %33 = load i64, i64* @errno, align 8
  %34 = call i32 @strerror(i64 %33)
  %35 = call i32 @quit(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %0
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @fileno(i32* %38)
  %40 = load i32, i32* @LOCK_SH, align 4
  %41 = call i32 @flock(i32 %39, i32 %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @readdumptimes(i32* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @fclose(i32* %44)
  br label %46

46:                                               ; preds = %37, %20, %9
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @msg(i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @quit(i8*, i32, i32) #1

declare dso_local i32 @flock(i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @readdumptimes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
