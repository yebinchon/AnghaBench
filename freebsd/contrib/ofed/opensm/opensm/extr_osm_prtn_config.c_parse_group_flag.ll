; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_group_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_prtn_config.c_parse_group_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_flags = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"mtu\00", align 1
@OSM_LOG_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"PARSE WARN: line %d: flag 'mtu' requires valid value - skipped\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"PARSE WARN: line %d: flag 'rate' requires valid value - skipped\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"scope\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"PARSE WARN: line %d: flag 'scope' requires valid value - skipped\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Q_Key\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"PARSE WARN: line %d: flag 'Q_Key' requires valid value - using '0'\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"TClass\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"PARSE WARN: line %d: flag 'TClass' requires valid value - using '0'\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"PARSE WARN: line %d: flag 'sl' requires valid value - skipped\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"FlowLabel\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"PARSE WARN: line %d: flag 'FlowLabel' requires valid value - skipped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.group_flags*, i8*, i8*)* @parse_group_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_group_flag(i32 %0, i32* %1, %struct.group_flags* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.group_flags*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.group_flags* %2, %struct.group_flags** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strlen(i8* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %5
  store i32 1, i32* %11, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = call i8* @strtoul(i8* %28, i8** null, i32 0)
  %30 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %31 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = icmp eq i8* %29, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %24
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @OSM_LOG(i32* %34, i32 %35, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33, %27
  br label %210

39:                                               ; preds = %5
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @strncmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = call i8* @strtoul(i8* %48, i8** null, i32 0)
  %50 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %51 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %50, i32 0, i32 5
  store i8* %49, i8** %51, align 8
  %52 = icmp eq i8* %49, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %44
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @OSM_LOG(i32* %54, i32 %55, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %209

59:                                               ; preds = %39
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @strncmp(i8* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %88, label %64

64:                                               ; preds = %59
  store i32 1, i32* %11, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = call i8* @strtoul(i8* %68, i8** null, i32 0)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %13, align 4
  %74 = icmp ugt i32 %73, 15
  br i1 %74, label %75, label %80

75:                                               ; preds = %72, %67, %64
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @OSM_LOG(i32* %76, i32 %77, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  br label %87

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = shl i32 1, %81
  %83 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %84 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %80, %75
  br label %208

88:                                               ; preds = %59
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @strlen(i8* %90)
  %92 = call i32 @strncmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %109, label %94

94:                                               ; preds = %88
  store i32 1, i32* %11, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i8*, i8** %10, align 8
  %99 = call i8* @strtoul(i8* %98, i8** null, i32 0)
  %100 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %101 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %100, i32 0, i32 4
  store i8* %99, i8** %101, align 8
  %102 = icmp eq i8* %99, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %97, %94
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @OSM_LOG(i32* %104, i32 %105, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %103, %97
  br label %207

109:                                              ; preds = %88
  %110 = load i8*, i8** %9, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @strlen(i8* %111)
  %113 = call i32 @strncmp(i8* %110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %109
  store i32 1, i32* %11, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i8*, i8** %10, align 8
  %120 = call i8* @strtoul(i8* %119, i8** null, i32 0)
  %121 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %122 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = icmp eq i8* %120, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %118, %115
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @OSM_LOG(i32* %125, i32 %126, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %124, %118
  br label %206

130:                                              ; preds = %109
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %167, label %135

135:                                              ; preds = %130
  store i32 1, i32* %11, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = load i8*, i8** %10, align 8
  %140 = load i8, i8* %139, align 1
  %141 = icmp ne i8 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %138
  %143 = load i8*, i8** %10, align 8
  %144 = call i8* @strtoul(i8* %143, i8** %15, i32 0)
  %145 = ptrtoint i8* %144 to i32
  store i32 %145, i32* %14, align 4
  %146 = icmp ugt i32 %145, 15
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = load i8*, i8** %15, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %147
  %153 = load i8*, i8** %15, align 8
  %154 = load i8, i8* %153, align 1
  %155 = call i32 @isspace(i8 signext %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152, %142, %138, %135
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @OSM_LOG(i32* %158, i32 %159, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %160)
  br label %166

162:                                              ; preds = %152, %147
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %165 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %157
  br label %205

167:                                              ; preds = %130
  %168 = load i8*, i8** %9, align 8
  %169 = load i32, i32* %12, align 4
  %170 = call i32 @strncmp(i8* %168, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %204, label %172

172:                                              ; preds = %167
  store i32 1, i32* %11, align 4
  %173 = load i8*, i8** %10, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %194

175:                                              ; preds = %172
  %176 = load i8*, i8** %10, align 8
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i8*, i8** %10, align 8
  %181 = call i8* @strtoul(i8* %180, i8** %17, i32 0)
  %182 = ptrtoint i8* %181 to i32
  store i32 %182, i32* %16, align 4
  %183 = icmp sgt i32 %182, 1048575
  br i1 %183, label %194, label %184

184:                                              ; preds = %179
  %185 = load i8*, i8** %17, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %184
  %190 = load i8*, i8** %17, align 8
  %191 = load i8, i8* %190, align 1
  %192 = call i32 @isspace(i8 signext %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %189, %179, %175, %172
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* @OSM_LOG_VERBOSE, align 4
  %197 = load i32, i32* %6, align 4
  %198 = call i32 @OSM_LOG(i32* %195, i32 %196, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  br label %203

199:                                              ; preds = %189, %184
  %200 = load i32, i32* %16, align 4
  %201 = load %struct.group_flags*, %struct.group_flags** %8, align 8
  %202 = getelementptr inbounds %struct.group_flags, %struct.group_flags* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %194
  br label %204

204:                                              ; preds = %203, %167
  br label %205

205:                                              ; preds = %204, %166
  br label %206

206:                                              ; preds = %205, %129
  br label %207

207:                                              ; preds = %206, %108
  br label %208

208:                                              ; preds = %207, %87
  br label %209

209:                                              ; preds = %208, %58
  br label %210

210:                                              ; preds = %209, %38
  %211 = load i32, i32* %11, align 4
  ret i32 %211
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*, i32) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
