; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_time.c_fix_tv_usec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/unix/extr_time.c_fix_tv_usec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i32 }

@ISC_FALSE = common dso_local global i64 0, align 8
@ISC_TRUE = common dso_local global i64 0, align 8
@US_PER_S = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"gettimeofday returned bad tv_usec: corrected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*)* @fix_tv_usec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_tv_usec(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %4 = load i64, i64* @ISC_FALSE, align 8
  store i64 %4, i64* %3, align 8
  %5 = load %struct.timeval*, %struct.timeval** %2, align 8
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i64, i64* @ISC_TRUE, align 8
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %21, %9
  %12 = load %struct.timeval*, %struct.timeval** %2, align 8
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load i64, i64* @US_PER_S, align 8
  %17 = load %struct.timeval*, %struct.timeval** %2, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, %16
  store i64 %20, i64* %18, align 8
  br label %21

21:                                               ; preds = %11
  %22 = load %struct.timeval*, %struct.timeval** %2, align 8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %11, label %26

26:                                               ; preds = %21
  br label %53

27:                                               ; preds = %1
  %28 = load %struct.timeval*, %struct.timeval** %2, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @US_PER_S, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load i64, i64* @ISC_TRUE, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %45, %33
  %36 = load %struct.timeval*, %struct.timeval** %2, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i64, i64* @US_PER_S, align 8
  %41 = load %struct.timeval*, %struct.timeval** %2, align 8
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %43, %40
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %35
  %46 = load %struct.timeval*, %struct.timeval** %2, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @US_PER_S, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %35, label %51

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %27
  br label %53

53:                                               ; preds = %52, %26
  %54 = load i64, i64* %3, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @LOG_ERR, align 4
  %58 = call i32 @syslog(i32 %57, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
