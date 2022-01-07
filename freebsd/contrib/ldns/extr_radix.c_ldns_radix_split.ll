; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_radix.c_ldns_radix_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, i64 }

@LDNS_STATUS_OK = common dso_local global i64 0, align 8
@LDNS_STATUS_NULL = common dso_local global i64 0, align 8
@LDNS_STATUS_MEM_ERR = common dso_local global i64 0, align 8
@LDNS_STATUS_NO_DATA = common dso_local global i64 0, align 8
@LDNS_STATUS_EXISTS_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ldns_radix_split(%struct.TYPE_12__* %0, i64 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %17, %3
  %26 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %26, i64* %4, align 8
  br label %104

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %29 = icmp ne %struct.TYPE_12__** %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @LDNS_STATUS_NULL, align 8
  store i64 %31, i64* %4, align 8
  br label %104

32:                                               ; preds = %27
  %33 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = icmp ne %struct.TYPE_12__* %34, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = call %struct.TYPE_12__* (...) @ldns_radix_create()
  %38 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %38, align 8
  %39 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* @LDNS_STATUS_MEM_ERR, align 8
  store i64 %43, i64* %4, align 8
  br label %104

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %32
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = call %struct.TYPE_13__* @ldns_radix_first(%struct.TYPE_12__* %46)
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %9, align 8
  br label %48

48:                                               ; preds = %101, %45
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = icmp ne %struct.TYPE_13__* %53, null
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i1 [ false, %48 ], [ %54, %52 ]
  br i1 %56, label %57, label %102

57:                                               ; preds = %55
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %11, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i8* @ldns_radix_delete(%struct.TYPE_12__* %69, i32* %70, i32 %71)
  store i8* %72, i8** %13, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %62
  %76 = load i64, i64* @LDNS_STATUS_NO_DATA, align 8
  store i64 %76, i64* %4, align 8
  br label %104

77:                                               ; preds = %62
  %78 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i64 @ldns_radix_insert(%struct.TYPE_12__* %79, i32* %80, i32 %81, i8* %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @LDNS_STATUS_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %77
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @LDNS_STATUS_EXISTS_ERR, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %4, align 8
  br label %104

93:                                               ; preds = %87, %77
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %8, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = call %struct.TYPE_13__* @ldns_radix_first(%struct.TYPE_12__* %96)
  store %struct.TYPE_13__* %97, %struct.TYPE_13__** %9, align 8
  br label %101

98:                                               ; preds = %57
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = call %struct.TYPE_13__* @ldns_radix_next(%struct.TYPE_13__* %99)
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %9, align 8
  br label %101

101:                                              ; preds = %98, %93
  br label %48

102:                                              ; preds = %55
  %103 = load i64, i64* @LDNS_STATUS_OK, align 8
  store i64 %103, i64* %4, align 8
  br label %104

104:                                              ; preds = %102, %91, %75, %42, %30, %25
  %105 = load i64, i64* %4, align 8
  ret i64 %105
}

declare dso_local %struct.TYPE_12__* @ldns_radix_create(...) #1

declare dso_local %struct.TYPE_13__* @ldns_radix_first(%struct.TYPE_12__*) #1

declare dso_local i8* @ldns_radix_delete(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @ldns_radix_insert(%struct.TYPE_12__*, i32*, i32, i8*) #1

declare dso_local %struct.TYPE_13__* @ldns_radix_next(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
