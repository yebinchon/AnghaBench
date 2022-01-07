; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_hsearch_r.c_hsearch_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_hsearch_r.c_hsearch_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.hsearch_data = type { %struct.__hsearch* }
%struct.__hsearch = type { i64, i32, i32, %struct.TYPE_7__* }

@FIND = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hsearch_r(i32* %0, i64 %1, %struct.TYPE_7__** %2, %struct.hsearch_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__**, align 8
  %9 = alloca %struct.hsearch_data*, align 8
  %10 = alloca %struct.__hsearch*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32* %0, i32** %20, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__** %2, %struct.TYPE_7__*** %8, align 8
  store %struct.hsearch_data* %3, %struct.hsearch_data** %9, align 8
  %21 = load %struct.hsearch_data*, %struct.hsearch_data** %9, align 8
  %22 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %21, i32 0, i32 0
  %23 = load %struct.__hsearch*, %struct.__hsearch** %22, align 8
  store %struct.__hsearch* %23, %struct.__hsearch** %10, align 8
  %24 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %25 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @hsearch_hash(i32 %26, i32* %28)
  store i64 %29, i64* %14, align 8
  %30 = load i64, i64* %14, align 8
  store i64 %30, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %31

31:                                               ; preds = %58, %4
  %32 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %33 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %32, i32 0, i32 3
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %37 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = and i64 %35, %38
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i64 %39
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %11, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %63

46:                                               ; preds = %31
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i64 @strcmp(i32* %49, i32* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %56, align 8
  store i32 1, i32* %5, align 4
  br label %154

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %16, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %16, align 8
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %15, align 8
  br label %31

63:                                               ; preds = %45
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @FIND, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @ESRCH, align 4
  store i32 %68, i32* @errno, align 4
  store i32 0, i32* %5, align 4
  br label %154

69:                                               ; preds = %63
  %70 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %71 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %76 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp uge i64 %74, %77
  br i1 %78, label %79, label %144

79:                                               ; preds = %69
  %80 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %81 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %18, align 8
  %84 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %85 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %12, align 8
  %87 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %88 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  %91 = mul i64 %90, 2
  store i64 %91, i64* %19, align 8
  %92 = load i64, i64* %19, align 8
  %93 = call %struct.TYPE_7__* @calloc(i64 %92, i32 8)
  store %struct.TYPE_7__* %93, %struct.TYPE_7__** %13, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %95 = icmp eq %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %154

97:                                               ; preds = %79
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %100 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %99, i32 0, i32 3
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %100, align 8
  %101 = load i64, i64* %19, align 8
  %102 = sub i64 %101, 1
  %103 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %104 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  store i64 0, i64* %16, align 8
  br label %105

105:                                              ; preds = %132, %97
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* %18, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %111 = load i64, i64* %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %111
  store %struct.TYPE_7__* %112, %struct.TYPE_7__** %11, align 8
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %109
  %118 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %119 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @hsearch_hash(i32 %120, i32* %123)
  store i64 %124, i64* %17, align 8
  %125 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %126 = load i64, i64* %17, align 8
  %127 = call %struct.TYPE_7__* @hsearch_lookup_free(%struct.__hsearch* %125, i64 %126)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %129 = bitcast %struct.TYPE_7__* %127 to i8*
  %130 = bitcast %struct.TYPE_7__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 8, i1 false)
  br label %131

131:                                              ; preds = %117, %109
  br label %132

132:                                              ; preds = %131
  %133 = load i64, i64* %16, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %16, align 8
  br label %105

135:                                              ; preds = %105
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %137 = call i32 @free(%struct.TYPE_7__* %136)
  %138 = load %struct.hsearch_data*, %struct.hsearch_data** %9, align 8
  %139 = getelementptr inbounds %struct.hsearch_data, %struct.hsearch_data* %138, i32 0, i32 0
  %140 = load %struct.__hsearch*, %struct.__hsearch** %139, align 8
  store %struct.__hsearch* %140, %struct.__hsearch** %10, align 8
  %141 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %142 = load i64, i64* %14, align 8
  %143 = call %struct.TYPE_7__* @hsearch_lookup_free(%struct.__hsearch* %141, i64 %142)
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %11, align 8
  br label %144

144:                                              ; preds = %135, %69
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %146 = bitcast %struct.TYPE_7__* %145 to i8*
  %147 = bitcast %struct.TYPE_7__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 8, i1 false)
  %148 = load %struct.__hsearch*, %struct.__hsearch** %10, align 8
  %149 = getelementptr inbounds %struct.__hsearch, %struct.__hsearch* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %153 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %8, align 8
  store %struct.TYPE_7__* %152, %struct.TYPE_7__** %153, align 8
  store i32 1, i32* %5, align 4
  br label %154

154:                                              ; preds = %144, %96, %67, %54
  %155 = load i32, i32* %5, align 4
  ret i32 %155
}

declare dso_local i64 @hsearch_hash(i32, i32*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @calloc(i64, i32) #1

declare dso_local %struct.TYPE_7__* @hsearch_lookup_free(%struct.__hsearch*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
