; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }

@VC_ISDOT = common dso_local global i32 0, align 4
@fSEARCH = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_chf(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = load i32, i32* @VC_ISDOT, align 4
  %18 = call i64 @F_ISSET(%struct.TYPE_8__* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %2
  %21 = load i64, i64* %9, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call %struct.TYPE_9__* @VIP(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  store i64 %21, i64* %24, align 8
  br label %25

25:                                               ; preds = %20, %2
  %26 = load i32, i32* @fSEARCH, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_9__* @VIP(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @db_eget(i32* %30, i32 %34, i64** %11, i64* %6, i32* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %46

41:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %126

42:                                               ; preds = %25
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32*, i32** %4, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @notfound(i32* %47, i64 %48)
  store i32 1, i32* %3, align 4
  br label %126

50:                                               ; preds = %42
  %51 = load i64*, i64** %11, align 8
  store i64* %51, i64** %12, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64* %53, i64** %10, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64*, i64** %11, align 8
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  store i64* %60, i64** %11, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load i32, i32* @VC_C1SET, align 4
  %63 = call i64 @F_ISSET(%struct.TYPE_8__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  br label %70

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %65
  %71 = phi i32 [ %68, %65 ], [ 1, %69 ]
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %98, %70
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %89, %76
  %78 = load i64*, i64** %11, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %11, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = icmp ult i64* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i64*, i64** %11, align 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp ne i64 %84, %85
  br label %87

87:                                               ; preds = %82, %77
  %88 = phi i1 [ false, %77 ], [ %86, %82 ]
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %77

90:                                               ; preds = %87
  %91 = load i64*, i64** %11, align 8
  %92 = load i64*, i64** %10, align 8
  %93 = icmp eq i64* %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32*, i32** %4, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @notfound(i32* %95, i64 %96)
  store i32 1, i32* %3, align 4
  br label %126

98:                                               ; preds = %90
  br label %72

99:                                               ; preds = %72
  %100 = load i64*, i64** %11, align 8
  %101 = load i64*, i64** %12, align 8
  %102 = ptrtoint i64* %100 to i64
  %103 = ptrtoint i64* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = call i64 @ISMOTION(%struct.TYPE_8__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %99
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 3
  %118 = bitcast %struct.TYPE_7__* %111 to i8*
  %119 = bitcast %struct.TYPE_7__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 8, i1 false)
  br label %125

120:                                              ; preds = %99
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = bitcast %struct.TYPE_7__* %111 to i8*
  %124 = bitcast %struct.TYPE_7__* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 4 %124, i64 8, i1 false)
  br label %125

125:                                              ; preds = %120, %115
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %94, %46, %41
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i64 @F_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.TYPE_9__* @VIP(i32*) #1

declare dso_local i64 @db_eget(i32*, i32, i64**, i64*, i32*) #1

declare dso_local i32 @notfound(i32*, i64) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_8__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
