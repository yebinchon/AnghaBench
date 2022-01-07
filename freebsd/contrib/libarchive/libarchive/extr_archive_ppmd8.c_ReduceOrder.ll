; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_ReduceOrder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_ReduceOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_21__ = type { i32, i64, i32 }

@MAX_FREQ = common dso_local global i32 0, align 4
@False = common dso_local global i32 0, align 4
@PPMD8_MAX_ORDER = common dso_local global i32 0, align 4
@PPMD8_RESTORE_METHOD_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*)* @ReduceOrder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @ReduceOrder(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %13, %struct.TYPE_21__** %9, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %17 = call i64 @REF(%struct.TYPE_21__* %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %19, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @SetSuccessor(%struct.TYPE_22__* %20, i64 %21)
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %111, %3
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %29 = icmp ne %struct.TYPE_22__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %32 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %31)
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %7, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %33, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  br label %106

34:                                               ; preds = %27
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %4, align 8
  br label %180

41:                                               ; preds = %34
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = call %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__* %42)
  store %struct.TYPE_21__* %43, %struct.TYPE_21__** %7, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %41
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %50 = call %struct.TYPE_22__* @STATS(%struct.TYPE_21__* %49)
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %63, %59
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 1
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %8, align 8
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 3
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %66, %71
  br i1 %72, label %60, label %73

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MAX_FREQ, align 4
  %79 = sub nsw i32 %78, 9
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 2
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 2
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %81, %74
  br label %105

91:                                               ; preds = %41
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = call %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__* %92)
  store %struct.TYPE_22__* %93, %struct.TYPE_22__** %8, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %99, 32
  %101 = zext i1 %100 to i32
  %102 = add nsw i32 %96, %101
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %91, %90
  br label %106

106:                                              ; preds = %105, %30
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %108 = call i64 @SUCCESSOR(%struct.TYPE_22__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %119

111:                                              ; preds = %106
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @SetSuccessor(%struct.TYPE_22__* %112, i64 %113)
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  br label %27

119:                                              ; preds = %110
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %121 = call i64 @SUCCESSOR(%struct.TYPE_22__* %120)
  %122 = load i64, i64* %10, align 8
  %123 = icmp sle i64 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %119
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  store %struct.TYPE_22__* %127, %struct.TYPE_22__** %12, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 3
  store %struct.TYPE_22__* %128, %struct.TYPE_22__** %130, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = load i32, i32* @False, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %134 = call %struct.TYPE_21__* @CreateSuccessors(%struct.TYPE_23__* %131, i32 %132, i32* null, %struct.TYPE_21__* %133)
  store %struct.TYPE_21__* %134, %struct.TYPE_21__** %11, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %136 = icmp eq %struct.TYPE_21__* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %124
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = call i32 @SetSuccessor(%struct.TYPE_22__* %138, i64 0)
  br label %145

140:                                              ; preds = %124
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %143 = call i64 @REF(%struct.TYPE_21__* %142)
  %144 = call i32 @SetSuccessor(%struct.TYPE_22__* %141, i64 %143)
  br label %145

145:                                              ; preds = %140, %137
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 3
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %148, align 8
  br label %149

149:                                              ; preds = %145, %119
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %171

154:                                              ; preds = %149
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = icmp eq %struct.TYPE_21__* %155, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 3
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %165 = call i64 @SUCCESSOR(%struct.TYPE_22__* %164)
  %166 = call i32 @SetSuccessor(%struct.TYPE_22__* %163, i64 %165)
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 -1
  store %struct.TYPE_21__* %170, %struct.TYPE_21__** %168, align 8
  br label %171

171:                                              ; preds = %160, %154, %149
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %173 = call i64 @SUCCESSOR(%struct.TYPE_22__* %172)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %4, align 8
  br label %180

176:                                              ; preds = %171
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %178 = call i64 @SUCCESSOR(%struct.TYPE_22__* %177)
  %179 = call %struct.TYPE_21__* @CTX(i64 %178)
  store %struct.TYPE_21__* %179, %struct.TYPE_21__** %4, align 8
  br label %180

180:                                              ; preds = %176, %175, %39
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  ret %struct.TYPE_21__* %181
}

declare dso_local i64 @REF(%struct.TYPE_21__*) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_22__*, i64) #1

declare dso_local %struct.TYPE_21__* @SUFFIX(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @STATS(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @ONE_STATE(%struct.TYPE_21__*) #1

declare dso_local i64 @SUCCESSOR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @CreateSuccessors(%struct.TYPE_23__*, i32, i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_21__* @CTX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
