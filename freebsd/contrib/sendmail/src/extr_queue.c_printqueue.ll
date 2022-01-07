; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_queue.c_printqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/src/extr_queue.c_printqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@NumQueue = common dso_local global i32 0, align 4
@Queue = common dso_local global %struct.TYPE_2__** null, align 8
@StopRequest = common dso_local global i64 0, align 8
@smioout = common dso_local global i32 0, align 4
@SM_TIME_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"\09\09Total requests: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printqueue() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %50, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @NumQueue, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @Queue, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br label %16

16:                                               ; preds = %9, %5
  %17 = phi i1 [ false, %5 ], [ %15, %9 ]
  br i1 %17, label %18, label %53

18:                                               ; preds = %16
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %46, %18
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @Queue, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %22, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %21
  %32 = load i64, i64* @StopRequest, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @stop_sendmail()
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @print_single_queue(i32 %37, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %21

49:                                               ; preds = %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %5

53:                                               ; preds = %16
  %54 = load i32, i32* %2, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @smioout, align 4
  %58 = load i32, i32* @SM_TIME_DEFAULT, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @sm_io_fprintf(i32 %57, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @stop_sendmail(...) #1

declare dso_local i64 @print_single_queue(i32, i32) #1

declare dso_local i32 @sm_io_fprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
