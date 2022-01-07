; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_merge_retry_counts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_merge_retry_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_addr* }
%struct.delegpt_addr = type { i64, %struct.delegpt_addr*, i32, i32, %struct.delegpt_addr* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"copy attempt count previous dp\00", align 1
@OUTBOUND_MSG_RETRY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"remove from usable list dp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_merge_retry_counts(%struct.delegpt* %0, %struct.delegpt* %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca %struct.delegpt_addr*, align 8
  %6 = alloca %struct.delegpt_addr*, align 8
  %7 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %3, align 8
  store %struct.delegpt* %1, %struct.delegpt** %4, align 8
  %8 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %9 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %8, i32 0, i32 1
  %10 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  store %struct.delegpt_addr* %10, %struct.delegpt_addr** %5, align 8
  br label %11

11:                                               ; preds = %38, %2
  %12 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %13 = icmp ne %struct.delegpt_addr* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %16 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %17 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %16, i32 0, i32 3
  %18 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %19 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt* %15, i32* %17, i32 %20)
  store %struct.delegpt_addr* %21, %struct.delegpt_addr** %6, align 8
  %22 = load %struct.delegpt_addr*, %struct.delegpt_addr** %6, align 8
  %23 = icmp ne %struct.delegpt_addr* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %14
  %25 = load i32, i32* @VERB_ALGO, align 4
  %26 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %27 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %26, i32 0, i32 3
  %28 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %29 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @log_addr(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %27, i32 %30)
  %32 = load %struct.delegpt_addr*, %struct.delegpt_addr** %6, align 8
  %33 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %36 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %24, %14
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %40 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %39, i32 0, i32 4
  %41 = load %struct.delegpt_addr*, %struct.delegpt_addr** %40, align 8
  store %struct.delegpt_addr* %41, %struct.delegpt_addr** %5, align 8
  br label %11

42:                                               ; preds = %11
  store %struct.delegpt_addr* null, %struct.delegpt_addr** %7, align 8
  %43 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %44 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %43, i32 0, i32 0
  %45 = load %struct.delegpt_addr*, %struct.delegpt_addr** %44, align 8
  store %struct.delegpt_addr* %45, %struct.delegpt_addr** %5, align 8
  br label %46

46:                                               ; preds = %81, %77, %42
  %47 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %48 = icmp ne %struct.delegpt_addr* %47, null
  br i1 %48, label %49, label %86

49:                                               ; preds = %46
  %50 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %51 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @OUTBOUND_MSG_RETRY, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %49
  %56 = load i32, i32* @VERB_ALGO, align 4
  %57 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %58 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %57, i32 0, i32 3
  %59 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %60 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @log_addr(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %58, i32 %61)
  %63 = load %struct.delegpt_addr*, %struct.delegpt_addr** %7, align 8
  %64 = icmp ne %struct.delegpt_addr* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %67 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %66, i32 0, i32 1
  %68 = load %struct.delegpt_addr*, %struct.delegpt_addr** %67, align 8
  %69 = load %struct.delegpt_addr*, %struct.delegpt_addr** %7, align 8
  %70 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %69, i32 0, i32 1
  store %struct.delegpt_addr* %68, %struct.delegpt_addr** %70, align 8
  br label %77

71:                                               ; preds = %55
  %72 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %73 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %72, i32 0, i32 1
  %74 = load %struct.delegpt_addr*, %struct.delegpt_addr** %73, align 8
  %75 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %76 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %75, i32 0, i32 0
  store %struct.delegpt_addr* %74, %struct.delegpt_addr** %76, align 8
  br label %77

77:                                               ; preds = %71, %65
  %78 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %79 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %78, i32 0, i32 1
  %80 = load %struct.delegpt_addr*, %struct.delegpt_addr** %79, align 8
  store %struct.delegpt_addr* %80, %struct.delegpt_addr** %5, align 8
  br label %46

81:                                               ; preds = %49
  %82 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  store %struct.delegpt_addr* %82, %struct.delegpt_addr** %7, align 8
  %83 = load %struct.delegpt_addr*, %struct.delegpt_addr** %5, align 8
  %84 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %83, i32 0, i32 1
  %85 = load %struct.delegpt_addr*, %struct.delegpt_addr** %84, align 8
  store %struct.delegpt_addr* %85, %struct.delegpt_addr** %5, align 8
  br label %46

86:                                               ; preds = %46
  ret void
}

declare dso_local %struct.delegpt_addr* @delegpt_find_addr(%struct.delegpt*, i32*, i32) #1

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
