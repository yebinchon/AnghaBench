; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_lex.c_getstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/com_err/extr_lex.c_getstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@lineno = common dso_local global i32 0, align 4
@yylval = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @getstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getstring() #0 {
  %1 = alloca [128 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %42, %35, %18, %0
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 127
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = call i32 (...) @input()
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @EOF, align 4
  %12 = icmp ne i32 %10, %11
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i1 [ false, %5 ], [ %12, %9 ]
  br i1 %14, label %15, label %49

15:                                               ; preds = %13
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = trunc i32 %19 to i8
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %23
  store i8 %20, i8* %24, align 1
  store i32 0, i32* %4, align 4
  br label %5

25:                                               ; preds = %15
  %26 = load i32, i32* %3, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 @_lex_error_message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @lineno, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @lineno, align 4
  br label %49

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %5

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 34
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %3, align 4
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* %2, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %47
  store i8 %44, i8* %48, align 1
  br label %5

49:                                               ; preds = %41, %28, %13
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 %51
  store i8 0, i8* %52, align 1
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %1, i64 0, i64 0
  %54 = call i32* @strdup(i8* %53)
  store i32* %54, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @yylval, i32 0, i32 0), align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load i32, i32* @STRING, align 4
  ret i32 %60
}

declare dso_local i32 @input(...) #1

declare dso_local i32 @_lex_error_message(i8*) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
