; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chF.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ch.c_v_chF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }

@VC_ISDOT = common dso_local global i32 0, align 4
@FSEARCH = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_chF(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load i32, i32* @VC_ISDOT, align 4
  %17 = call i64 @F_ISSET(%struct.TYPE_10__* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call %struct.TYPE_11__* @VIP(i32* %21)
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  store i64 %20, i64* %23, align 8
  br label %24

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @FSEARCH, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call %struct.TYPE_11__* @VIP(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @db_eget(i32* %29, i32 %33, i64** %11, i64* %6, i32* %8)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %45

40:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %125

41:                                               ; preds = %24
  %42 = load i64, i64* %6, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44, %39
  %46 = load i32*, i32** %4, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @notfound(i32* %46, i64 %47)
  store i32 1, i32* %3, align 4
  br label %125

49:                                               ; preds = %41
  %50 = load i64*, i64** %11, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 -1
  store i64* %51, i64** %10, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64*, i64** %11, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64* %58, i64** %11, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load i32, i32* @VC_C1SET, align 4
  %61 = call i64 @F_ISSET(%struct.TYPE_10__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  br label %68

67:                                               ; preds = %49
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 1, %67 ]
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %96, %68
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i64*, i64** %11, align 8
  %77 = getelementptr inbounds i64, i64* %76, i32 -1
  store i64* %77, i64** %11, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = icmp ugt i64* %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i64*, i64** %11, align 8
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp ne i64 %82, %83
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ false, %75 ], [ %84, %80 ]
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  br label %75

88:                                               ; preds = %85
  %89 = load i64*, i64** %11, align 8
  %90 = load i64*, i64** %10, align 8
  %91 = icmp eq i64* %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @notfound(i32* %93, i64 %94)
  store i32 1, i32* %3, align 4
  br label %125

96:                                               ; preds = %88
  br label %70

97:                                               ; preds = %70
  %98 = load i64*, i64** %11, align 8
  %99 = load i64*, i64** %10, align 8
  %100 = ptrtoint i64* %98 to i64
  %101 = ptrtoint i64* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 8
  %104 = sub nsw i64 %103, 1
  %105 = trunc i64 %104 to i32
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 3
  %113 = bitcast %struct.TYPE_8__* %110 to i8*
  %114 = bitcast %struct.TYPE_8__* %112 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 4 %114, i64 4, i1 false)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %116 = call i64 @ISMOTION(%struct.TYPE_10__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %97
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %97
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %92, %45, %40
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @F_ISSET(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.TYPE_11__* @VIP(i32*) #1

declare dso_local i64 @db_eget(i32*, i32, i64**, i64*, i32*) #1

declare dso_local i32 @notfound(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ISMOTION(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
