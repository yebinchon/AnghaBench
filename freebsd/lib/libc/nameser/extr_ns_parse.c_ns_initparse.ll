; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_parse.c_ns_initparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/nameser/extr_ns_parse.c_ns_initparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64*, i32**, i32*, i32* }

@NS_INT16SZ = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ns_s_max = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ns_initparse(i32* %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 5
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  store i32* %18, i32** %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @NS_INT16SZ, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ugt i32* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = call i32 @RETERR(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @NS_GET16(i64 %33, i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @NS_INT16SZ, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32*, i32** %8, align 8
  %41 = icmp ugt i32* %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load i32, i32* @EMSGSIZE, align 4
  %44 = call i32 @RETERR(i32 %43)
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @NS_GET16(i64 %48, i32* %49)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %75, %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @ns_s_max, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @NS_INT16SZ, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ugt i32* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EMSGSIZE, align 4
  %64 = call i32 @RETERR(i32 %63)
  br label %65

65:                                               ; preds = %62, %55
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @NS_GET16(i64 %72, i32* %73)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %51

78:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %127, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ns_s_max, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %130

83:                                               ; preds = %79
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %83
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  store i32* null, i32** %98, align 8
  br label %126

99:                                               ; preds = %83
  %100 = load i32*, i32** %5, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ns_skiprr(i32* %100, i32* %101, i32 %102, i64 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %99
  store i32 -1, i32* %4, align 4
  br label %141

114:                                              ; preds = %99
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  store i32* %115, i32** %121, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %114, %92
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %79

130:                                              ; preds = %79
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = icmp ne i32* %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* @EMSGSIZE, align 4
  %136 = call i32 @RETERR(i32 %135)
  br label %137

137:                                              ; preds = %134, %130
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = load i32, i32* @ns_s_max, align 4
  %140 = call i32 @setsection(%struct.TYPE_4__* %138, i32 %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %137, %113
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @RETERR(i32) #1

declare dso_local i32 @NS_GET16(i64, i32*) #1

declare dso_local i32 @ns_skiprr(i32*, i32*, i32, i64) #1

declare dso_local i32 @setsection(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
