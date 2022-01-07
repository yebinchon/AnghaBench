; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rpoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rpoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32 }
%struct.timeval = type { i32, i64 }

@polling_time = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpoll(%struct.pollfd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.pollfd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pollfd* %0, %struct.pollfd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %45, %3
  %14 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @rs_poll_check(%struct.pollfd* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %13
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %85

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  br label %29

29:                                               ; preds = %27, %24
  %30 = call i32 @gettimeofday(%struct.timeval* %9, i32* null)
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %32, %34
  %36 = mul nsw i32 %35, 1000000
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = add nsw i64 %37, %42
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @polling_time, align 8
  %48 = icmp sle i64 %46, %47
  br i1 %48, label %13, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = call %struct.pollfd* @rs_fds_alloc(i32 %50)
  store %struct.pollfd* %51, %struct.pollfd** %10, align 8
  %52 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %53 = icmp ne %struct.pollfd* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = call i32 @ERR(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %85

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %79, %57
  %59 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %60 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @rs_poll_arm(%struct.pollfd* %59, %struct.pollfd* %60, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %83

66:                                               ; preds = %58
  %67 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @poll(%struct.pollfd* %67, i32 %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %83

74:                                               ; preds = %66
  %75 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %76 = load %struct.pollfd*, %struct.pollfd** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @rs_poll_events(%struct.pollfd* %75, %struct.pollfd* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %58, label %83

83:                                               ; preds = %79, %73, %65
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %54, %22
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @rs_poll_check(%struct.pollfd*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local %struct.pollfd* @rs_fds_alloc(i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_poll_arm(%struct.pollfd*, %struct.pollfd*, i32) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @rs_poll_events(%struct.pollfd*, %struct.pollfd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
