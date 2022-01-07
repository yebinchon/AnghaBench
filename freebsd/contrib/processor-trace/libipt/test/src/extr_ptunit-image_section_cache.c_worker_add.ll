; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pt_section = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@num_iterations = common dso_local global i32 0, align 4
@num_sections = common dso_local global i32 0, align 4
@pte_noip = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_add(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_section*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.iscache_fixture*
  store %struct.iscache_fixture* %13, %struct.iscache_fixture** %4, align 8
  %14 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %15 = icmp ne %struct.iscache_fixture* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @pte_internal, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %115

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %111, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @num_iterations, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %114

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %25, 23
  %27 = sext i32 %26 to i64
  %28 = mul i64 4096, %27
  store i64 %28, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %107, %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @num_sections, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %110

33:                                               ; preds = %29
  %34 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %35 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %34, i32 0, i32 1
  %36 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %37 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @pt_iscache_add(i32* %35, %struct.TYPE_2__* %42, i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %2, align 4
  br label %115

49:                                               ; preds = %33
  %50 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %51 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %50, i32 0, i32 1
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @pt_iscache_lookup(i32* %51, %struct.pt_section** %8, i64* %9, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %2, align 4
  br label %115

58:                                               ; preds = %49
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @pte_noip, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %115

65:                                               ; preds = %58
  %66 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %67 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %70 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %68, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @pte_bad_image, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %115

82:                                               ; preds = %65
  %83 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %84 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %87 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %88, i64 %90
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %85, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load i32, i32* @pte_bad_image, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %115

99:                                               ; preds = %82
  %100 = load %struct.pt_section*, %struct.pt_section** %8, align 8
  %101 = call i32 @pt_section_put(%struct.pt_section* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %11, align 4
  store i32 %105, i32* %2, align 4
  br label %115

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %29

110:                                              ; preds = %29
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %20

114:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %104, %96, %79, %62, %56, %47, %16
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @pt_iscache_add(i32*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @pt_iscache_lookup(i32*, %struct.pt_section**, i64*, i32) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
