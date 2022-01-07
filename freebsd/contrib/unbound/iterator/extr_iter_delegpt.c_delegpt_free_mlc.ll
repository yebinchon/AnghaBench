; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_free_mlc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_free_mlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt*, %struct.delegpt*, %struct.delegpt*, %struct.delegpt*, %struct.delegpt*, %struct.delegpt*, i32 }
%struct.delegpt_ns = type { %struct.delegpt_ns*, %struct.delegpt_ns*, %struct.delegpt_ns*, %struct.delegpt_ns*, %struct.delegpt_ns*, %struct.delegpt_ns*, i32 }
%struct.delegpt_addr = type { %struct.delegpt_addr*, %struct.delegpt_addr*, %struct.delegpt_addr*, %struct.delegpt_addr*, %struct.delegpt_addr*, %struct.delegpt_addr*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delegpt_free_mlc(%struct.delegpt* %0) #0 {
  %2 = alloca %struct.delegpt*, align 8
  %3 = alloca %struct.delegpt_ns*, align 8
  %4 = alloca %struct.delegpt_ns*, align 8
  %5 = alloca %struct.delegpt_addr*, align 8
  %6 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %2, align 8
  %7 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %8 = icmp ne %struct.delegpt* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %12 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @log_assert(i32 %13)
  %15 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %16 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %15, i32 0, i32 5
  %17 = load %struct.delegpt*, %struct.delegpt** %16, align 8
  %18 = bitcast %struct.delegpt* %17 to %struct.delegpt_ns*
  store %struct.delegpt_ns* %18, %struct.delegpt_ns** %3, align 8
  br label %19

19:                                               ; preds = %22, %10
  %20 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %21 = icmp ne %struct.delegpt_ns* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %24 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %23, i32 0, i32 4
  %25 = load %struct.delegpt_ns*, %struct.delegpt_ns** %24, align 8
  store %struct.delegpt_ns* %25, %struct.delegpt_ns** %4, align 8
  %26 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %27 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %26, i32 0, i32 0
  %28 = load %struct.delegpt_ns*, %struct.delegpt_ns** %27, align 8
  %29 = call i32 @free(%struct.delegpt_ns* %28)
  %30 = load %struct.delegpt_ns*, %struct.delegpt_ns** %3, align 8
  %31 = call i32 @free(%struct.delegpt_ns* %30)
  %32 = load %struct.delegpt_ns*, %struct.delegpt_ns** %4, align 8
  store %struct.delegpt_ns* %32, %struct.delegpt_ns** %3, align 8
  br label %19

33:                                               ; preds = %19
  %34 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %35 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %34, i32 0, i32 3
  %36 = load %struct.delegpt*, %struct.delegpt** %35, align 8
  %37 = bitcast %struct.delegpt* %36 to %struct.delegpt_addr*
  store %struct.delegpt_addr* %37, %struct.delegpt_addr** %5, align 8
  br label %38

38:                                               ; preds = %41, %33
  %39 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %40 = icmp ne %struct.delegpt_addr* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %43 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %42, i32 0, i32 2
  %44 = load %struct.delegpt_addr*, %struct.delegpt_addr** %43, align 8
  store %struct.delegpt_addr* %44, %struct.delegpt_addr** %6, align 8
  %45 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %46 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %45, i32 0, i32 1
  %47 = load %struct.delegpt_addr*, %struct.delegpt_addr** %46, align 8
  %48 = bitcast %struct.delegpt_addr* %47 to %struct.delegpt_ns*
  %49 = call i32 @free(%struct.delegpt_ns* %48)
  %50 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %51 = bitcast %struct.delegpt_addr* %50 to %struct.delegpt_ns*
  %52 = call i32 @free(%struct.delegpt_ns* %51)
  %53 = load %struct.delegpt_addr*, %struct.delegpt_addr** %6, align 8
  store %struct.delegpt_addr* %53, %struct.delegpt_addr** %5, align 8
  br label %38

54:                                               ; preds = %38
  %55 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %56 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %55, i32 0, i32 0
  %57 = load %struct.delegpt*, %struct.delegpt** %56, align 8
  %58 = bitcast %struct.delegpt* %57 to %struct.delegpt_ns*
  %59 = call i32 @free(%struct.delegpt_ns* %58)
  %60 = load %struct.delegpt*, %struct.delegpt** %2, align 8
  %61 = bitcast %struct.delegpt* %60 to %struct.delegpt_ns*
  %62 = call i32 @free(%struct.delegpt_ns* %61)
  br label %63

63:                                               ; preds = %54, %9
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @free(%struct.delegpt_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
