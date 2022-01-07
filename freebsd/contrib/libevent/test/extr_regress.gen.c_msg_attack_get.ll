; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_attack_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.gen.c_msg_attack_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg = type { i32, %struct.kill* }
%struct.kill = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msg_attack_get(%struct.msg* %0, %struct.kill** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msg*, align 8
  %5 = alloca %struct.kill**, align 8
  store %struct.msg* %0, %struct.msg** %4, align 8
  store %struct.kill** %1, %struct.kill*** %5, align 8
  %6 = load %struct.msg*, %struct.msg** %4, align 8
  %7 = getelementptr inbounds %struct.msg, %struct.msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = call %struct.kill* (...) @kill_new()
  %12 = load %struct.msg*, %struct.msg** %4, align 8
  %13 = getelementptr inbounds %struct.msg, %struct.msg* %12, i32 0, i32 1
  store %struct.kill* %11, %struct.kill** %13, align 8
  %14 = load %struct.msg*, %struct.msg** %4, align 8
  %15 = getelementptr inbounds %struct.msg, %struct.msg* %14, i32 0, i32 1
  %16 = load %struct.kill*, %struct.kill** %15, align 8
  %17 = icmp eq %struct.kill* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %27

19:                                               ; preds = %10
  %20 = load %struct.msg*, %struct.msg** %4, align 8
  %21 = getelementptr inbounds %struct.msg, %struct.msg* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.msg*, %struct.msg** %4, align 8
  %24 = getelementptr inbounds %struct.msg, %struct.msg* %23, i32 0, i32 1
  %25 = load %struct.kill*, %struct.kill** %24, align 8
  %26 = load %struct.kill**, %struct.kill*** %5, align 8
  store %struct.kill* %25, %struct.kill** %26, align 8
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.kill* @kill_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
