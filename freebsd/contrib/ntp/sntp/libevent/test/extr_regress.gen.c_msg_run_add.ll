; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_msg_run_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_msg_run_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.run = type { i32 }
%struct.msg = type { i64, i64, i32, %struct.run** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.run* @msg_run_add(%struct.msg* %0) #0 {
  %2 = alloca %struct.run*, align 8
  %3 = alloca %struct.msg*, align 8
  store %struct.msg* %0, %struct.msg** %3, align 8
  %4 = load %struct.msg*, %struct.msg** %3, align 8
  %5 = getelementptr inbounds %struct.msg, %struct.msg* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.msg*, %struct.msg** %3, align 8
  %9 = getelementptr inbounds %struct.msg, %struct.msg* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.msg*, %struct.msg** %3, align 8
  %14 = call i64 @msg_run_expand_to_hold_more(%struct.msg* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %51

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %1
  %19 = call %struct.run* (...) @run_new()
  %20 = load %struct.msg*, %struct.msg** %3, align 8
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %20, i32 0, i32 3
  %22 = load %struct.run**, %struct.run*** %21, align 8
  %23 = load %struct.msg*, %struct.msg** %3, align 8
  %24 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, 1
  %27 = getelementptr inbounds %struct.run*, %struct.run** %22, i64 %26
  store %struct.run* %19, %struct.run** %27, align 8
  %28 = load %struct.msg*, %struct.msg** %3, align 8
  %29 = getelementptr inbounds %struct.msg, %struct.msg* %28, i32 0, i32 3
  %30 = load %struct.run**, %struct.run*** %29, align 8
  %31 = load %struct.msg*, %struct.msg** %3, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = getelementptr inbounds %struct.run*, %struct.run** %30, i64 %34
  %36 = load %struct.run*, %struct.run** %35, align 8
  %37 = icmp eq %struct.run* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %51

39:                                               ; preds = %18
  %40 = load %struct.msg*, %struct.msg** %3, align 8
  %41 = getelementptr inbounds %struct.msg, %struct.msg* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  %42 = load %struct.msg*, %struct.msg** %3, align 8
  %43 = getelementptr inbounds %struct.msg, %struct.msg* %42, i32 0, i32 3
  %44 = load %struct.run**, %struct.run*** %43, align 8
  %45 = load %struct.msg*, %struct.msg** %3, align 8
  %46 = getelementptr inbounds %struct.msg, %struct.msg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1
  %49 = getelementptr inbounds %struct.run*, %struct.run** %44, i64 %48
  %50 = load %struct.run*, %struct.run** %49, align 8
  store %struct.run* %50, %struct.run** %2, align 8
  br label %56

51:                                               ; preds = %38, %16
  %52 = load %struct.msg*, %struct.msg** %3, align 8
  %53 = getelementptr inbounds %struct.msg, %struct.msg* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  store %struct.run* null, %struct.run** %2, align 8
  br label %56

56:                                               ; preds = %51, %39
  %57 = load %struct.run*, %struct.run** %2, align 8
  ret %struct.run* %57
}

declare dso_local i64 @msg_run_expand_to_hold_more(%struct.msg*) #1

declare dso_local %struct.run* @run_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
