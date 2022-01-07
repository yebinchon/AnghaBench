; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_parse_arguments.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_parse_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_command = type { i32, %struct.g_option* }
%struct.g_option = type { i32, i8*, i32, i32* }
%struct.gctl_req = type { i32 }

@G_FLAG_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@G_TYPE_MASK = common dso_local global i32 0, align 4
@G_TYPE_MULTI = common dso_local global i32 0, align 4
@G_TYPE_BOOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Option '%c' specified twice.\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Option '%c' not specified.\00", align 1
@G_VAL_OPTIONAL = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"nargs\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"arg%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_command*, %struct.gctl_req*, i32*, i8***)* @parse_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_arguments(%struct.g_command* %0, %struct.gctl_req* %1, i32* %2, i8*** %3) #0 {
  %5 = alloca %struct.g_command*, align 8
  %6 = alloca %struct.gctl_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8***, align 8
  %9 = alloca %struct.g_option*, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [16 x i8], align 16
  store %struct.g_command* %0, %struct.g_command** %5, align 8
  store %struct.gctl_req* %1, %struct.gctl_req** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8*** %3, i8**** %8, align 8
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = load %struct.g_command*, %struct.g_command** %5, align 8
  %16 = getelementptr inbounds %struct.g_command, %struct.g_command* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @G_FLAG_VERBOSE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %23 = call i32 @strlcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 64)
  br label %24

24:                                               ; preds = %21, %4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %82, %24
  %26 = load %struct.g_command*, %struct.g_command** %5, align 8
  %27 = getelementptr inbounds %struct.g_command, %struct.g_command* %26, i32 0, i32 1
  %28 = load %struct.g_option*, %struct.g_option** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.g_option, %struct.g_option* %28, i64 %30
  store %struct.g_option* %31, %struct.g_option** %9, align 8
  %32 = load %struct.g_option*, %struct.g_option** %9, align 8
  %33 = getelementptr inbounds %struct.g_option, %struct.g_option* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %85

37:                                               ; preds = %25
  %38 = load %struct.g_option*, %struct.g_option** %9, align 8
  %39 = call i64 @G_OPT_TYPE(%struct.g_option* %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.g_option*, %struct.g_option** %9, align 8
  %44 = getelementptr inbounds %struct.g_option, %struct.g_option* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @G_TYPE_MASK, align 4
  %47 = load i32, i32* @G_TYPE_MULTI, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.g_option*, %struct.g_option** %9, align 8
  %55 = call i64 @G_OPT_TYPE(%struct.g_option* %54)
  %56 = load i64, i64* @G_TYPE_BOOL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %65, label %58

58:                                               ; preds = %37
  %59 = load %struct.g_option*, %struct.g_option** %9, align 8
  %60 = getelementptr inbounds %struct.g_option, %struct.g_option* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @G_TYPE_MULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br label %65

65:                                               ; preds = %58, %37
  %66 = phi i1 [ true, %37 ], [ %64, %58 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %70 = load %struct.g_option*, %struct.g_option** %9, align 8
  %71 = getelementptr inbounds %struct.g_option, %struct.g_option* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @strlcatf(i8* %69, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.g_option*, %struct.g_option** %9, align 8
  %75 = call i64 @G_OPT_TYPE(%struct.g_option* %74)
  %76 = load i64, i64* @G_TYPE_BOOL, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %80 = call i32 @strlcat(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 64)
  br label %81

81:                                               ; preds = %78, %65
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %25

85:                                               ; preds = %36
  br label %86

86:                                               ; preds = %135, %96, %85
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i8***, i8**** %8, align 8
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %92 = call i32 @getopt(i32 %88, i8** %90, i8* %91)
  store i32 %92, i32* %12, align 4
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %136

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  switch i32 %95, label %97 [
    i32 118, label %96
  ]

96:                                               ; preds = %94
  store i32 1, i32* @verbose, align 4
  br label %86

97:                                               ; preds = %94
  %98 = load %struct.g_command*, %struct.g_command** %5, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call %struct.g_option* @find_option(%struct.g_command* %98, i32 %99)
  store %struct.g_option* %100, %struct.g_option** %9, align 8
  %101 = load %struct.g_option*, %struct.g_option** %9, align 8
  %102 = icmp eq %struct.g_option* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = call i32 (...) @usage()
  br label %105

105:                                              ; preds = %103, %97
  %106 = load %struct.g_option*, %struct.g_option** %9, align 8
  %107 = call i32 @G_OPT_ISMULTI(%struct.g_option* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %105
  %110 = load %struct.g_option*, %struct.g_option** %9, align 8
  %111 = call i64 @G_OPT_ISDONE(%struct.g_option* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.g_option*, %struct.g_option** %9, align 8
  %115 = getelementptr inbounds %struct.g_option, %struct.g_option* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = call i32 (...) @usage()
  br label %119

119:                                              ; preds = %113, %109, %105
  %120 = load %struct.g_option*, %struct.g_option** %9, align 8
  %121 = call i32 @G_OPT_DONE(%struct.g_option* %120)
  %122 = load %struct.g_option*, %struct.g_option** %9, align 8
  %123 = call i64 @G_OPT_TYPE(%struct.g_option* %122)
  %124 = load i64, i64* @G_TYPE_BOOL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %128 = load %struct.g_option*, %struct.g_option** %9, align 8
  %129 = call i32 @set_option(%struct.gctl_req* %127, %struct.g_option* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %135

130:                                              ; preds = %119
  %131 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %132 = load %struct.g_option*, %struct.g_option** %9, align 8
  %133 = load i8*, i8** @optarg, align 8
  %134 = call i32 @set_option(%struct.gctl_req* %131, %struct.g_option* %132, i8* %133)
  br label %135

135:                                              ; preds = %130, %126
  br label %86

136:                                              ; preds = %86
  %137 = load i64, i64* @optind, align 8
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sub nsw i64 %140, %137
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load i64, i64* @optind, align 8
  %144 = load i8***, i8**** %8, align 8
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 %143
  store i8** %146, i8*** %144, align 8
  store i32 0, i32* %11, align 4
  br label %147

147:                                              ; preds = %207, %136
  %148 = load %struct.g_command*, %struct.g_command** %5, align 8
  %149 = getelementptr inbounds %struct.g_command, %struct.g_command* %148, i32 0, i32 1
  %150 = load %struct.g_option*, %struct.g_option** %149, align 8
  %151 = load i32, i32* %11, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.g_option, %struct.g_option* %150, i64 %152
  store %struct.g_option* %153, %struct.g_option** %9, align 8
  %154 = load %struct.g_option*, %struct.g_option** %9, align 8
  %155 = getelementptr inbounds %struct.g_option, %struct.g_option* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %210

159:                                              ; preds = %147
  %160 = load %struct.g_option*, %struct.g_option** %9, align 8
  %161 = call i64 @G_OPT_ISDONE(%struct.g_option* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %207

164:                                              ; preds = %159
  %165 = load %struct.g_option*, %struct.g_option** %9, align 8
  %166 = call i64 @G_OPT_TYPE(%struct.g_option* %165)
  %167 = load i64, i64* @G_TYPE_BOOL, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load %struct.g_option*, %struct.g_option** %9, align 8
  %171 = getelementptr inbounds %struct.g_option, %struct.g_option* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp eq i8* %172, null
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %177 = load %struct.g_option*, %struct.g_option** %9, align 8
  %178 = call i32 @set_option(%struct.gctl_req* %176, %struct.g_option* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %206

179:                                              ; preds = %164
  %180 = load %struct.g_option*, %struct.g_option** %9, align 8
  %181 = getelementptr inbounds %struct.g_option, %struct.g_option* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.g_option*, %struct.g_option** %9, align 8
  %186 = getelementptr inbounds %struct.g_option, %struct.g_option* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @warnx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = call i32 (...) @usage()
  br label %205

190:                                              ; preds = %179
  %191 = load %struct.g_option*, %struct.g_option** %9, align 8
  %192 = getelementptr inbounds %struct.g_option, %struct.g_option* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = load i8*, i8** @G_VAL_OPTIONAL, align 8
  %195 = icmp eq i8* %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %204

197:                                              ; preds = %190
  %198 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %199 = load %struct.g_option*, %struct.g_option** %9, align 8
  %200 = load %struct.g_option*, %struct.g_option** %9, align 8
  %201 = getelementptr inbounds %struct.g_option, %struct.g_option* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @set_option(%struct.gctl_req* %198, %struct.g_option* %199, i8* %202)
  br label %204

204:                                              ; preds = %197, %196
  br label %205

205:                                              ; preds = %204, %184
  br label %206

206:                                              ; preds = %205, %169
  br label %207

207:                                              ; preds = %206, %163
  %208 = load i32, i32* %11, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %11, align 4
  br label %147

210:                                              ; preds = %158
  %211 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %211, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 4, i32* %212)
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %232, %210
  %215 = load i32, i32* %11, align 4
  %216 = load i32*, i32** %7, align 8
  %217 = load i32, i32* %216, align 4
  %218 = icmp ult i32 %215, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %214
  %220 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @snprintf(i8* %220, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  %223 = load %struct.gctl_req*, %struct.gctl_req** %6, align 8
  %224 = getelementptr inbounds [16 x i8], [16 x i8]* %13, i64 0, i64 0
  %225 = load i8***, i8**** %8, align 8
  %226 = load i8**, i8*** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 (%struct.gctl_req*, i8*, i32, ...) @gctl_ro_param(%struct.gctl_req* %223, i8* %224, i32 -1, i8* %230)
  br label %232

232:                                              ; preds = %219
  %233 = load i32, i32* %11, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %11, align 4
  br label %214

235:                                              ; preds = %214
  ret void
}

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @G_OPT_TYPE(%struct.g_option*) #1

declare dso_local i32 @strlcatf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local %struct.g_option* @find_option(%struct.g_command*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @G_OPT_ISMULTI(%struct.g_option*) #1

declare dso_local i64 @G_OPT_ISDONE(%struct.g_option*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @G_OPT_DONE(%struct.g_option*) #1

declare dso_local i32 @set_option(%struct.gctl_req*, %struct.g_option*, i8*) #1

declare dso_local i32 @gctl_ro_param(%struct.gctl_req*, i8*, i32, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
