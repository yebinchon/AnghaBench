; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_GetForceMin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/etc/extr_mm.c_MM_GetForceMin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_7__* }

@MM_MAX_ALIGNMENT = common dso_local global i32 0, align 4
@ILLEGAL_BASE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MM_GetForceMin(i64 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %20 = load i64, i64* %7, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %12, align 8
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %24 = call i32 @ASSERT_COND(%struct.TYPE_6__* %23)
  br label %25

25:                                               ; preds = %29, %5
  %26 = load i32, i32* %17, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %18, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %17, align 4
  %33 = ashr i32 %32, 1
  store i32 %33, i32* %17, align 4
  br label %25

34:                                               ; preds = %25
  %35 = load i32, i32* %17, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %18, align 4
  %39 = load i32, i32* @MM_MAX_ALIGNMENT, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %34
  %42 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %42, i32* %6, align 4
  br label %189

43:                                               ; preds = %37
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @XX_LockIntrSpinlock(i32 %46)
  store i32 %47, i32* %19, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %50, i64 %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %13, align 8
  br label %55

55:                                               ; preds = %66, %43
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp sge i32 %59, %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i1 [ false, %55 ], [ %63, %58 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  store %struct.TYPE_7__* %69, %struct.TYPE_7__** %13, align 8
  br label %55

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @XX_UnlockIntrSpinlock(i32 %76, i32 %77)
  %79 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %79, i32* %6, align 4
  br label %189

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sle i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi i32 [ %89, %86 ], [ %91, %90 ]
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %94, %95
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %92
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %16, align 4
  br label %145

105:                                              ; preds = %92
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  store %struct.TYPE_7__* %108, %struct.TYPE_7__** %13, align 8
  br label %109

109:                                              ; preds = %124, %105
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %111 = icmp ne %struct.TYPE_7__* %110, null
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %115, %118
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %119, %120
  br label %122

122:                                              ; preds = %112, %109
  %123 = phi i1 [ false, %109 ], [ %121, %112 ]
  br i1 %123, label %124, label %128

124:                                              ; preds = %122
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %13, align 8
  br label %109

128:                                              ; preds = %122
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %130 = icmp ne %struct.TYPE_7__* %129, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @XX_UnlockIntrSpinlock(i32 %134, i32 %135)
  %137 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %137, i32* %6, align 4
  br label %189

138:                                              ; preds = %128
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %16, align 4
  br label %145

145:                                              ; preds = %138, %101
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i8*, i8** %11, align 8
  %149 = call i32* @CreateBusyBlock(i32 %146, i32 %147, i8* %148)
  store i32* %149, i32** %14, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @XX_UnlockIntrSpinlock(i32 %154, i32 %155)
  %157 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %157, i32* %6, align 4
  br label %189

158:                                              ; preds = %145
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i64 @CutFree(%struct.TYPE_6__* %159, i32 %160, i32 %161)
  %163 = load i64, i64* @E_OK, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %158
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = call i32 @XX_UnlockIntrSpinlock(i32 %168, i32 %169)
  %171 = load i32*, i32** %14, align 8
  %172 = call i32 @XX_Free(i32* %171)
  %173 = load i32, i32* @ILLEGAL_BASE, align 4
  store i32 %173, i32* %6, align 4
  br label %189

174:                                              ; preds = %158
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, %175
  store i32 %179, i32* %177, align 4
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @AddBusy(%struct.TYPE_6__* %180, i32* %181)
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %19, align 4
  %187 = call i32 @XX_UnlockIntrSpinlock(i32 %185, i32 %186)
  %188 = load i32, i32* %15, align 4
  store i32 %188, i32* %6, align 4
  br label %189

189:                                              ; preds = %174, %165, %151, %131, %73, %41
  %190 = load i32, i32* %6, align 4
  ret i32 %190
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_6__*) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32* @CreateBusyBlock(i32, i32, i8*) #1

declare dso_local i64 @CutFree(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i32 @AddBusy(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
