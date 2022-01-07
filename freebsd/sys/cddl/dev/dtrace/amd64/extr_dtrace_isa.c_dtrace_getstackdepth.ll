; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_isa.c_dtrace_getstackdepth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/dev/dtrace/amd64/extr_dtrace_isa.c_dtrace_getstackdepth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.amd64_frame = type { %struct.amd64_frame* }

@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_getstackdepth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amd64_frame*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %3, align 4
  %9 = call i64 (...) @dtrace_getfp()
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = inttoptr i64 %10 to %struct.amd64_frame*
  store %struct.amd64_frame* %11, %struct.amd64_frame** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %53, %1
  %15 = load %struct.amd64_frame*, %struct.amd64_frame** %5, align 8
  %16 = ptrtoint %struct.amd64_frame* %15 to i64
  %17 = call i32 @INKERNEL(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %57

20:                                               ; preds = %14
  %21 = load %struct.amd64_frame*, %struct.amd64_frame** %5, align 8
  %22 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %21, i32 0, i32 0
  %23 = load %struct.amd64_frame*, %struct.amd64_frame** %22, align 8
  %24 = ptrtoint %struct.amd64_frame* %23 to i64
  %25 = call i32 @INKERNEL(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %57

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load %struct.amd64_frame*, %struct.amd64_frame** %5, align 8
  %32 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %31, i32 0, i32 0
  %33 = load %struct.amd64_frame*, %struct.amd64_frame** %32, align 8
  %34 = load %struct.amd64_frame*, %struct.amd64_frame** %5, align 8
  %35 = icmp ule %struct.amd64_frame* %33, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %28
  %37 = load %struct.amd64_frame*, %struct.amd64_frame** %5, align 8
  %38 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %37, i32 0, i32 0
  %39 = load %struct.amd64_frame*, %struct.amd64_frame** %38, align 8
  %40 = ptrtoint %struct.amd64_frame* %39 to i64
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %43, %49
  %51 = icmp sge i64 %40, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %36, %28
  br label %57

53:                                               ; preds = %36
  %54 = load %struct.amd64_frame*, %struct.amd64_frame** %5, align 8
  %55 = getelementptr inbounds %struct.amd64_frame, %struct.amd64_frame* %54, i32 0, i32 0
  %56 = load %struct.amd64_frame*, %struct.amd64_frame** %55, align 8
  store %struct.amd64_frame* %56, %struct.amd64_frame** %5, align 8
  br label %14

57:                                               ; preds = %52, %27, %19
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %3, align 4
  %65 = sub nsw i32 %63, %64
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @dtrace_getfp(...) #1

declare dso_local i32 @INKERNEL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
