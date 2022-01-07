; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dec_attempts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dec_attempts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_addr* }
%struct.delegpt_addr = type { i32, %struct.delegpt_addr*, %struct.delegpt_addr* }

@OUTBOUND_MSG_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_dec_attempts(%struct.delegpt* %0, i32 %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %7 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %6, i32 0, i32 1
  %8 = load %struct.delegpt_addr*, %struct.delegpt_addr** %7, align 8
  store %struct.delegpt_addr* %8, %struct.delegpt_addr** %5, align 8
  br label %9

9:                                                ; preds = %43, %2
  %10 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %11 = icmp ne %struct.delegpt_addr* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %14 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @OUTBOUND_MSG_RETRY, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %20 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %19, i32 0, i32 0
  %21 = load %struct.delegpt_addr*, %struct.delegpt_addr** %20, align 8
  %22 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %23 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %22, i32 0, i32 1
  store %struct.delegpt_addr* %21, %struct.delegpt_addr** %23, align 8
  %24 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %25 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %26 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %25, i32 0, i32 0
  store %struct.delegpt_addr* %24, %struct.delegpt_addr** %26, align 8
  br label %27

27:                                               ; preds = %18, %12
  %28 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %29 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %36 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %41 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %45 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %44, i32 0, i32 2
  %46 = load %struct.delegpt_addr*, %struct.delegpt_addr** %45, align 8
  store %struct.delegpt_addr* %46, %struct.delegpt_addr** %5, align 8
  br label %9

47:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
