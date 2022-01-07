; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_match_token_relaxed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_match_token_relaxed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._s_x = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_token_relaxed(%struct._s_x* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._s_x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._s_x*, align 8
  %7 = alloca %struct._s_x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._s_x* %0, %struct._s_x** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct._s_x*, %struct._s_x** %4, align 8
  store %struct._s_x* %12, %struct._s_x** %6, align 8
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct._s_x*, %struct._s_x** %6, align 8
  %18 = getelementptr inbounds %struct._s_x, %struct._s_x* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %39

23:                                               ; preds = %21
  %24 = load %struct._s_x*, %struct._s_x** %6, align 8
  %25 = getelementptr inbounds %struct._s_x, %struct._s_x* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @strncmp(i32* %26, i8* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %36

32:                                               ; preds = %23
  %33 = load %struct._s_x*, %struct._s_x** %6, align 8
  store %struct._s_x* %33, %struct._s_x** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load %struct._s_x*, %struct._s_x** %6, align 8
  %38 = getelementptr inbounds %struct._s_x, %struct._s_x* %37, i32 1
  store %struct._s_x* %38, %struct._s_x** %6, align 8
  br label %13

39:                                               ; preds = %21
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct._s_x*, %struct._s_x** %7, align 8
  %44 = getelementptr inbounds %struct._s_x, %struct._s_x* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 -2, i32 -1
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
