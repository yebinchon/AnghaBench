; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_inc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_attr_counter_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_counter = type { i64, %struct.attr_counter*, %struct.attr_counter* }
%struct.mtree_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attr_counter**, %struct.attr_counter*, %struct.attr_counter*, %struct.mtree_entry*)* @attr_counter_inc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_counter_inc(%struct.attr_counter** %0, %struct.attr_counter* %1, %struct.attr_counter* %2, %struct.mtree_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.attr_counter**, align 8
  %7 = alloca %struct.attr_counter*, align 8
  %8 = alloca %struct.attr_counter*, align 8
  %9 = alloca %struct.mtree_entry*, align 8
  %10 = alloca %struct.attr_counter*, align 8
  store %struct.attr_counter** %0, %struct.attr_counter*** %6, align 8
  store %struct.attr_counter* %1, %struct.attr_counter** %7, align 8
  store %struct.attr_counter* %2, %struct.attr_counter** %8, align 8
  store %struct.mtree_entry* %3, %struct.mtree_entry** %9, align 8
  %11 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %12 = icmp ne %struct.attr_counter* %11, null
  br i1 %12, label %13, label %115

13:                                               ; preds = %4
  %14 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %15 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.attr_counter**, %struct.attr_counter*** %6, align 8
  %19 = load %struct.attr_counter*, %struct.attr_counter** %18, align 8
  %20 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %21 = icmp eq %struct.attr_counter* %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %13
  %23 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %24 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %23, i32 0, i32 2
  %25 = load %struct.attr_counter*, %struct.attr_counter** %24, align 8
  %26 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %29 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sge i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22, %13
  store i32 0, i32* %5, align 4
  br label %131

33:                                               ; preds = %22
  %34 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %35 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %34, i32 0, i32 2
  %36 = load %struct.attr_counter*, %struct.attr_counter** %35, align 8
  store %struct.attr_counter* %36, %struct.attr_counter** %10, align 8
  br label %37

37:                                               ; preds = %50, %33
  %38 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %39 = icmp ne %struct.attr_counter* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %42 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %45 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %52 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %51, i32 0, i32 2
  %53 = load %struct.attr_counter*, %struct.attr_counter** %52, align 8
  store %struct.attr_counter* %53, %struct.attr_counter** %10, align 8
  br label %37

54:                                               ; preds = %48, %37
  %55 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %56 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %55, i32 0, i32 1
  %57 = load %struct.attr_counter*, %struct.attr_counter** %56, align 8
  %58 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %59 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %58, i32 0, i32 2
  %60 = load %struct.attr_counter*, %struct.attr_counter** %59, align 8
  %61 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %60, i32 0, i32 1
  store %struct.attr_counter* %57, %struct.attr_counter** %61, align 8
  %62 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %63 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %62, i32 0, i32 1
  %64 = load %struct.attr_counter*, %struct.attr_counter** %63, align 8
  %65 = icmp ne %struct.attr_counter* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %68 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %67, i32 0, i32 2
  %69 = load %struct.attr_counter*, %struct.attr_counter** %68, align 8
  %70 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %71 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %70, i32 0, i32 1
  %72 = load %struct.attr_counter*, %struct.attr_counter** %71, align 8
  %73 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %72, i32 0, i32 2
  store %struct.attr_counter* %69, %struct.attr_counter** %73, align 8
  br label %74

74:                                               ; preds = %66, %54
  %75 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %76 = icmp ne %struct.attr_counter* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %79 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %80 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %79, i32 0, i32 2
  store %struct.attr_counter* %78, %struct.attr_counter** %80, align 8
  %81 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %82 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %81, i32 0, i32 1
  %83 = load %struct.attr_counter*, %struct.attr_counter** %82, align 8
  %84 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %85 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %84, i32 0, i32 1
  store %struct.attr_counter* %83, %struct.attr_counter** %85, align 8
  %86 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %87 = load %struct.attr_counter*, %struct.attr_counter** %10, align 8
  %88 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %87, i32 0, i32 1
  store %struct.attr_counter* %86, %struct.attr_counter** %88, align 8
  %89 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %90 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %89, i32 0, i32 1
  %91 = load %struct.attr_counter*, %struct.attr_counter** %90, align 8
  %92 = icmp ne %struct.attr_counter* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %77
  %94 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %95 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %96 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %95, i32 0, i32 1
  %97 = load %struct.attr_counter*, %struct.attr_counter** %96, align 8
  %98 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %97, i32 0, i32 2
  store %struct.attr_counter* %94, %struct.attr_counter** %98, align 8
  br label %99

99:                                               ; preds = %93, %77
  br label %114

100:                                              ; preds = %74
  %101 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %102 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %101, i32 0, i32 2
  store %struct.attr_counter* null, %struct.attr_counter** %102, align 8
  %103 = load %struct.attr_counter**, %struct.attr_counter*** %6, align 8
  %104 = load %struct.attr_counter*, %struct.attr_counter** %103, align 8
  %105 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %106 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %105, i32 0, i32 1
  store %struct.attr_counter* %104, %struct.attr_counter** %106, align 8
  %107 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %108 = load %struct.attr_counter**, %struct.attr_counter*** %6, align 8
  store %struct.attr_counter* %107, %struct.attr_counter** %108, align 8
  %109 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %110 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %111 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %110, i32 0, i32 1
  %112 = load %struct.attr_counter*, %struct.attr_counter** %111, align 8
  %113 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %112, i32 0, i32 2
  store %struct.attr_counter* %109, %struct.attr_counter** %113, align 8
  br label %114

114:                                              ; preds = %100, %99
  br label %130

115:                                              ; preds = %4
  %116 = load %struct.attr_counter*, %struct.attr_counter** %8, align 8
  %117 = icmp ne %struct.attr_counter* %116, null
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.mtree_entry*, %struct.mtree_entry** %9, align 8
  %120 = load %struct.attr_counter*, %struct.attr_counter** %8, align 8
  %121 = call %struct.attr_counter* @attr_counter_new(%struct.mtree_entry* %119, %struct.attr_counter* %120)
  store %struct.attr_counter* %121, %struct.attr_counter** %7, align 8
  %122 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %123 = icmp eq %struct.attr_counter* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 -1, i32* %5, align 4
  br label %131

125:                                              ; preds = %118
  %126 = load %struct.attr_counter*, %struct.attr_counter** %7, align 8
  %127 = load %struct.attr_counter*, %struct.attr_counter** %8, align 8
  %128 = getelementptr inbounds %struct.attr_counter, %struct.attr_counter* %127, i32 0, i32 1
  store %struct.attr_counter* %126, %struct.attr_counter** %128, align 8
  br label %129

129:                                              ; preds = %125, %115
  br label %130

130:                                              ; preds = %129, %114
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %124, %32
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.attr_counter* @attr_counter_new(%struct.mtree_entry*, %struct.attr_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
