; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_bench.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_bench.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@count = common dso_local global i32 0, align 4
@failures = common dso_local global i32 0, align 4
@writes = common dso_local global i64 0, align 8
@num_pipes = common dso_local global i32 0, align 4
@pipes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"e\00", align 1
@fired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = bitcast i32* %9 to i8*
  %17 = call i32 @recv(i32 %15, i8* %16, i32 4, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @count, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* @count, align 4
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @failures, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @failures, align 4
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i64, i64* @writes, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @num_pipes, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @num_pipes, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** @pipes, align 8
  %40 = load i32, i32* %8, align 4
  %41 = mul nsw i32 2, %40
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @send(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @failures, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @failures, align 4
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i64, i64* @writes, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* @writes, align 8
  %55 = load i32, i32* @fired, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @fired, align 4
  br label %57

57:                                               ; preds = %52, %27
  ret void
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
