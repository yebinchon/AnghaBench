; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_parse_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_parse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_event_desc = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_SAMPLE_COUNT = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"umask\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"offcore_rsp\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"cmask\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"inv\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"edge\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ldlat\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"fc_mask\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"ch_mask\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"config1\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"l3_thread_mask\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"l3_slice_mask\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"PMUDEBUG\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"unrecognized kvpair: %s:%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmu_event_desc*, i8*)* @pmu_parse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_parse_event(%struct.pmu_event_desc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmu_event_desc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.pmu_event_desc* %0, %struct.pmu_event_desc** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  store i32 %16, i32* %3, align 4
  br label %206

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %20 = call i32 @bzero(%struct.pmu_event_desc* %19, i32 120)
  %21 = load i8*, i8** @DEFAULT_SAMPLE_COUNT, align 8
  %22 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %23 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %22, i32 0, i32 13
  store i8* %21, i8** %23, align 8
  %24 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %25 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  br label %26

26:                                               ; preds = %202, %17
  %27 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %203

29:                                               ; preds = %26
  %30 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = call i8* @strtol(i8* %41, i32* null, i32 16)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %45 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %202

46:                                               ; preds = %35
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = call i8* @strtol(i8* %51, i32* null, i32 16)
  %53 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %54 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %53, i32 0, i32 14
  store i8* %52, i8** %54, align 8
  br label %201

55:                                               ; preds = %46
  %56 = load i8*, i8** %8, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i8*, i8** %9, align 8
  %61 = call i8* @strtol(i8* %60, i32* null, i32 10)
  %62 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %63 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  br label %200

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i8*, i8** %9, align 8
  %70 = call i8* @strtol(i8* %69, i32* null, i32 16)
  %71 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %72 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %71, i32 0, i32 12
  store i8* %70, i8** %72, align 8
  br label %199

73:                                               ; preds = %64
  %74 = load i8*, i8** %8, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i8*, i8** %9, align 8
  %79 = call i8* @strtol(i8* %78, i32* null, i32 10)
  %80 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %81 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %80, i32 0, i32 11
  store i8* %79, i8** %81, align 8
  br label %198

82:                                               ; preds = %73
  %83 = load i8*, i8** %8, align 8
  %84 = call i64 @strcmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %9, align 8
  %88 = call i8* @strtol(i8* %87, i32* null, i32 10)
  %89 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %90 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  br label %197

91:                                               ; preds = %82
  %92 = load i8*, i8** %8, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = call i8* @strtol(i8* %96, i32* null, i32 10)
  %98 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %99 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %98, i32 0, i32 9
  store i8* %97, i8** %99, align 8
  br label %196

100:                                              ; preds = %91
  %101 = load i8*, i8** %8, align 8
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i8*, i8** %9, align 8
  %106 = call i8* @strtol(i8* %105, i32* null, i32 10)
  %107 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %108 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  br label %195

109:                                              ; preds = %100
  %110 = load i8*, i8** %8, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i8*, i8** %9, align 8
  %115 = call i8* @strtol(i8* %114, i32* null, i32 16)
  %116 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %117 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %116, i32 0, i32 7
  store i8* %115, i8** %117, align 8
  br label %194

118:                                              ; preds = %109
  %119 = load i8*, i8** %8, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8*, i8** %9, align 8
  %124 = call i8* @strtol(i8* %123, i32* null, i32 16)
  %125 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %126 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  br label %193

127:                                              ; preds = %118
  %128 = load i8*, i8** %8, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8*, i8** %9, align 8
  %133 = call i8* @strtol(i8* %132, i32* null, i32 16)
  %134 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %135 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %134, i32 0, i32 5
  store i8* %133, i8** %135, align 8
  br label %192

136:                                              ; preds = %127
  %137 = load i8*, i8** %8, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = load i8*, i8** %9, align 8
  %142 = call i8* @strtol(i8* %141, i32* null, i32 16)
  %143 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %144 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  br label %191

145:                                              ; preds = %136
  %146 = load i8*, i8** %8, align 8
  %147 = call i64 @strcmp(i8* %146, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load i8*, i8** %9, align 8
  %151 = call i8* @strtol(i8* %150, i32* null, i32 16)
  %152 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %153 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  br label %190

154:                                              ; preds = %145
  %155 = load i8*, i8** %8, align 8
  %156 = call i64 @strcmp(i8* %155, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0))
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = load i8*, i8** %9, align 8
  %160 = call i8* @strtol(i8* %159, i32* null, i32 16)
  %161 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %162 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  br label %189

163:                                              ; preds = %154
  %164 = load i8*, i8** %8, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i8*, i8** %9, align 8
  %169 = call i8* @strtol(i8* %168, i32* null, i32 16)
  %170 = load %struct.pmu_event_desc*, %struct.pmu_event_desc** %4, align 8
  %171 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  br label %188

172:                                              ; preds = %163
  %173 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  store i8* %173, i8** %11, align 8
  %174 = load i8*, i8** %11, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %172
  %177 = load i8*, i8** %11, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i8*, i8** %9, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i8*, i8** %8, align 8
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %184, i8* %185)
  br label %187

187:                                              ; preds = %183, %180, %176, %172
  br label %188

188:                                              ; preds = %187, %167
  br label %189

189:                                              ; preds = %188, %158
  br label %190

190:                                              ; preds = %189, %149
  br label %191

191:                                              ; preds = %190, %140
  br label %192

192:                                              ; preds = %191, %131
  br label %193

193:                                              ; preds = %192, %122
  br label %194

194:                                              ; preds = %193, %113
  br label %195

195:                                              ; preds = %194, %104
  br label %196

196:                                              ; preds = %195, %95
  br label %197

197:                                              ; preds = %196, %86
  br label %198

198:                                              ; preds = %197, %77
  br label %199

199:                                              ; preds = %198, %68
  br label %200

200:                                              ; preds = %199, %59
  br label %201

201:                                              ; preds = %200, %50
  br label %202

202:                                              ; preds = %201, %40
  br label %26

203:                                              ; preds = %26
  %204 = load i8*, i8** %10, align 8
  %205 = call i32 @free(i8* %204)
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %203, %15
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @bzero(%struct.pmu_event_desc*, i32) #1

declare dso_local i8* @strsep(i8**, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
