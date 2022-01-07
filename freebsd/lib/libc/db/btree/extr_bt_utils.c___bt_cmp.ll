; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_utils.c___bt_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/btree/extr_bt_utils.c___bt_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 (%struct.TYPE_21__*, %struct.TYPE_21__*)*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8*, i32 }
%struct.TYPE_21__ = type { i8*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_24__ = type { i32, i32, i8* }
%struct.TYPE_23__ = type { i32, i32, i8* }

@P_INVALID = common dso_local global i64 0, align 8
@P_BLEAF = common dso_local global i32 0, align 4
@P_BIGKEY = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__bt_cmp(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %11, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @P_INVALID, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @P_BLEAF, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %122

34:                                               ; preds = %26, %20, %3
  store i8* null, i8** %12, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @P_BLEAF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_23__* @GETBLEAF(%struct.TYPE_19__* %42, i32 %45)
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %9, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @P_BIGKEY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %12, align 8
  br label %66

57:                                               ; preds = %41
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %53
  br label %93

67:                                               ; preds = %34
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_24__* @GETBINTERNAL(%struct.TYPE_19__* %68, i32 %71)
  store %struct.TYPE_24__* %72, %struct.TYPE_24__** %8, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @P_BIGKEY, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %12, align 8
  br label %92

83:                                               ; preds = %67
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %86, i8** %87, align 8
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  store i32 %90, i32* %91, align 8
  br label %92

92:                                               ; preds = %83, %79
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %116

96:                                               ; preds = %93
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = call i64 @__ovfl_get(%struct.TYPE_22__* %97, i8* %98, i32* %99, i8** %102, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* @RET_ERROR, align 4
  store i32 %109, i32* %4, align 4
  br label %122

110:                                              ; preds = %96
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 0
  store i8* %114, i8** %115, align 8
  br label %116

116:                                              ; preds = %110, %93
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i32 (%struct.TYPE_21__*, %struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_21__*)** %118, align 8
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %121 = call i32 %119(%struct.TYPE_21__* %120, %struct.TYPE_21__* %10)
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %116, %108, %33
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.TYPE_23__* @GETBLEAF(%struct.TYPE_19__*, i32) #1

declare dso_local %struct.TYPE_24__* @GETBINTERNAL(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @__ovfl_get(%struct.TYPE_22__*, i8*, i32*, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
