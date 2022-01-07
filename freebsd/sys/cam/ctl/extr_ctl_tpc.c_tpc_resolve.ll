; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_resolve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_tpc_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpc_list = type { i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpc_list*, i32, i32*, i32*, i32*)* @tpc_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpc_resolve(%struct.tpc_list* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpc_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.tpc_list* %0, %struct.tpc_list** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 65535
  br i1 %13, label %14, label %93

14:                                               ; preds = %5
  %15 = load i32*, i32** %9, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %19 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %26 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %24, %17, %14
  %34 = load i32*, i32** %10, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %38 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = icmp ne %struct.TYPE_3__* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %45 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %44, i32 0, i32 3
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %52 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %50, %57
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %43, %36, %33
  %61 = load i32*, i32** %11, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %87

63:                                               ; preds = %60
  %64 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %65 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %64, i32 0, i32 3
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %63
  %71 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %72 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %79 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %78, i32 0, i32 3
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %77, %84
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %70, %63, %60
  %88 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %89 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  br label %120

93:                                               ; preds = %5
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %96 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @UINT64_MAX, align 4
  store i32 %100, i32* %6, align 4
  br label %120

101:                                              ; preds = %93
  %102 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %103 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %102, i32 0, i32 3
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %108 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.tpc_list*, %struct.tpc_list** %7, align 8
  %111 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32*, i32** %9, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @tpcl_resolve(i32 %106, i32 %109, i32* %115, i32* %116, i32* %117, i32* %118)
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %101, %99, %87
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @tpcl_resolve(i32, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
