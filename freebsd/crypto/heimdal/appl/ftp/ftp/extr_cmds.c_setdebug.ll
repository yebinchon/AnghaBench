; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_setdebug.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/ftp/ftp/extr_cmds.c_setdebug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"%s: bad debugging value.\0A\00", align 1
@code = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@SO_DEBUG = common dso_local global i32 0, align 4
@options = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Debugging %s (debug=%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setdebug(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i8**, i8*** %4, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  store i32 -1, i32* @code, align 4
  br label %47

20:                                               ; preds = %8
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @debug, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %20
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* @debug, align 4
  %28 = load i32, i32* @debug, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* @SO_DEBUG, align 4
  %32 = load i32, i32* @options, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* @options, align 4
  br label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @SO_DEBUG, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* @options, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* @options, align 4
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @debug, align 4
  %41 = call i8* @onoff(i32 %40)
  %42 = load i32, i32* @debug, align 4
  %43 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32, i32* @debug, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* @code, align 4
  br label %47

47:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @onoff(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
