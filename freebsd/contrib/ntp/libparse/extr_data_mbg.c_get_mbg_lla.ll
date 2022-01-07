; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_data_mbg.c_get_mbg_lla.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_data_mbg.c_get_mbg_lla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@LAT = common dso_local global i32 0, align 4
@ALT = common dso_local global i32 0, align 4
@IEEE_DOUBLE = common dso_local global i32 0, align 4
@mbg_double = common dso_local global i32 0, align 4
@IEEE_OK = common dso_local global i64 0, align 8
@rad2deg_i = common dso_local global i32 0, align 4
@rad2deg_f = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_mbg_lla(i8** %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %6 = load i32, i32* @LAT, align 4
  store i32 %6, i32* %5, align 4
  br label %7

7:                                                ; preds = %60, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @ALT, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %63

11:                                               ; preds = %7
  %12 = load i8**, i8*** %3, align 8
  %13 = load i32, i32* @IEEE_DOUBLE, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = load i32, i32* @mbg_double, align 4
  %19 = call i64 @fetch_ieee754(i8** %12, i32 %13, %struct.TYPE_5__* %17, i32 %18)
  %20 = load i64, i64* @IEEE_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = call i32 @L_CLR(%struct.TYPE_5__* %26)
  br label %59

28:                                               ; preds = %11
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @ALT, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @rad2deg_i, align 4
  %56 = load i32, i32* @rad2deg_f, align 4
  %57 = call i32 @mfp_mul(i32* %37, i32* %42, i32 %48, i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %32, %28
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %7

63:                                               ; preds = %7
  ret void
}

declare dso_local i64 @fetch_ieee754(i8**, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @L_CLR(%struct.TYPE_5__*) #1

declare dso_local i32 @mfp_mul(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
