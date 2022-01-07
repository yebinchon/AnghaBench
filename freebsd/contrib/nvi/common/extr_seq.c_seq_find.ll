; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_seq.c_seq_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_seq.c_seq_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64*, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@SEQ_FUNCMAP = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @seq_find(%struct.TYPE_16__* %0, %struct.TYPE_15__** %1, %struct.TYPE_17__* %2, i64* %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_15__**, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_15__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %16, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32*, i32** %15, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %7
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_15__* @SLIST_FIRST(i32 %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %17, align 8
  br label %30

30:                                               ; preds = %162, %23
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %32 = icmp ne %struct.TYPE_15__* %31, null
  br i1 %32, label %33, label %167

33:                                               ; preds = %30
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %35 = icmp eq %struct.TYPE_17__* %34, null
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %12, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %167

47:                                               ; preds = %36
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %12, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %52, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %47
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %65 = load i32, i32* @SEQ_FUNCMAP, align 4
  %66 = call i64 @F_ISSET(%struct.TYPE_15__* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %57, %47
  br label %162

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = call i32 @MIN(i64 %76, i64 %77)
  %79 = call i32 @MEMCMP(i64* %72, i64* %73, i32 %78)
  store i32 %79, i32* %18, align 4
  br label %124

80:                                               ; preds = %33
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  br label %167

91:                                               ; preds = %80
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %96, %99
  br i1 %100, label %112, label %101

101:                                              ; preds = %91
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %109 = load i32, i32* @SEQ_FUNCMAP, align 4
  %110 = call i64 @F_ISSET(%struct.TYPE_15__* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %101, %91
  br label %162

113:                                              ; preds = %107
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @MIN(i64 %120, i64 %121)
  %123 = call i32 @e_memcmp(i64* %116, %struct.TYPE_17__* %117, i32 %122)
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %113, %69
  %125 = load i32, i32* %18, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %167

128:                                              ; preds = %124
  %129 = load i32, i32* %18, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %162

132:                                              ; preds = %128
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %13, align 8
  %137 = icmp ule i64 %135, %136
  br i1 %137, label %138, label %156

138:                                              ; preds = %132
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %13, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = load i32*, i32** %15, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %144, %138
  %148 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %149 = icmp ne %struct.TYPE_15__** %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %152 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__* %151, %struct.TYPE_15__** %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %154, %struct.TYPE_15__** %8, align 8
  br label %174

155:                                              ; preds = %144
  br label %162

156:                                              ; preds = %132
  %157 = load i32*, i32** %15, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32*, i32** %15, align 8
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %159, %156
  br label %167

162:                                              ; preds = %155, %131, %112, %68
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %16, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %165 = load i32, i32* @q, align 4
  %166 = call %struct.TYPE_15__* @SLIST_NEXT(%struct.TYPE_15__* %164, i32 %165)
  store %struct.TYPE_15__* %166, %struct.TYPE_15__** %17, align 8
  br label %30

167:                                              ; preds = %161, %127, %90, %46, %30
  %168 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %169 = icmp ne %struct.TYPE_15__** %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %172 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__* %171, %struct.TYPE_15__** %172, align 8
  br label %173

173:                                              ; preds = %170, %167
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %8, align 8
  br label %174

174:                                              ; preds = %173, %153
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  ret %struct.TYPE_15__* %175
}

declare dso_local %struct.TYPE_15__* @SLIST_FIRST(i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @MEMCMP(i64*, i64*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @e_memcmp(i64*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_15__* @SLIST_NEXT(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
