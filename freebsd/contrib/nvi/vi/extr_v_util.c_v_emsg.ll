; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_util.c_v_emsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_util.c_v_emsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"201|Buffers should be specified before the command\00", align 1
@M_BERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"209|The file is empty\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"202|Already at end-of-file\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"203|Already at end-of-line\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"204|%s isn't a vi command\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Window resize interrupted text input mode\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"205|Usage: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_emsg(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %45 [
    i32 135, label %8
    i32 134, label %12
    i32 133, label %16
    i32 132, label %20
    i32 131, label %24
    i32 130, label %24
    i32 128, label %36
    i32 129, label %40
  ]

8:                                                ; preds = %3
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @M_ERR, align 4
  %11 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %9, i32 %10, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %45

12:                                               ; preds = %3
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @M_BERR, align 4
  %15 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %13, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %45

16:                                               ; preds = %3
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* @M_BERR, align 4
  %19 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %17, i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %45

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* @M_BERR, align 4
  %23 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %21, i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %45

24:                                               ; preds = %3, %3
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 130
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @M_BERR, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @M_ERR, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %25, i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  br label %45

36:                                               ; preds = %3
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* @M_ERR, align 4
  %39 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %37, i32 %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  br label %45

40:                                               ; preds = %3
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @M_ERR, align 4
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 (i32*, i32, i8*, ...) @msgq(i32* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %3, %40, %36, %32, %20, %16, %12, %8
  ret void
}

declare dso_local i32 @msgq(i32*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
