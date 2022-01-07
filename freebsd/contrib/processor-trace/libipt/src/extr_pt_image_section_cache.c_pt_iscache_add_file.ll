; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_image_section_cache.c_pt_iscache_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_image_section_cache = type { i32, %struct.pt_iscache_entry* }
%struct.pt_iscache_entry = type { %struct.pt_section*, i32 }
%struct.pt_section = type { i32 }

@pte_invalid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_iscache_add_file(%struct.pt_image_section_cache* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_image_section_cache*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pt_section*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pt_iscache_entry*, align 8
  store %struct.pt_image_section_cache* %0, %struct.pt_image_section_cache** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %18 = icmp ne %struct.pt_image_section_cache* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %5
  %23 = load i32, i32* @pte_invalid, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %125

25:                                               ; preds = %19
  %26 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %27 = call i32 @pt_iscache_lock(%struct.pt_image_section_cache* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %125

32:                                               ; preds = %25
  %33 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @pt_iscache_find_section_locked(%struct.pt_image_section_cache* %33, i8* %34, i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %43 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %42)
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %125

45:                                               ; preds = %32
  %46 = load i32, i32* %14, align 4
  %47 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %48 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %95

51:                                               ; preds = %45
  %52 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %53 = getelementptr inbounds %struct.pt_image_section_cache, %struct.pt_image_section_cache* %52, i32 0, i32 1
  %54 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %54, i64 %56
  store %struct.pt_iscache_entry* %57, %struct.pt_iscache_entry** %16, align 8
  %58 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %16, align 8
  %59 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %65 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %6, align 4
  br label %125

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @isid_from_index(i32 %71)
  store i32 %72, i32* %6, align 4
  br label %125

73:                                               ; preds = %51
  %74 = load %struct.pt_iscache_entry*, %struct.pt_iscache_entry** %16, align 8
  %75 = getelementptr inbounds %struct.pt_iscache_entry, %struct.pt_iscache_entry* %74, i32 0, i32 0
  %76 = load %struct.pt_section*, %struct.pt_section** %75, align 8
  store %struct.pt_section* %76, %struct.pt_section** %12, align 8
  %77 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %78 = call i32 @pt_section_get(%struct.pt_section* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %83 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %82)
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %125

85:                                               ; preds = %73
  %86 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %87 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %92 = call i32 @pt_section_put(%struct.pt_section* %91)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %125

94:                                               ; preds = %85
  br label %112

95:                                               ; preds = %45
  %96 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %97 = call i32 @pt_iscache_unlock(%struct.pt_image_section_cache* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %6, align 4
  br label %125

102:                                              ; preds = %95
  store %struct.pt_section* null, %struct.pt_section** %12, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @pt_mk_section(%struct.pt_section** %12, i8* %103, i32 %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %6, align 4
  br label %125

111:                                              ; preds = %102
  br label %112

112:                                              ; preds = %111, %94
  %113 = load %struct.pt_image_section_cache*, %struct.pt_image_section_cache** %7, align 8
  %114 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @pt_iscache_add(%struct.pt_image_section_cache* %113, %struct.pt_section* %114, i32 %115)
  store i32 %116, i32* %15, align 4
  %117 = load %struct.pt_section*, %struct.pt_section** %12, align 8
  %118 = call i32 @pt_section_put(%struct.pt_section* %117)
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %125

123:                                              ; preds = %112
  %124 = load i32, i32* %15, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %121, %109, %100, %90, %81, %70, %68, %41, %30, %22
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @pt_iscache_lock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @pt_iscache_find_section_locked(%struct.pt_image_section_cache*, i8*, i32, i32, i32) #1

declare dso_local i32 @pt_iscache_unlock(%struct.pt_image_section_cache*) #1

declare dso_local i32 @isid_from_index(i32) #1

declare dso_local i32 @pt_section_get(%struct.pt_section*) #1

declare dso_local i32 @pt_section_put(%struct.pt_section*) #1

declare dso_local i32 @pt_mk_section(%struct.pt_section**, i8*, i32, i32) #1

declare dso_local i32 @pt_iscache_add(%struct.pt_image_section_cache*, %struct.pt_section*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
