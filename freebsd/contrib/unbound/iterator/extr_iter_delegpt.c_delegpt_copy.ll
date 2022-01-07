; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_ns*, i32, i32, i32, i32 }
%struct.delegpt_addr = type { i32, i32, i32, i32, i32, %struct.delegpt_addr* }
%struct.delegpt_ns = type { i32, i32, i32, i32, i32, i32, i32, %struct.delegpt_ns* }
%struct.regional = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt* @delegpt_copy(%struct.delegpt* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca %struct.delegpt*, align 8
  %5 = alloca %struct.regional*, align 8
  %6 = alloca %struct.delegpt*, align 8
  %7 = alloca %struct.delegpt_ns*, align 8
  %8 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %4, align 8
  store %struct.regional* %1, %struct.regional** %5, align 8
  %9 = load %struct.regional*, %struct.regional** %5, align 8
  %10 = call %struct.delegpt* @delegpt_create(%struct.regional* %9)
  store %struct.delegpt* %10, %struct.delegpt** %6, align 8
  %11 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %12 = icmp ne %struct.delegpt* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %131

14:                                               ; preds = %2
  %15 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %16 = load %struct.regional*, %struct.regional** %5, align 8
  %17 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %18 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @delegpt_set_name(%struct.delegpt* %15, %struct.regional* %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %131

23:                                               ; preds = %14
  %24 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %25 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %28 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %30 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %33 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %35 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %38 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %40 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %39, i32 0, i32 1
  %41 = load %struct.delegpt_ns*, %struct.delegpt_ns** %40, align 8
  store %struct.delegpt_ns* %41, %struct.delegpt_ns** %7, align 8
  br label %42

42:                                               ; preds = %93, %23
  %43 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %44 = icmp ne %struct.delegpt_ns* %43, null
  br i1 %44, label %45, label %97

45:                                               ; preds = %42
  %46 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %47 = load %struct.regional*, %struct.regional** %5, align 8
  %48 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %49 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %52 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @delegpt_add_ns(%struct.delegpt* %46, %struct.regional* %47, i32 %50, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %45
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %131

57:                                               ; preds = %45
  %58 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %59 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %62 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %61, i32 0, i32 1
  %63 = load %struct.delegpt_ns*, %struct.delegpt_ns** %62, align 8
  %64 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %63, i32 0, i32 4
  store i32 %60, i32* %64, align 8
  %65 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %66 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %69 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %68, i32 0, i32 1
  %70 = load %struct.delegpt_ns*, %struct.delegpt_ns** %69, align 8
  %71 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %70, i32 0, i32 3
  store i32 %67, i32* %71, align 4
  %72 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %73 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %76 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %75, i32 0, i32 1
  %77 = load %struct.delegpt_ns*, %struct.delegpt_ns** %76, align 8
  %78 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 8
  %79 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %80 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %83 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %82, i32 0, i32 1
  %84 = load %struct.delegpt_ns*, %struct.delegpt_ns** %83, align 8
  %85 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %87 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %90 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %89, i32 0, i32 1
  %91 = load %struct.delegpt_ns*, %struct.delegpt_ns** %90, align 8
  %92 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  br label %93

93:                                               ; preds = %57
  %94 = load %struct.delegpt_ns*, %struct.delegpt_ns** %7, align 8
  %95 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %94, i32 0, i32 7
  %96 = load %struct.delegpt_ns*, %struct.delegpt_ns** %95, align 8
  store %struct.delegpt_ns* %96, %struct.delegpt_ns** %7, align 8
  br label %42

97:                                               ; preds = %42
  %98 = load %struct.delegpt*, %struct.delegpt** %4, align 8
  %99 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %98, i32 0, i32 0
  %100 = load %struct.delegpt_addr*, %struct.delegpt_addr** %99, align 8
  store %struct.delegpt_addr* %100, %struct.delegpt_addr** %8, align 8
  br label %101

101:                                              ; preds = %125, %97
  %102 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %103 = icmp ne %struct.delegpt_addr* %102, null
  br i1 %103, label %104, label %129

104:                                              ; preds = %101
  %105 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  %106 = load %struct.regional*, %struct.regional** %5, align 8
  %107 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %108 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %107, i32 0, i32 4
  %109 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %110 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %113 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %116 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %119 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @delegpt_add_addr(%struct.delegpt* %105, %struct.regional* %106, i32* %108, i32 %111, i32 %114, i32 %117, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %104
  store %struct.delegpt* null, %struct.delegpt** %3, align 8
  br label %131

124:                                              ; preds = %104
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.delegpt_addr*, %struct.delegpt_addr** %8, align 8
  %127 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %126, i32 0, i32 5
  %128 = load %struct.delegpt_addr*, %struct.delegpt_addr** %127, align 8
  store %struct.delegpt_addr* %128, %struct.delegpt_addr** %8, align 8
  br label %101

129:                                              ; preds = %101
  %130 = load %struct.delegpt*, %struct.delegpt** %6, align 8
  store %struct.delegpt* %130, %struct.delegpt** %3, align 8
  br label %131

131:                                              ; preds = %129, %123, %56, %22, %13
  %132 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  ret %struct.delegpt* %132
}

declare dso_local %struct.delegpt* @delegpt_create(%struct.regional*) #1

declare dso_local i32 @delegpt_set_name(%struct.delegpt*, %struct.regional*, i32) #1

declare dso_local i32 @delegpt_add_ns(%struct.delegpt*, %struct.regional*, i32, i32) #1

declare dso_local i32 @delegpt_add_addr(%struct.delegpt*, %struct.regional*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
