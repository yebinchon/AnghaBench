; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_set_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_set_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i64, i32, i32, i32 }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_set_name(%struct.delegpt* %0, %struct.regional* %1, i32* %2) #0 {
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca i32*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %8 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @log_assert(i32 %12)
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %16 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %15, i32 0, i32 1
  %17 = call i32 @dname_count_size_labels(i32* %14, i32* %16)
  %18 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %19 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.regional*, %struct.regional** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %23 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @regional_alloc_init(%struct.regional* %20, i32* %21, i32 %24)
  %26 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %27 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %29 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @dname_count_size_labels(i32*, i32*) #1

declare dso_local i64 @regional_alloc_init(%struct.regional*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
