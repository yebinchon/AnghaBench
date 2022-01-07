; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_fill_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_fill_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iter_env = type { i32 }
%struct.module_env = type { i32 }
%struct.delegpt = type { %struct.delegpt_addr*, i64 }
%struct.delegpt_addr = type { i32, i32, i32, %struct.delegpt_addr* }
%struct.sock_list = type { i32 }

@BLACKLIST_PENALTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iter_env*, %struct.module_env*, i32*, i64, i32, i32, %struct.delegpt*, i32*, %struct.sock_list*, i64*)* @iter_fill_rtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iter_fill_rtt(%struct.iter_env* %0, %struct.module_env* %1, i32* %2, i64 %3, i32 %4, i32 %5, %struct.delegpt* %6, i32* %7, %struct.sock_list* %8, i64* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.iter_env*, align 8
  %13 = alloca %struct.module_env*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.delegpt*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.sock_list*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.delegpt_addr*, align 8
  store %struct.iter_env* %0, %struct.iter_env** %12, align 8
  store %struct.module_env* %1, %struct.module_env** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store %struct.delegpt* %6, %struct.delegpt** %18, align 8
  store i32* %7, i32** %19, align 8
  store %struct.sock_list* %8, %struct.sock_list** %20, align 8
  store i64* %9, i64** %21, align 8
  store i32 0, i32* %22, align 4
  %24 = load i64*, i64** %21, align 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.delegpt*, %struct.delegpt** %18, align 8
  %26 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %101

30:                                               ; preds = %10
  %31 = load %struct.delegpt*, %struct.delegpt** %18, align 8
  %32 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %31, i32 0, i32 0
  %33 = load %struct.delegpt_addr*, %struct.delegpt_addr** %32, align 8
  store %struct.delegpt_addr* %33, %struct.delegpt_addr** %23, align 8
  br label %34

34:                                               ; preds = %95, %30
  %35 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %36 = icmp ne %struct.delegpt_addr* %35, null
  br i1 %36, label %37, label %99

37:                                               ; preds = %34
  %38 = load %struct.iter_env*, %struct.iter_env** %12, align 8
  %39 = load %struct.module_env*, %struct.module_env** %13, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i64, i64* %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %45 = call i32 @iter_filter_unsuitable(%struct.iter_env* %38, %struct.module_env* %39, i32* %40, i64 %41, i32 %42, i32 %43, %struct.delegpt_addr* %44)
  %46 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %47 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %49 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %94

52:                                               ; preds = %37
  %53 = load %struct.sock_list*, %struct.sock_list** %20, align 8
  %54 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %55 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %54, i32 0, i32 2
  %56 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %57 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @sock_list_find(%struct.sock_list* %53, i32* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %52
  %62 = load i64, i64* @BLACKLIST_PENALTY, align 8
  %63 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %64 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %62
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 8
  br label %69

69:                                               ; preds = %61, %52
  %70 = load i32, i32* %22, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  %73 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %74 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %19, align 8
  store i32 %75, i32* %76, align 4
  store i32 1, i32* %22, align 4
  br label %90

77:                                               ; preds = %69
  %78 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %79 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %86 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %19, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %84, %77
  br label %90

90:                                               ; preds = %89, %72
  %91 = load i64*, i64** %21, align 8
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %90, %37
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.delegpt_addr*, %struct.delegpt_addr** %23, align 8
  %97 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %96, i32 0, i32 3
  %98 = load %struct.delegpt_addr*, %struct.delegpt_addr** %97, align 8
  store %struct.delegpt_addr* %98, %struct.delegpt_addr** %23, align 8
  br label %34

99:                                               ; preds = %34
  %100 = load i32, i32* %22, align 4
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %99, %29
  %102 = load i32, i32* %11, align 4
  ret i32 %102
}

declare dso_local i32 @iter_filter_unsuitable(%struct.iter_env*, %struct.module_env*, i32*, i64, i32, i32, %struct.delegpt_addr*) #1

declare dso_local i64 @sock_list_find(%struct.sock_list*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
