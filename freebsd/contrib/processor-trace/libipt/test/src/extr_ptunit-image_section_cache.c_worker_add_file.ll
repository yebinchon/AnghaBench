; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-image_section_cache.c_worker_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscache_fixture = type { i32 }
%struct.pt_section = type { i64, i64 }

@pte_internal = common dso_local global i32 0, align 4
@num_iterations = common dso_local global i32 0, align 4
@num_sections = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"name\00", align 1
@pte_noip = common dso_local global i32 0, align 4
@pte_bad_image = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @worker_add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @worker_add_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iscache_fixture*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pt_section*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.iscache_fixture*
  store %struct.iscache_fixture* %15, %struct.iscache_fixture** %4, align 8
  %16 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %17 = icmp ne %struct.iscache_fixture* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @pte_internal, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %110

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %106, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @num_iterations, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %109

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 7
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 4096, i32 8192
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 5
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4096, i32 8192
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = srem i32 %39, 3
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 4096, i32 8192
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %102, %26
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @num_sections, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %105

49:                                               ; preds = %45
  %50 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %51 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %50, i32 0, i32 0
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @pt_iscache_add_file(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53, i64 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %2, align 4
  br label %110

60:                                               ; preds = %49
  %61 = load %struct.iscache_fixture*, %struct.iscache_fixture** %4, align 8
  %62 = getelementptr inbounds %struct.iscache_fixture, %struct.iscache_fixture* %61, i32 0, i32 0
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @pt_iscache_lookup(i32* %62, %struct.pt_section** %10, i64* %11, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %2, align 4
  br label %110

69:                                               ; preds = %60
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @pte_noip, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %110

76:                                               ; preds = %69
  %77 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %78 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* @pte_bad_image, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %110

85:                                               ; preds = %76
  %86 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %87 = getelementptr inbounds %struct.pt_section, %struct.pt_section* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i32, i32* @pte_bad_image, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %110

94:                                               ; preds = %85
  %95 = load %struct.pt_section*, %struct.pt_section** %10, align 8
  %96 = call i32 @pt_section_put(%struct.pt_section* %95)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %2, align 4
  br label %110

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %45

105:                                              ; preds = %45
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %22

109:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %99, %91, %82, %73, %67, %58, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @pt_iscache_add_file(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @pt_iscache_lookup(i32*, %struct.pt_section**, i64*, i32) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
