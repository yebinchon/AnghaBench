; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptperiphmatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptperiphmatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_match_pattern = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.periph_match_pattern }
%struct.periph_match_pattern = type { i32, i64, i64, i64, i64, i32 }
%struct.cam_periph = type { i64, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@DM_RET_ERROR = common dso_local global i32 0, align 4
@DM_RET_STOP = common dso_local global i32 0, align 4
@DM_RET_COPY = common dso_local global i32 0, align 4
@DEV_MATCH_PERIPH = common dso_local global i64 0, align 8
@PERIPH_MATCH_ANY = common dso_local global i32 0, align 4
@PERIPH_MATCH_NONE = common dso_local global i32 0, align 4
@PERIPH_MATCH_PATH = common dso_local global i32 0, align 4
@PERIPH_MATCH_TARGET = common dso_local global i32 0, align 4
@PERIPH_MATCH_LUN = common dso_local global i32 0, align 4
@PERIPH_MATCH_UNIT = common dso_local global i32 0, align 4
@PERIPH_MATCH_NAME = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_match_pattern*, i64, %struct.cam_periph*)* @xptperiphmatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptperiphmatch(%struct.dev_match_pattern* %0, i64 %1, %struct.cam_periph* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dev_match_pattern*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_periph*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.periph_match_pattern*, align 8
  store %struct.dev_match_pattern* %0, %struct.dev_match_pattern** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.cam_periph* %2, %struct.cam_periph** %7, align 8
  %11 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %12 = icmp eq %struct.cam_periph* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @DM_RET_ERROR, align 4
  store i32 %14, i32* %4, align 4
  br label %181

15:                                               ; preds = %3
  %16 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %17 = icmp eq %struct.dev_match_pattern* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %15
  %22 = load i32, i32* @DM_RET_STOP, align 4
  %23 = load i32, i32* @DM_RET_COPY, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %4, align 4
  br label %181

25:                                               ; preds = %18
  %26 = load i32, i32* @DM_RET_STOP, align 4
  store i32 %26, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %176, %25
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %179

31:                                               ; preds = %27
  %32 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %32, i64 %33
  %35 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @DEV_MATCH_PERIPH, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %176

40:                                               ; preds = %31
  %41 = load %struct.dev_match_pattern*, %struct.dev_match_pattern** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %41, i64 %42
  %44 = getelementptr inbounds %struct.dev_match_pattern, %struct.dev_match_pattern* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store %struct.periph_match_pattern* %45, %struct.periph_match_pattern** %10, align 8
  %46 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %47 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PERIPH_MATCH_ANY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* @DM_RET_COPY, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %181

56:                                               ; preds = %40
  %57 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %58 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PERIPH_MATCH_NONE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %176

63:                                               ; preds = %56
  %64 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %65 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PERIPH_MATCH_PATH, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %72 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %75 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %74, i32 0, i32 2
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %73, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %176

83:                                               ; preds = %70, %63
  %84 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %85 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @PERIPH_MATCH_TARGET, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %92 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = icmp eq %struct.TYPE_8__* %95, null
  br i1 %96, label %109, label %97

97:                                               ; preds = %90
  %98 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %99 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %102 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %101, i32 0, i32 2
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %100, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %97, %90
  br label %176

110:                                              ; preds = %97, %83
  %111 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %112 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @PERIPH_MATCH_LUN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %137

117:                                              ; preds = %110
  %118 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %119 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %121, align 8
  %123 = icmp eq %struct.TYPE_9__* %122, null
  br i1 %123, label %136, label %124

124:                                              ; preds = %117
  %125 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %126 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %129 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %128, i32 0, i32 2
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %127, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %124, %117
  br label %176

137:                                              ; preds = %124, %110
  %138 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %139 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @PERIPH_MATCH_UNIT, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %137
  %145 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %146 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %149 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %176

153:                                              ; preds = %144, %137
  %154 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %155 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PERIPH_MATCH_NAME, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %153
  %161 = load %struct.periph_match_pattern*, %struct.periph_match_pattern** %10, align 8
  %162 = getelementptr inbounds %struct.periph_match_pattern, %struct.periph_match_pattern* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.cam_periph*, %struct.cam_periph** %7, align 8
  %165 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @DEV_IDLEN, align 4
  %168 = call i64 @strncmp(i32 %163, i32 %166, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %176

171:                                              ; preds = %160, %153
  %172 = load i32, i32* @DM_RET_COPY, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %8, align 4
  store i32 %175, i32* %4, align 4
  br label %181

176:                                              ; preds = %170, %152, %136, %109, %82, %62, %39
  %177 = load i64, i64* %9, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %9, align 8
  br label %27

179:                                              ; preds = %27
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %179, %171, %51, %21, %13
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
