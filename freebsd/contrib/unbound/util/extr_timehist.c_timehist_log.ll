; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_timehist.c_timehist_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehist = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [36 x i8] c"[25%%]=%g median[50%%]=%g [75%%]=%g\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"lower(secs) upper(secs) %s\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%4d.%6.6d %4d.%6.6d %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timehist_log(%struct.timehist* %0, i8* %1) #0 {
  %3 = alloca %struct.timehist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.timehist* %0, %struct.timehist** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.timehist*, %struct.timehist** %3, align 8
  %7 = call i32 @timehist_quartile(%struct.timehist* %6, double 2.500000e-01)
  %8 = load %struct.timehist*, %struct.timehist** %3, align 8
  %9 = call i32 @timehist_quartile(%struct.timehist* %8, double 5.000000e-01)
  %10 = load %struct.timehist*, %struct.timehist** %3, align 8
  %11 = call i32 @timehist_quartile(%struct.timehist* %10, double 7.500000e-01)
  %12 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %9, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %13)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %77, %2
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.timehist*, %struct.timehist** %3, align 8
  %18 = getelementptr inbounds %struct.timehist, %struct.timehist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %80

21:                                               ; preds = %15
  %22 = load %struct.timehist*, %struct.timehist** %3, align 8
  %23 = getelementptr inbounds %struct.timehist, %struct.timehist* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %21
  %31 = load %struct.timehist*, %struct.timehist** %3, align 8
  %32 = getelementptr inbounds %struct.timehist, %struct.timehist* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load %struct.timehist*, %struct.timehist** %3, align 8
  %41 = getelementptr inbounds %struct.timehist, %struct.timehist* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load %struct.timehist*, %struct.timehist** %3, align 8
  %50 = getelementptr inbounds %struct.timehist, %struct.timehist* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.timehist*, %struct.timehist** %3, align 8
  %59 = getelementptr inbounds %struct.timehist, %struct.timehist* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.timehist*, %struct.timehist** %3, align 8
  %68 = getelementptr inbounds %struct.timehist, %struct.timehist* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i8*, ...) @log_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32 %48, i32 %57, i32 %66, i32 %74)
  br label %76

76:                                               ; preds = %30, %21
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %15

80:                                               ; preds = %15
  ret void
}

declare dso_local i32 @log_info(i8*, ...) #1

declare dso_local i32 @timehist_quartile(%struct.timehist*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
