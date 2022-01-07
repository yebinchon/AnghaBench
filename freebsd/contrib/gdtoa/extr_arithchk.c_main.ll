; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_arithchk.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdtoa/extr_arithchk.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }

@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"#define %s\0A#define Arith_Kind_ASL %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"#define Long int\0A#define Intcast (int)(long)\0A\00", align 1
@dalign = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"#define Double_Align\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"#define X64_bit_pointers\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"#define Sudden_Underflow\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"/* Unknown arithmetic */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 0, i32* %1, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32*, i32** @stdout, align 8
  store i32* %5, i32** %4, align 8
  store i32 1, i32* %3, align 4
  %6 = call %struct.TYPE_5__* (...) @icheck()
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %0
  %10 = load i32*, i32** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %9
  %24 = load i64, i64* @dalign, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp sle i32 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = call i64 (...) @fzcheck()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36, %29
  store i32 0, i32* %1, align 4
  br label %46

43:                                               ; preds = %0
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_5__* @icheck(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @fzcheck(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
