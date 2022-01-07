; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-lex.c_handle_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/sl/extr_slc-lex.c_handle_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @handle_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @handle_string() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %40, %33, %12, %0
  %6 = call i32 (...) @input()
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @EOF, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %47

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %15
  store i8 92, i8* %16, align 1
  %17 = load i32, i32* %3, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %21
  store i8 %18, i8* %22, align 1
  store i32 0, i32* %4, align 4
  br label %5

23:                                               ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 @error_message(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @lineno, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @lineno, align 4
  br label %47

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 92
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %5

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %47

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %45
  store i8 %42, i8* %46, align 1
  br label %5

47:                                               ; preds = %39, %26, %5
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 %49
  store i8 0, i8* %50, align 1
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i64 0, i64 0
  %52 = call i8* @strdup(i8* %51)
  ret i8* %52
}

declare dso_local i32 @input(...) #1

declare dso_local i32 @error_message(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
