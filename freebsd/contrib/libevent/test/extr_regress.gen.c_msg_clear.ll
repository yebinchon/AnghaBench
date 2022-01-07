; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_clear(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca i32, align 4
  store %struct.msg* %0, %struct.msg** %2, align 8
  %4 = load %struct.msg*, %struct.msg** %2, align 8
  %5 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.msg*, %struct.msg** %2, align 8
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %9, i32 0, i32 9
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @free(i32* %11)
  %13 = load %struct.msg*, %struct.msg** %2, align 8
  %14 = getelementptr inbounds %struct.msg, %struct.msg* %13, i32 0, i32 9
  store i32* null, i32** %14, align 8
  %15 = load %struct.msg*, %struct.msg** %2, align 8
  %16 = getelementptr inbounds %struct.msg, %struct.msg* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.msg*, %struct.msg** %2, align 8
  %19 = getelementptr inbounds %struct.msg, %struct.msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.msg*, %struct.msg** %2, align 8
  %24 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @free(i32* %25)
  %27 = load %struct.msg*, %struct.msg** %2, align 8
  %28 = getelementptr inbounds %struct.msg, %struct.msg* %27, i32 0, i32 8
  store i32* null, i32** %28, align 8
  %29 = load %struct.msg*, %struct.msg** %2, align 8
  %30 = getelementptr inbounds %struct.msg, %struct.msg* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %22, %17
  %32 = load %struct.msg*, %struct.msg** %2, align 8
  %33 = getelementptr inbounds %struct.msg, %struct.msg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.msg*, %struct.msg** %2, align 8
  %38 = getelementptr inbounds %struct.msg, %struct.msg* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kill_free(i32* %39)
  %41 = load %struct.msg*, %struct.msg** %2, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 7
  store i32* null, i32** %42, align 8
  %43 = load %struct.msg*, %struct.msg** %2, align 8
  %44 = getelementptr inbounds %struct.msg, %struct.msg* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %36, %31
  %46 = load %struct.msg*, %struct.msg** %2, align 8
  %47 = getelementptr inbounds %struct.msg, %struct.msg* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %82

50:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %66, %50
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.msg*, %struct.msg** %2, align 8
  %54 = getelementptr inbounds %struct.msg, %struct.msg* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.msg*, %struct.msg** %2, align 8
  %59 = getelementptr inbounds %struct.msg, %struct.msg* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @run_free(i32 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.msg*, %struct.msg** %2, align 8
  %71 = getelementptr inbounds %struct.msg, %struct.msg* %70, i32 0, i32 6
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @free(i32* %72)
  %74 = load %struct.msg*, %struct.msg** %2, align 8
  %75 = getelementptr inbounds %struct.msg, %struct.msg* %74, i32 0, i32 6
  store i32* null, i32** %75, align 8
  %76 = load %struct.msg*, %struct.msg** %2, align 8
  %77 = getelementptr inbounds %struct.msg, %struct.msg* %76, i32 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = load %struct.msg*, %struct.msg** %2, align 8
  %79 = getelementptr inbounds %struct.msg, %struct.msg* %78, i32 0, i32 4
  store i32 0, i32* %79, align 8
  %80 = load %struct.msg*, %struct.msg** %2, align 8
  %81 = getelementptr inbounds %struct.msg, %struct.msg* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  br label %82

82:                                               ; preds = %69, %45
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @kill_free(i32*) #1

declare dso_local i32 @run_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
