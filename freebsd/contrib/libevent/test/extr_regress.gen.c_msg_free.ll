; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, i32, %struct.msg*, i64, i32*, %struct.msg*, %struct.msg* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msg_free(%struct.msg* %0) #0 {
  %2 = alloca %struct.msg*, align 8
  %3 = alloca i32, align 4
  store %struct.msg* %0, %struct.msg** %2, align 8
  %4 = load %struct.msg*, %struct.msg** %2, align 8
  %5 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 6
  %6 = load %struct.msg*, %struct.msg** %5, align 8
  %7 = icmp ne %struct.msg* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.msg*, %struct.msg** %2, align 8
  %10 = getelementptr inbounds %struct.msg, %struct.msg* %9, i32 0, i32 6
  %11 = load %struct.msg*, %struct.msg** %10, align 8
  %12 = call i32 @free(%struct.msg* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.msg*, %struct.msg** %2, align 8
  %15 = getelementptr inbounds %struct.msg, %struct.msg* %14, i32 0, i32 5
  %16 = load %struct.msg*, %struct.msg** %15, align 8
  %17 = icmp ne %struct.msg* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.msg*, %struct.msg** %2, align 8
  %20 = getelementptr inbounds %struct.msg, %struct.msg* %19, i32 0, i32 5
  %21 = load %struct.msg*, %struct.msg** %20, align 8
  %22 = call i32 @free(%struct.msg* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.msg*, %struct.msg** %2, align 8
  %25 = getelementptr inbounds %struct.msg, %struct.msg* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.msg*, %struct.msg** %2, align 8
  %30 = getelementptr inbounds %struct.msg, %struct.msg* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kill_free(i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.msg*, %struct.msg** %2, align 8
  %35 = getelementptr inbounds %struct.msg, %struct.msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %53, %38
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.msg*, %struct.msg** %2, align 8
  %42 = getelementptr inbounds %struct.msg, %struct.msg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.msg*, %struct.msg** %2, align 8
  %47 = getelementptr inbounds %struct.msg, %struct.msg* %46, i32 0, i32 2
  %48 = load %struct.msg*, %struct.msg** %47, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.msg, %struct.msg* %48, i64 %50
  %52 = call i32 @run_free(%struct.msg* byval(%struct.msg) align 8 %51)
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %39

56:                                               ; preds = %39
  %57 = load %struct.msg*, %struct.msg** %2, align 8
  %58 = getelementptr inbounds %struct.msg, %struct.msg* %57, i32 0, i32 2
  %59 = load %struct.msg*, %struct.msg** %58, align 8
  %60 = call i32 @free(%struct.msg* %59)
  %61 = load %struct.msg*, %struct.msg** %2, align 8
  %62 = getelementptr inbounds %struct.msg, %struct.msg* %61, i32 0, i32 2
  store %struct.msg* null, %struct.msg** %62, align 8
  %63 = load %struct.msg*, %struct.msg** %2, align 8
  %64 = getelementptr inbounds %struct.msg, %struct.msg* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.msg*, %struct.msg** %2, align 8
  %66 = getelementptr inbounds %struct.msg, %struct.msg* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.msg*, %struct.msg** %2, align 8
  %68 = getelementptr inbounds %struct.msg, %struct.msg* %67, i32 0, i32 3
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %56, %33
  %70 = load %struct.msg*, %struct.msg** %2, align 8
  %71 = getelementptr inbounds %struct.msg, %struct.msg* %70, i32 0, i32 2
  %72 = load %struct.msg*, %struct.msg** %71, align 8
  %73 = call i32 @free(%struct.msg* %72)
  %74 = load %struct.msg*, %struct.msg** %2, align 8
  %75 = call i32 @free(%struct.msg* %74)
  ret void
}

declare dso_local i32 @free(%struct.msg*) #1

declare dso_local i32 @kill_free(i32*) #1

declare dso_local i32 @run_free(%struct.msg* byval(%struct.msg) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
