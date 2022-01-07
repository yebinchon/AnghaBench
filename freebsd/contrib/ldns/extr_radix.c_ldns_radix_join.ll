; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_join.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_NO_DATA = common dso_local global i64 0, align 8
@LDNS_STATUS_EXISTS_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_radix_join(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = icmp ne %struct.TYPE_11__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11, %2
  %17 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %17, i64* %3, align 8
  br label %71

18:                                               ; preds = %11
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = call %struct.TYPE_12__* @ldns_radix_first(%struct.TYPE_11__* %19)
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %6, align 8
  br label %21

21:                                               ; preds = %67, %18
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %69

24:                                               ; preds = %21
  %25 = load i64, i64* @LDNS_STATUS_NO_DATA, align 8
  store i64 %25, i64* %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @ldns_radix_insert(%struct.TYPE_11__* %31, i32 %34, i32 %37, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @LDNS_STATUS_OK, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %30
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @LDNS_STATUS_EXISTS_ERR, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  store i64 %50, i64* %3, align 8
  br label %71

51:                                               ; preds = %45, %30
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = call %struct.TYPE_12__* @ldns_radix_next(%struct.TYPE_12__* %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @LDNS_STATUS_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ldns_radix_delete(%struct.TYPE_11__* %59, i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %58, %52
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %68, %struct.TYPE_12__** %6, align 8
  br label %21

69:                                               ; preds = %21
  %70 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %70, i64* %3, align 8
  br label %71

71:                                               ; preds = %69, %49, %16
  %72 = load i64, i64* %3, align 8
  ret i64 %72
}

declare dso_local %struct.TYPE_12__* @ldns_radix_first(%struct.TYPE_11__*) #1

declare dso_local i64 @ldns_radix_insert(%struct.TYPE_11__*, i32, i32, i64) #1

declare dso_local %struct.TYPE_12__* @ldns_radix_next(%struct.TYPE_12__*) #1

declare dso_local i32 @ldns_radix_delete(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
