; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_match_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_ipfw2.c_match_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._s_x = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_token(%struct._s_x* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._s_x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._s_x*, align 8
  %7 = alloca i64, align 8
  store %struct._s_x* %0, %struct._s_x** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct._s_x*, %struct._s_x** %4, align 8
  store %struct._s_x* %10, %struct._s_x** %6, align 8
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load %struct._s_x*, %struct._s_x** %6, align 8
  %16 = getelementptr inbounds %struct._s_x, %struct._s_x* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i1 [ false, %11 ], [ %18, %14 ]
  br i1 %20, label %21, label %44

21:                                               ; preds = %19
  %22 = load %struct._s_x*, %struct._s_x** %6, align 8
  %23 = getelementptr inbounds %struct._s_x, %struct._s_x* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strlen(i8* %24)
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct._s_x*, %struct._s_x** %6, align 8
  %31 = getelementptr inbounds %struct._s_x, %struct._s_x* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @bcmp(i8* %29, i8* %32, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct._s_x*, %struct._s_x** %6, align 8
  %38 = getelementptr inbounds %struct._s_x, %struct._s_x* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %28, %21
  br label %41

41:                                               ; preds = %40
  %42 = load %struct._s_x*, %struct._s_x** %6, align 8
  %43 = getelementptr inbounds %struct._s_x, %struct._s_x* %42, i32 1
  store %struct._s_x* %43, %struct._s_x** %6, align 8
  br label %11

44:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
