; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c__collate_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_collate.c__collate_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_collate = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32, i64, i32*, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }

@UCHAR_MAX = common dso_local global i64 0, align 8
@DIRECTIVE_UNDEFINED = common dso_local global i32 0, align 4
@COLLATE_MAX_PRIORITY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_collate_lookup(%struct.xlocale_collate* %0, i64* %1, i32* %2, i32* %3, i32 %4, i32** %5) #0 {
  %7 = alloca %struct.xlocale_collate*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.xlocale_collate* %0, %struct.xlocale_collate** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32** %5, i32*** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %20 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %18, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %6
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 1, i32* %30, align 4
  %31 = load i32**, i32*** %12, align 8
  store i32* null, i32** %31, align 8
  br label %177

32:                                               ; preds = %6
  %33 = load i32**, i32*** %12, align 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %17, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32*, i32** %17, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %17, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %17, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = load i32**, i32*** %12, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %42, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32*, i32** %17, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %36
  %50 = load i32**, i32*** %12, align 8
  store i32* null, i32** %50, align 8
  br label %54

51:                                               ; preds = %46
  %52 = load i32*, i32** %17, align 8
  %53 = load i32**, i32*** %12, align 8
  store i32* %52, i32** %53, align 8
  br label %54

54:                                               ; preds = %51, %49
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  br label %177

56:                                               ; preds = %32
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  %58 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = call %struct.TYPE_12__* @chainsearch(%struct.xlocale_collate* %58, i64* %59, i32* %16)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %13, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %62
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %10, align 8
  store i32 %74, i32* %75, align 4
  br label %152

76:                                               ; preds = %62, %56
  %77 = load i64*, i64** %8, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UCHAR_MAX, align 8
  %80 = icmp ule i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %83 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = load i64*, i64** %8, align 8
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  br label %151

95:                                               ; preds = %76
  %96 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %97 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %96, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %95
  %103 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call %struct.TYPE_11__* @largesearch(%struct.xlocale_collate* %103, i64 %105)
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %14, align 8
  %107 = icmp ne %struct.TYPE_11__* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %102
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %10, align 8
  store i32 %116, i32* %117, align 4
  br label %150

118:                                              ; preds = %102, %95
  %119 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %120 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DIRECTIVE_UNDEFINED, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %118
  %132 = load i64*, i64** %8, align 8
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @COLLATE_MAX_PRIORITY, align 8
  %135 = and i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = load i32*, i32** %10, align 8
  store i32 %136, i32* %137, align 4
  br label %149

138:                                              ; preds = %118
  %139 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %140 = getelementptr inbounds %struct.xlocale_collate, %struct.xlocale_collate* %139, i32 0, i32 0
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %138, %131
  br label %177

150:                                              ; preds = %108
  br label %151

151:                                              ; preds = %150, %81
  br label %152

152:                                              ; preds = %151, %71
  %153 = load %struct.xlocale_collate*, %struct.xlocale_collate** %7, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32* @substsearch(%struct.xlocale_collate* %153, i32 %155, i32 %156)
  store i32* %157, i32** %17, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %177

159:                                              ; preds = %152
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %10, align 8
  store i32 %161, i32* %162, align 4
  %163 = icmp sgt i32 %161, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = load i32*, i32** %17, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %17, align 8
  %167 = load i32*, i32** %17, align 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load i32*, i32** %17, align 8
  br label %173

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %170
  %174 = phi i32* [ %171, %170 ], [ null, %172 ]
  %175 = load i32**, i32*** %12, align 8
  store i32* %174, i32** %175, align 8
  br label %176

176:                                              ; preds = %173, %159
  br label %177

177:                                              ; preds = %25, %54, %149, %176, %152
  ret void
}

declare dso_local %struct.TYPE_12__* @chainsearch(%struct.xlocale_collate*, i64*, i32*) #1

declare dso_local %struct.TYPE_11__* @largesearch(%struct.xlocale_collate*, i64) #1

declare dso_local i32* @substsearch(%struct.xlocale_collate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
