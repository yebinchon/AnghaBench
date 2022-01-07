; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_dev.c_c4iw_free_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_dev.c_c4iw_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.c4iw_context = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_context*)* @c4iw_free_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c4iw_free_context(%struct.ibv_context* %0) #0 {
  %2 = alloca %struct.ibv_context*, align 8
  %3 = alloca %struct.c4iw_context*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %2, align 8
  %4 = load %struct.ibv_context*, %struct.ibv_context** %2, align 8
  %5 = call %struct.c4iw_context* @to_c4iw_context(%struct.ibv_context* %4)
  store %struct.c4iw_context* %5, %struct.c4iw_context** %3, align 8
  %6 = load %struct.c4iw_context*, %struct.c4iw_context** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_context, %struct.c4iw_context* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.c4iw_context*, %struct.c4iw_context** %3, align 8
  %12 = getelementptr inbounds %struct.c4iw_context, %struct.c4iw_context* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.c4iw_context*, %struct.c4iw_context** %3, align 8
  %15 = getelementptr inbounds %struct.c4iw_context, %struct.c4iw_context* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @munmap(i32 %13, i64 %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.c4iw_context*, %struct.c4iw_context** %3, align 8
  %20 = call i32 @free(%struct.c4iw_context* %19)
  ret void
}

declare dso_local %struct.c4iw_context* @to_c4iw_context(%struct.ibv_context*) #1

declare dso_local i32 @munmap(i32, i64) #1

declare dso_local i32 @free(%struct.c4iw_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
