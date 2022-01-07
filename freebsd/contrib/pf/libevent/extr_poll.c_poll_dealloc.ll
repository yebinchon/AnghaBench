; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_poll.c_poll_dealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_poll.c_poll_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollop = type { %struct.pollop*, %struct.pollop*, %struct.pollop*, %struct.pollop* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @poll_dealloc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pollop*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.pollop*
  store %struct.pollop* %5, %struct.pollop** %3, align 8
  %6 = load %struct.pollop*, %struct.pollop** %3, align 8
  %7 = getelementptr inbounds %struct.pollop, %struct.pollop* %6, i32 0, i32 3
  %8 = load %struct.pollop*, %struct.pollop** %7, align 8
  %9 = icmp ne %struct.pollop* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.pollop*, %struct.pollop** %3, align 8
  %12 = getelementptr inbounds %struct.pollop, %struct.pollop* %11, i32 0, i32 3
  %13 = load %struct.pollop*, %struct.pollop** %12, align 8
  %14 = call i32 @free(%struct.pollop* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.pollop*, %struct.pollop** %3, align 8
  %17 = getelementptr inbounds %struct.pollop, %struct.pollop* %16, i32 0, i32 2
  %18 = load %struct.pollop*, %struct.pollop** %17, align 8
  %19 = icmp ne %struct.pollop* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.pollop*, %struct.pollop** %3, align 8
  %22 = getelementptr inbounds %struct.pollop, %struct.pollop* %21, i32 0, i32 2
  %23 = load %struct.pollop*, %struct.pollop** %22, align 8
  %24 = call i32 @free(%struct.pollop* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.pollop*, %struct.pollop** %3, align 8
  %27 = getelementptr inbounds %struct.pollop, %struct.pollop* %26, i32 0, i32 1
  %28 = load %struct.pollop*, %struct.pollop** %27, align 8
  %29 = icmp ne %struct.pollop* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.pollop*, %struct.pollop** %3, align 8
  %32 = getelementptr inbounds %struct.pollop, %struct.pollop* %31, i32 0, i32 1
  %33 = load %struct.pollop*, %struct.pollop** %32, align 8
  %34 = call i32 @free(%struct.pollop* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.pollop*, %struct.pollop** %3, align 8
  %37 = getelementptr inbounds %struct.pollop, %struct.pollop* %36, i32 0, i32 0
  %38 = load %struct.pollop*, %struct.pollop** %37, align 8
  %39 = icmp ne %struct.pollop* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.pollop*, %struct.pollop** %3, align 8
  %42 = getelementptr inbounds %struct.pollop, %struct.pollop* %41, i32 0, i32 0
  %43 = load %struct.pollop*, %struct.pollop** %42, align 8
  %44 = call i32 @free(%struct.pollop* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.pollop*, %struct.pollop** %3, align 8
  %47 = call i32 @memset(%struct.pollop* %46, i32 0, i32 32)
  %48 = load %struct.pollop*, %struct.pollop** %3, align 8
  %49 = call i32 @free(%struct.pollop* %48)
  ret void
}

declare dso_local i32 @free(%struct.pollop*) #1

declare dso_local i32 @memset(%struct.pollop*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
