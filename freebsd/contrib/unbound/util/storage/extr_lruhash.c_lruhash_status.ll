; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_lruhash_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i32, i32, i64, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, %struct.lruhash_entry* }
%struct.lruhash_entry = type { %struct.lruhash_entry* }

@.str = private unnamed_addr constant [31 x i8] c"%s: %u entries, memory %u / %u\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"  itemsize %u, array %u, mask %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bin[%d] %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"  bin min %d, avg %.2lf, max %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lruhash_status(%struct.lruhash* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.lruhash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.lruhash_entry*, align 8
  store %struct.lruhash* %0, %struct.lruhash** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %13 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %12, i32 0, i32 4
  %14 = call i32 @lock_quick_lock(i32* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %17 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %20 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %23 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %18, i32 %21, i32 %25)
  %27 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %28 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %3
  %32 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %33 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %36 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sdiv i32 %34, %37
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %31
  %41 = phi i32 [ %38, %31 ], [ 0, %39 ]
  %42 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %43 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %47 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %45, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %132

52:                                               ; preds = %40
  %53 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %54 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = mul nsw i32 %56, 2
  store i32 %57, i32* %8, align 4
  store i32 -2, i32* %9, align 4
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %116, %52
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %61 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %65 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %66 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @lock_quick_lock(i32* %70)
  %72 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %73 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %72, i32 0, i32 5
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.lruhash_entry*, %struct.lruhash_entry** %77, align 8
  store %struct.lruhash_entry* %78, %struct.lruhash_entry** %11, align 8
  br label %79

79:                                               ; preds = %82, %64
  %80 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %81 = icmp ne %struct.lruhash_entry* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = load %struct.lruhash_entry*, %struct.lruhash_entry** %11, align 8
  %86 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %85, i32 0, i32 0
  %87 = load %struct.lruhash_entry*, %struct.lruhash_entry** %86, align 8
  store %struct.lruhash_entry* %87, %struct.lruhash_entry** %11, align 8
  br label %79

88:                                               ; preds = %79
  %89 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %90 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %89, i32 0, i32 5
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = call i32 @lock_quick_unlock(i32* %94)
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %96, 2
  br i1 %97, label %98, label %103

98:                                               ; preds = %88
  %99 = load i64, i64* %7, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %88
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %7, align 8
  br label %58

119:                                              ; preds = %58
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %122 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sitofp i32 %123 to double
  %125 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %126 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = uitofp i64 %127 to double
  %129 = fdiv double %124, %128
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %120, double %129, i32 %130)
  br label %132

132:                                              ; preds = %119, %40
  %133 = load %struct.lruhash*, %struct.lruhash** %4, align 8
  %134 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %133, i32 0, i32 4
  %135 = call i32 @lock_quick_unlock(i32* %134)
  ret void
}

declare dso_local i32 @lock_quick_lock(i32*) #1

declare dso_local i32 @log_info(i8*, ...) #1

declare dso_local i32 @lock_quick_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
