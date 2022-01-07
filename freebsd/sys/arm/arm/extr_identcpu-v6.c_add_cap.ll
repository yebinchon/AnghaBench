; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v6.c_add_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_identcpu-v6.c_add_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_buf_idx = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s,\0A\00", align 1
@hw_buf = common dso_local global i8* null, align 8
@hw_buf_newline = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @add_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_cap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @strlen(i8* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @hw_buf_idx, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %6, %7
  %9 = add nsw i32 %8, 2
  %10 = icmp sge i32 %9, 79
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** @hw_buf, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 0, i32* @hw_buf_idx, align 4
  store i32 1, i32* @hw_buf_newline, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @hw_buf_newline, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i8*, i8** @hw_buf, align 8
  %19 = load i32, i32* @hw_buf_idx, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = call i64 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @hw_buf_idx, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @hw_buf_idx, align 4
  br label %37

27:                                               ; preds = %14
  %28 = load i8*, i8** @hw_buf, align 8
  %29 = load i32, i32* @hw_buf_idx, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i64 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* @hw_buf_idx, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* @hw_buf_idx, align 4
  br label %37

37:                                               ; preds = %27, %17
  store i32 0, i32* @hw_buf_newline, align 4
  %38 = load i8*, i8** @hw_buf, align 8
  %39 = load i32, i32* @hw_buf_idx, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8*, i8** %2, align 8
  %43 = call i64 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load i32, i32* @hw_buf_idx, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* @hw_buf_idx, align 4
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
