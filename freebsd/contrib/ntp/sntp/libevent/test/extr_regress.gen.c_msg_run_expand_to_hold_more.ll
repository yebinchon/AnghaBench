; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_msg_run_expand_to_hold_more.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.gen.c_msg_run_expand_to_hold_more.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, %struct.run** }
%struct.run = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg*)* @msg_run_expand_to_hold_more to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_run_expand_to_hold_more(%struct.msg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.run**, align 8
  store %struct.msg* %0, %struct.msg** %3, align 8
  %6 = load %struct.msg*, %struct.msg** %3, align 8
  %7 = getelementptr inbounds %struct.msg, %struct.msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %4, align 4
  store %struct.run** null, %struct.run*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = shl i32 %13, 1
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 1, %11 ], [ %14, %12 ]
  store i32 %16, i32* %4, align 4
  %17 = load %struct.msg*, %struct.msg** %3, align 8
  %18 = getelementptr inbounds %struct.msg, %struct.msg* %17, i32 0, i32 1
  %19 = load %struct.run**, %struct.run*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 8
  %23 = trunc i64 %22 to i32
  %24 = call i64 @realloc(%struct.run** %19, i32 %23)
  %25 = inttoptr i64 %24 to %struct.run**
  store %struct.run** %25, %struct.run*** %5, align 8
  %26 = load %struct.run**, %struct.run*** %5, align 8
  %27 = icmp eq %struct.run** %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.run**, %struct.run*** %5, align 8
  %31 = load %struct.msg*, %struct.msg** %3, align 8
  %32 = getelementptr inbounds %struct.msg, %struct.msg* %31, i32 0, i32 1
  store %struct.run** %30, %struct.run*** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.msg*, %struct.msg** %3, align 8
  %35 = getelementptr inbounds %struct.msg, %struct.msg* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i64 @realloc(%struct.run**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
