; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_sub_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_sub_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32 }

@RE_CARET_ANCHORS_HERE = common dso_local global i32 0, align 4
@OP_CLOSE_SUBEXP = common dso_local global i64 0, align 8
@REG_NOERROR = common dso_local global i64 0, align 8
@free_tree = common dso_local global i32 0, align 4
@REG_EPAREN = common dso_local global i64 0, align 8
@SUBEXP = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (i32*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32, i64*)* @parse_sub_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @parse_sub_exp(i32* %0, %struct.TYPE_20__* %1, %struct.TYPE_21__* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %14, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %23 to i64
  store i64 %25, i64* %16, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @RE_CARET_ANCHORS_HERE, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @fetch_token(%struct.TYPE_21__* %26, i32* %27, i32 %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %15, align 8
  br label %81

38:                                               ; preds = %6
  %39 = load i32*, i32** %8, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i64*, i64** %13, align 8
  %45 = call %struct.TYPE_23__* @parse_reg_exp(i32* %39, %struct.TYPE_20__* %40, %struct.TYPE_21__* %41, i32 %42, i32 %43, i64* %44)
  store %struct.TYPE_23__* %45, %struct.TYPE_23__** %15, align 8
  %46 = load i64*, i64** %13, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @REG_NOERROR, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %55 = icmp ne i64 %53, %54
  br label %56

56:                                               ; preds = %50, %38
  %57 = phi i1 [ false, %38 ], [ %55, %50 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @BE(i32 %58, i32 0)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %63 = icmp ne %struct.TYPE_23__* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %66 = load i32, i32* @free_tree, align 4
  %67 = call i32 @postorder(%struct.TYPE_23__* %65, i32 %66, i32* null)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i64, i64* @REG_EPAREN, align 8
  %70 = load i64*, i64** %13, align 8
  store i64 %69, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %56
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REG_NOERROR, align 8
  %75 = icmp ne i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @BE(i32 %76, i32 0)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  br label %112

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %37
  %82 = load i64, i64* %16, align 8
  %83 = icmp ule i64 %82, 8
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load i64, i64* %16, align 8
  %86 = trunc i64 %85 to i32
  %87 = shl i32 1, %86
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %81
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %95 = load i32, i32* @SUBEXP, align 4
  %96 = call %struct.TYPE_23__* @create_tree(%struct.TYPE_22__* %93, %struct.TYPE_23__* %94, i32* null, i32 %95)
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %15, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %98 = icmp eq %struct.TYPE_23__* %97, null
  %99 = zext i1 %98 to i32
  %100 = call i64 @BE(i32 %99, i32 0)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i64, i64* @REG_ESPACE, align 8
  %104 = load i64*, i64** %13, align 8
  store i64 %103, i64* %104, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %7, align 8
  br label %112

105:                                              ; preds = %92
  %106 = load i64, i64* %16, align 8
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %111, %struct.TYPE_23__** %7, align 8
  br label %112

112:                                              ; preds = %105, %102, %79
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  ret %struct.TYPE_23__* %113
}

declare dso_local i32 @fetch_token(%struct.TYPE_21__*, i32*, i32) #1

declare dso_local %struct.TYPE_23__* @parse_reg_exp(i32*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32, i64*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32 @postorder(%struct.TYPE_23__*, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @create_tree(%struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
