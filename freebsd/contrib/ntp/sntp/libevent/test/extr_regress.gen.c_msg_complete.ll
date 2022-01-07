; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_msg_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_msg_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32*, i64, i32, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_complete(%struct.msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg*, align 8
  %4 = alloca i32, align 4
  store %struct.msg* %0, %struct.msg** %3, align 8
  %5 = load %struct.msg*, %struct.msg** %3, align 8
  %6 = getelementptr inbounds %struct.msg, %struct.msg* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.msg*, %struct.msg** %3, align 8
  %12 = getelementptr inbounds %struct.msg, %struct.msg* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %56

16:                                               ; preds = %10
  %17 = load %struct.msg*, %struct.msg** %3, align 8
  %18 = getelementptr inbounds %struct.msg, %struct.msg* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.msg*, %struct.msg** %3, align 8
  %23 = getelementptr inbounds %struct.msg, %struct.msg* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kill_complete(i32 %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %2, align 4
  br label %56

28:                                               ; preds = %21, %16
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %52, %28
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.msg*, %struct.msg** %3, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %29
  %36 = load %struct.msg*, %struct.msg** %3, align 8
  %37 = getelementptr inbounds %struct.msg, %struct.msg* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.msg*, %struct.msg** %3, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @run_complete(i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %56

51:                                               ; preds = %40, %35
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %29

55:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %50, %27, %15, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @kill_complete(i32) #1

declare dso_local i32 @run_complete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
