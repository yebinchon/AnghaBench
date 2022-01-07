; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_unwire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_unwire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@L0_SIZE = common dso_local global i32 0, align 4
@L0_OFFSET = common dso_local global i32 0, align 4
@L1_SIZE = common dso_local global i32 0, align 4
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@ATTR_SW_WIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pmap_unwire: l2 %#jx is missing ATTR_SW_WIRED\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"pmap_unwire: demotion failed\00", align 1
@L2_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"pmap_unwire: Invalid l2 entry after demotion\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"pmap_unwire: l3 %#jx is missing ATTR_SW_WIRED\00", align 1
@L3_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_unwire(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = call i32 @PMAP_LOCK(%struct.TYPE_9__* %12)
  br label %14

14:                                               ; preds = %183, %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %185

18:                                               ; preds = %14
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @pmap_l0(%struct.TYPE_9__* %19, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @pmap_load(i32* %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @L0_SIZE, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @L0_OFFSET, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %25
  br label %183

38:                                               ; preds = %18
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @pmap_l0_to_l1(i32* %39, i32 %40)
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @pmap_load(i32* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @L1_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* @L1_OFFSET, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %45
  br label %183

58:                                               ; preds = %38
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @L2_SIZE, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @L2_OFFSET, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %68, %58
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32* @pmap_l1_to_l2(i32* %71, i32 %72)
  store i32* %73, i32** %10, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @pmap_load(i32* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %183

78:                                               ; preds = %70
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @pmap_load(i32* %79)
  %81 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @L2_BLOCK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %128

85:                                               ; preds = %78
  %86 = load i32*, i32** %10, align 8
  %87 = call i32 @pmap_load(i32* %86)
  %88 = load i32, i32* @ATTR_SW_WIRED, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @pmap_load(i32* %92)
  %94 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %85
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @L2_SIZE, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* @ATTR_SW_WIRED, align 4
  %108 = call i32 @pmap_clear_bits(i32* %106, i32 %107)
  %109 = load i32, i32* @L2_SIZE, align 4
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = sdiv i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, %112
  store i64 %117, i64* %115, align 8
  br label %183

118:                                              ; preds = %101, %95
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32* @pmap_demote_l2(%struct.TYPE_9__* %119, i32* %120, i32 %121)
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %118
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %78
  %129 = load i32*, i32** %10, align 8
  %130 = call i32 @pmap_load(i32* %129)
  %131 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @L2_TABLE, align 4
  %134 = icmp eq i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @KASSERT(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %140, %128
  %143 = load i32*, i32** %10, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32* @pmap_l2_to_l3(i32* %143, i32 %144)
  store i32* %145, i32** %11, align 8
  br label %146

146:                                              ; preds = %174, %142
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %182

150:                                              ; preds = %146
  %151 = load i32*, i32** %11, align 8
  %152 = call i32 @pmap_load(i32* %151)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %174

155:                                              ; preds = %150
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @pmap_load(i32* %156)
  %158 = load i32, i32* @ATTR_SW_WIRED, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32*, i32** %11, align 8
  %163 = call i32 @pmap_load(i32* %162)
  %164 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %161, %155
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* @ATTR_SW_WIRED, align 4
  %168 = call i32 @pmap_clear_bits(i32* %166, i32 %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, -1
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %165, %154
  %175 = load i32*, i32** %11, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %11, align 8
  %177 = load i64, i64* @L3_SIZE, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %5, align 4
  br label %146

182:                                              ; preds = %146
  br label %183

183:                                              ; preds = %182, %105, %77, %57, %37
  %184 = load i32, i32* %7, align 4
  store i32 %184, i32* %5, align 4
  br label %14

185:                                              ; preds = %14
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %187 = call i32 @PMAP_UNLOCK(%struct.TYPE_9__* %186)
  ret void
}

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32* @pmap_l0(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l0_to_l1(i32*, i32) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @pmap_clear_bits(i32*, i32) #1

declare dso_local i32* @pmap_demote_l2(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
