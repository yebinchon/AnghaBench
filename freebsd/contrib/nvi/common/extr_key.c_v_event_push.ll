; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_event_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_key.c_v_event_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@E_CHARACTER = common dso_local global i32 0, align 4
@TERM_PUSH_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_event_push(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ule i64 %18, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %5
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ule i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33, %5
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %44, %39
  br label %100

51:                                               ; preds = %33, %28, %23
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %58, %59
  %61 = add i64 %60, 30
  store i64 %61, i64* %14, align 8
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp uge i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %51
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i32 @MAX(i64 %69, i32 64)
  %71 = call i64 @v_event_grow(%struct.TYPE_10__* %68, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 1, i32* %6, align 4
  br label %151

74:                                               ; preds = %67, %51
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i64 %85
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 30
  %91 = load i64, i64* %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i64 %91
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @BCOPY(%struct.TYPE_12__* %86, %struct.TYPE_12__* %92, i64 %95)
  br label %97

97:                                               ; preds = %79, %74
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i64 30, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %50
  %101 = load i64, i64* %10, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = add i64 %104, %101
  store i64 %105, i64* %103, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i64 %111
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %12, align 8
  br label %113

113:                                              ; preds = %147, %100
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %10, align 8
  %116 = icmp ne i64 %114, 0
  br i1 %116, label %117, label %150

117:                                              ; preds = %113
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %119 = icmp ne %struct.TYPE_12__* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 1
  store %struct.TYPE_12__* %123, %struct.TYPE_12__** %8, align 8
  %124 = bitcast %struct.TYPE_12__* %121 to i8*
  %125 = bitcast %struct.TYPE_12__* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 16, i1 false)
  br label %146

126:                                              ; preds = %117
  %127 = load i32, i32* @E_CHARACTER, align 4
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %9, align 8
  %132 = load i32, i32* %130, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @KEY_VAL(%struct.TYPE_10__* %135, i32 %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @F_INIT(i32* %143, i32 %144)
  br label %146

146:                                              ; preds = %126, %120
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 1
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %12, align 8
  br label %113

150:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %73
  %152 = load i32, i32* %6, align 4
  ret i32 %152
}

declare dso_local i64 @v_event_grow(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @MAX(i64, i32) #1

declare dso_local i32 @BCOPY(%struct.TYPE_12__*, %struct.TYPE_12__*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KEY_VAL(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @F_INIT(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
