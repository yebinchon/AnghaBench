; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_paragraph.c_v_paragraphb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_paragraph.c_v_paragraphb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }

@VM_LMODE = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@INTEXT_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_paragraphb(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %17 = call i64 @ISMOTION(%struct.TYPE_9__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %53

19:                                               ; preds = %2
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  %35 = call i32 @v_sof(i32* %32, %struct.TYPE_10__* %34)
  store i32 1, i32* %3, align 4
  br label %145

36:                                               ; preds = %25
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = load i32, i32* @VM_LMODE, align 4
  %45 = call i32 @F_SET(%struct.TYPE_9__* %43, i32 %44)
  br label %52

46:                                               ; preds = %19
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %46, %42
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sle i32 %57, 1
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %130

60:                                               ; preds = %53
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @db_get(i32* %61, i32 %62, i32 0, i32** %10, i64* %7)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %130

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = load i32, i32* @VC_C1SET, align 4
  %69 = call i64 @F_ISSET(%struct.TYPE_9__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i32 [ %74, %71 ], [ 1, %75 ]
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = mul nsw i32 %78, 2
  store i32 %79, i32* %8, align 4
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load i32*, i32** %10, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @v_isempty(i32* %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %76
  store i32 1, i32* %6, align 4
  br label %100

88:                                               ; preds = %82
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %96, %88
  br label %100

100:                                              ; preds = %99, %87
  br label %101

101:                                              ; preds = %129, %100
  %102 = load i32*, i32** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %9, align 4
  %105 = call i64 @db_get(i32* %102, i32 %104, i32 0, i32** %10, i64* %7)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %130

108:                                              ; preds = %101
  %109 = load i32, i32* %6, align 4
  switch i32 %109, label %127 [
    i32 0, label %110
    i32 1, label %112
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* @INTEXT_CHECK, align 4
  br label %129

112:                                              ; preds = %108
  %113 = load i64, i64* %7, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32*, i32** %10, align 8
  %117 = load i64, i64* %7, align 8
  %118 = call i64 @v_isempty(i32* %116, i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  br label %131

125:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %126

126:                                              ; preds = %125, %115, %112
  br label %129

127:                                              ; preds = %108
  %128 = call i32 (...) @abort() #4
  unreachable

129:                                              ; preds = %126, %110
  br label %101

130:                                              ; preds = %107, %65, %59
  store i32 1, i32* %9, align 4
  br label %131

131:                                              ; preds = %130, %124
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = bitcast %struct.TYPE_8__* %140 to i8*
  %144 = bitcast %struct.TYPE_8__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %131, %31
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i64 @ISMOTION(%struct.TYPE_9__*) #1

declare dso_local i32 @v_sof(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32**, i64*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @v_isempty(i32*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
