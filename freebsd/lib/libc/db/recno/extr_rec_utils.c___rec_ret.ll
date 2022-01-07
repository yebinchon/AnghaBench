; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_utils.c___rec_ret.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/recno/extr_rec_utils.c___rec_ret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i32* }

@RET_ERROR = common dso_local global i32 0, align 4
@RET_SUCCESS = common dso_local global i32 0, align 4
@P_BIGDATA = common dso_local global i32 0, align 4
@B_DB_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rec_ret(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %11, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %15 = icmp eq %struct.TYPE_18__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %57

17:                                               ; preds = %5
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 4, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @realloc(i32* %28, i32 4)
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @RET_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %179

34:                                               ; preds = %24
  %35 = load i8*, i8** %13, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 1
  store i32* %36, i32** %39, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  store i32 4, i32* %42, align 8
  br label %43

43:                                               ; preds = %34, %17
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @memmove(i32* %47, i32* %9, i32 4)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  store i32 4, i32* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %43, %16
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %59 = icmp eq %struct.TYPE_18__* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %61, i32* %6, align 4
  br label %179

62:                                               ; preds = %57
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_16__* @GETRLEAF(i32 %65, i32 %68)
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %12, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @P_BIGDATA, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %62
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = call i64 @__ovfl_get(%struct.TYPE_19__* %77, i32* %80, i32* %82, i32** %85, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* @RET_ERROR, align 4
  store i32 %92, i32* %6, align 4
  br label %179

93:                                               ; preds = %76
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 1
  store i32* %97, i32** %99, align 8
  br label %177

100:                                              ; preds = %62
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %102 = load i32, i32* @B_DB_LOCK, align 4
  %103 = call i64 @F_ISSET(%struct.TYPE_19__* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %165

105:                                              ; preds = %100
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %142

115:                                              ; preds = %105
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i8* @realloc(i32* %119, i32 %123)
  store i8* %124, i8** %13, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = icmp eq i8* %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %115
  %128 = load i32, i32* @RET_ERROR, align 4
  store i32 %128, i32* %6, align 4
  br label %179

129:                                              ; preds = %115
  %130 = load i8*, i8** %13, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  store i32* %131, i32** %134, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  br label %142

142:                                              ; preds = %129, %105
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @memmove(i32* %146, i32* %149, i32 %152)
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  store i32* %162, i32** %164, align 8
  br label %176

165:                                              ; preds = %100
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  store i32* %173, i32** %175, align 8
  br label %176

176:                                              ; preds = %165, %142
  br label %177

177:                                              ; preds = %176, %93
  %178 = load i32, i32* @RET_SUCCESS, align 4
  store i32 %178, i32* %6, align 4
  br label %179

179:                                              ; preds = %177, %127, %91, %60, %32
  %180 = load i32, i32* %6, align 4
  ret i32 %180
}

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_16__* @GETRLEAF(i32, i32) #1

declare dso_local i64 @__ovfl_get(%struct.TYPE_19__*, i32*, i32*, i32**, i32*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
