; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DeleteNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_DeleteNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i64, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@e_FM_PCD_CC_STATS_MODE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @DeleteNode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DeleteNode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = icmp ne %struct.TYPE_8__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %188

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 16
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp ne %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 16
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = call i32 @XX_Free(%struct.TYPE_8__* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 16
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %19, align 8
  br label %20

20:                                               ; preds = %13, %8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 15
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @FmPcdGetMuramHandle(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 15
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @FM_MURAM_FreeMem(i32 %29, i32* %32)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 15
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %25, %20
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 14
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @FmPcdGetMuramHandle(i32 %44)
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 14
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @FM_MURAM_FreeMem(i32 %45, i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 14
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %41, %36
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 13
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @FmPcdGetMuramHandle(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 13
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @FM_MURAM_FreeMem(i32 %61, i32* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 13
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 12
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %57, %52
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 11
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @FmPcdGetMuramHandle(i32 %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 11
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @FM_MURAM_FreeMem(i32 %79, i32* %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 11
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %75, %70
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 10
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 10
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @XX_FreeSpinlock(i32* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 10
  store i32* null, i32** %97, align 8
  br label %98

98:                                               ; preds = %91, %86
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %98
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_NONE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  store i32 %112, i32* %122, align 4
  br label %123

123:                                              ; preds = %109, %103, %98
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %154, %123
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, 1
  %131 = icmp ult i64 %126, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %124
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 7
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = icmp ne %struct.TYPE_9__* %140, null
  br i1 %141, label %142, label %153

142:                                              ; preds = %132
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 7
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load i32, i32* %3, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = call i32 @PutStatsObj(%struct.TYPE_8__* %143, %struct.TYPE_9__* %151)
  br label %153

153:                                              ; preds = %142, %132
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %124

157:                                              ; preds = %124
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = call i32 @NCSW_LIST_IsEmpty(i32* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %157
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @FmPcdGetMuramHandle(i32 %165)
  store i32 %166, i32* %4, align 4
  %167 = load i32, i32* %4, align 4
  %168 = call i32 @ASSERT_COND(i32 %167)
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 5
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @FreeStatObjects(i32* %170, i32 %171)
  br label %173

173:                                              ; preds = %162, %157
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 5
  %176 = call i32 @NCSW_LIST_Del(i32* %175)
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 4
  %179 = call i32 @ReleaseLst(i32* %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = call i32 @ReleaseLst(i32* %181)
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 2
  %185 = call i32 @ReleaseLst(i32* %184)
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = call i32 @XX_Free(%struct.TYPE_8__* %186)
  br label %188

188:                                              ; preds = %173, %7
  ret void
}

declare dso_local i32 @XX_Free(%struct.TYPE_8__*) #1

declare dso_local i32 @FM_MURAM_FreeMem(i32, i32*) #1

declare dso_local i32 @FmPcdGetMuramHandle(i32) #1

declare dso_local i32 @XX_FreeSpinlock(i32*) #1

declare dso_local i32 @PutStatsObj(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i32 @NCSW_LIST_IsEmpty(i32*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @FreeStatObjects(i32*, i32) #1

declare dso_local i32 @NCSW_LIST_Del(i32*) #1

declare dso_local i32 @ReleaseLst(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
