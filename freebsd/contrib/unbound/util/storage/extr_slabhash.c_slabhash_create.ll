; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_slabhash.c_slabhash_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabhash = type { i64, i32, %struct.lruhash**, i64 }
%struct.lruhash = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.slabhash* @slabhash_create(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.slabhash*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.slabhash*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %20 = call i64 @calloc(i32 1, i32 32)
  %21 = inttoptr i64 %20 to %struct.slabhash*
  store %struct.slabhash* %21, %struct.slabhash** %19, align 8
  %22 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %23 = icmp ne %struct.slabhash* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %8
  store %struct.slabhash* null, %struct.slabhash** %9, align 8
  br label %137

25:                                               ; preds = %8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %28 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %30 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @log_assert(i32 %33)
  %35 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %36 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @calloc(i32 %38, i32 8)
  %40 = inttoptr i64 %39 to %struct.lruhash**
  %41 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %42 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %41, i32 0, i32 2
  store %struct.lruhash** %40, %struct.lruhash*** %42, align 8
  %43 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %44 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %43, i32 0, i32 2
  %45 = load %struct.lruhash**, %struct.lruhash*** %44, align 8
  %46 = icmp ne %struct.lruhash** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %25
  %48 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %49 = call i32 @free(%struct.slabhash* %48)
  store %struct.slabhash* null, %struct.slabhash** %9, align 8
  br label %137

50:                                               ; preds = %25
  %51 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %52 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %57 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %59 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %64 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  br label %96

65:                                               ; preds = %50
  %66 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %67 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %70 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = and i64 %68, %72
  %74 = icmp eq i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @log_assert(i32 %75)
  %77 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %78 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %86, %65
  %80 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %81 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, -2147483648
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %88 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = shl i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %92 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  br label %79

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95, %62
  store i64 0, i64* %18, align 8
  br label %97

97:                                               ; preds = %132, %96
  %98 = load i64, i64* %18, align 8
  %99 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %100 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %135

103:                                              ; preds = %97
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %107 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = udiv i64 %105, %108
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i8*, i8** %17, align 8
  %115 = call %struct.lruhash* @lruhash_create(i64 %104, i64 %109, i32 %110, i32 %111, i32 %112, i32 %113, i8* %114)
  %116 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %117 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %116, i32 0, i32 2
  %118 = load %struct.lruhash**, %struct.lruhash*** %117, align 8
  %119 = load i64, i64* %18, align 8
  %120 = getelementptr inbounds %struct.lruhash*, %struct.lruhash** %118, i64 %119
  store %struct.lruhash* %115, %struct.lruhash** %120, align 8
  %121 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %122 = getelementptr inbounds %struct.slabhash, %struct.slabhash* %121, i32 0, i32 2
  %123 = load %struct.lruhash**, %struct.lruhash*** %122, align 8
  %124 = load i64, i64* %18, align 8
  %125 = getelementptr inbounds %struct.lruhash*, %struct.lruhash** %123, i64 %124
  %126 = load %struct.lruhash*, %struct.lruhash** %125, align 8
  %127 = icmp ne %struct.lruhash* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %103
  %129 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  %130 = call i32 @slabhash_delete(%struct.slabhash* %129)
  store %struct.slabhash* null, %struct.slabhash** %9, align 8
  br label %137

131:                                              ; preds = %103
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %18, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %18, align 8
  br label %97

135:                                              ; preds = %97
  %136 = load %struct.slabhash*, %struct.slabhash** %19, align 8
  store %struct.slabhash* %136, %struct.slabhash** %9, align 8
  br label %137

137:                                              ; preds = %135, %128, %47, %24
  %138 = load %struct.slabhash*, %struct.slabhash** %9, align 8
  ret %struct.slabhash* %138
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @free(%struct.slabhash*) #1

declare dso_local %struct.lruhash* @lruhash_create(i64, i64, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @slabhash_delete(%struct.slabhash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
