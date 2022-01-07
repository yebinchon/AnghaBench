; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_forward_equals.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_forward_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Forward = type { i64, i64, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @forward_equals(%struct.Forward* %0, %struct.Forward* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Forward*, align 8
  %5 = alloca %struct.Forward*, align 8
  store %struct.Forward* %0, %struct.Forward** %4, align 8
  store %struct.Forward* %1, %struct.Forward** %5, align 8
  %6 = load %struct.Forward*, %struct.Forward** %4, align 8
  %7 = getelementptr inbounds %struct.Forward, %struct.Forward* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.Forward*, %struct.Forward** %5, align 8
  %10 = getelementptr inbounds %struct.Forward, %struct.Forward* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp_maybe_null(i32 %8, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

15:                                               ; preds = %2
  %16 = load %struct.Forward*, %struct.Forward** %4, align 8
  %17 = getelementptr inbounds %struct.Forward, %struct.Forward* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.Forward*, %struct.Forward** %5, align 8
  %20 = getelementptr inbounds %struct.Forward, %struct.Forward* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %64

24:                                               ; preds = %15
  %25 = load %struct.Forward*, %struct.Forward** %4, align 8
  %26 = getelementptr inbounds %struct.Forward, %struct.Forward* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.Forward*, %struct.Forward** %5, align 8
  %29 = getelementptr inbounds %struct.Forward, %struct.Forward* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strcmp_maybe_null(i32 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %64

34:                                               ; preds = %24
  %35 = load %struct.Forward*, %struct.Forward** %4, align 8
  %36 = getelementptr inbounds %struct.Forward, %struct.Forward* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.Forward*, %struct.Forward** %5, align 8
  %39 = getelementptr inbounds %struct.Forward, %struct.Forward* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @strcmp_maybe_null(i32 %37, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %64

44:                                               ; preds = %34
  %45 = load %struct.Forward*, %struct.Forward** %4, align 8
  %46 = getelementptr inbounds %struct.Forward, %struct.Forward* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.Forward*, %struct.Forward** %5, align 8
  %49 = getelementptr inbounds %struct.Forward, %struct.Forward* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %64

53:                                               ; preds = %44
  %54 = load %struct.Forward*, %struct.Forward** %4, align 8
  %55 = getelementptr inbounds %struct.Forward, %struct.Forward* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.Forward*, %struct.Forward** %5, align 8
  %58 = getelementptr inbounds %struct.Forward, %struct.Forward* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @strcmp_maybe_null(i32 %56, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %64

63:                                               ; preds = %53
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %62, %52, %43, %33, %23, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @strcmp_maybe_null(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
