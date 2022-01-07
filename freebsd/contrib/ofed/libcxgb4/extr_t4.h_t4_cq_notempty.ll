; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_cq_notempty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_t4.h_t4_cq_notempty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_cq = type { i64, i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_cq*)* @t4_cq_notempty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t4_cq_notempty(%struct.t4_cq* %0) #0 {
  %2 = alloca %struct.t4_cq*, align 8
  store %struct.t4_cq* %0, %struct.t4_cq** %2, align 8
  %3 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %4 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %1
  %8 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %9 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %10 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.t4_cq*, %struct.t4_cq** %2, align 8
  %13 = getelementptr inbounds %struct.t4_cq, %struct.t4_cq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = call i64 @t4_valid_cqe(%struct.t4_cq* %8, i32* %15)
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %7, %1
  %19 = phi i1 [ true, %1 ], [ %17, %7 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i64 @t4_valid_cqe(%struct.t4_cq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
