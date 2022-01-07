; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_match_cfg_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_match_cfg_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection_info = type { i8*, i8*, i8*, i8*, i32, i8* }

@.str = private unnamed_addr constant [31 x i8] c"checking syntax for 'Match %s'\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"checking match for '%s' user %s host %s addr %s laddr %s lport %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"'all' cannot be combined with other Match attributes\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Missing Match criteria for %s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"user %.100s matched 'User %.100s' at line %d\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"connection from %.100s matched 'Host %.100s' at line %d\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"connection from %.100s matched 'Address %.100s' at line %d\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"localaddress\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"LocalAddress\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"laddr\00", align 1
@.str.21 = private unnamed_addr constant [64 x i8] c"connection from %.100s matched 'LocalAddress %.100s' at line %d\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"localport\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Invalid LocalPort '%s' on Match line\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"LocalPort\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"lport\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"connection from %.100s matched 'LocalPort %d' at line %d\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"rdomain\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"user %.100s matched 'RDomain %.100s' at line %d\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Unsupported Match attribute %s\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"One or more attributes required for Match\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"match %sfound\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32, %struct.connection_info*)* @match_cfg_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_cfg_line(i8** %0, i32 %1, %struct.connection_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.connection_info* %2, %struct.connection_info** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %13, align 8
  %16 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %17 = icmp eq %struct.connection_info* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %13, align 8
  %20 = call i32 (i8*, i8*, ...) @debug3(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  br label %71

21:                                               ; preds = %3
  %22 = load i8*, i8** %13, align 8
  %23 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %24 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %29 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  br label %32

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %31 ]
  %34 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %35 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %40 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  br label %43

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i8* [ %41, %38 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %42 ]
  %45 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %46 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %51 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %49
  %55 = phi i8* [ %52, %49 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %53 ]
  %56 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %57 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %56, i32 0, i32 3
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %62 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i8* [ %63, %60 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %64 ]
  %67 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %68 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, i8*, ...) @debug3(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %33, i8* %44, i8* %55, i8* %66, i32 %69)
  br label %71

71:                                               ; preds = %65, %18
  br label %72

72:                                               ; preds = %339, %313, %278, %240, %209, %178, %153, %122, %71
  %73 = call i8* @strdelim(i8** %13)
  store i8* %73, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load i8*, i8** %12, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %75, %72
  %81 = phi i1 [ false, %72 ], [ %79, %75 ]
  br i1 %81, label %82, label %340

82:                                               ; preds = %80
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = call i64 @strcasecmp(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 1
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = call i8* @strdelim(i8** %13)
  store i8* %92, i8** %11, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i8*, i8** %11, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %88
  %100 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %358

101:                                              ; preds = %94, %91
  %102 = load i8*, i8** %13, align 8
  %103 = load i8**, i8*** %5, align 8
  store i8* %102, i8** %103, align 8
  store i32 1, i32* %4, align 4
  br label %358

104:                                              ; preds = %82
  %105 = call i8* @strdelim(i8** %13)
  store i8* %105, i8** %11, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107, %104
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %113)
  store i32 -1, i32* %4, align 4
  br label %358

115:                                              ; preds = %107
  %116 = load i8*, i8** %12, align 8
  %117 = call i64 @strcasecmp(i8* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %146

119:                                              ; preds = %115
  %120 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %121 = icmp eq %struct.connection_info* %120, null
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %8, align 4
  br label %72

123:                                              ; preds = %119
  %124 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %125 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = icmp eq i8* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = call i32 @match_test_missing_fatal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %123
  %131 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %132 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @match_pattern_list(i8* %133, i8* %134, i32 0)
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 0, i32* %8, align 4
  br label %145

138:                                              ; preds = %130
  %139 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %140 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %141, i8* %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %137
  br label %339

146:                                              ; preds = %115
  %147 = load i8*, i8** %12, align 8
  %148 = call i64 @strcasecmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %171

150:                                              ; preds = %146
  %151 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %152 = icmp eq %struct.connection_info* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 0, i32* %8, align 4
  br label %72

154:                                              ; preds = %150
  %155 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %156 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = call i32 @match_test_missing_fatal(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %154
  %162 = load i8*, i8** %11, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %165 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @match_cfg_line_group(i8* %162, i32 %163, i8* %166)
  switch i32 %167, label %170 [
    i32 -1, label %168
    i32 0, label %169
  ]

168:                                              ; preds = %161
  store i32 -1, i32* %4, align 4
  br label %358

169:                                              ; preds = %161
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %169, %161
  br label %338

171:                                              ; preds = %146
  %172 = load i8*, i8** %12, align 8
  %173 = call i64 @strcasecmp(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %202

175:                                              ; preds = %171
  %176 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %177 = icmp eq %struct.connection_info* %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 0, i32* %8, align 4
  br label %72

179:                                              ; preds = %175
  %180 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %181 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = call i32 @match_test_missing_fatal(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %179
  %187 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %188 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = load i8*, i8** %11, align 8
  %191 = call i32 @match_hostname(i8* %189, i8* %190)
  %192 = icmp ne i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  store i32 0, i32* %8, align 4
  br label %201

194:                                              ; preds = %186
  %195 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %196 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %195, i32 0, i32 1
  %197 = load i8*, i8** %196, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0), i8* %197, i8* %198, i32 %199)
  br label %201

201:                                              ; preds = %194, %193
  br label %337

202:                                              ; preds = %171
  %203 = load i8*, i8** %12, align 8
  %204 = call i64 @strcasecmp(i8* %203, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %206, label %233

206:                                              ; preds = %202
  %207 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %208 = icmp eq %struct.connection_info* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  store i32 0, i32* %8, align 4
  br label %72

210:                                              ; preds = %206
  %211 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %212 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 @match_test_missing_fatal(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %210
  %218 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %219 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = call i32 @addr_match_list(i8* %220, i8* %221)
  switch i32 %222, label %232 [
    i32 1, label %223
    i32 0, label %230
    i32 -1, label %230
    i32 -2, label %231
  ]

223:                                              ; preds = %217
  %224 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %225 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = load i32, i32* %6, align 4
  %229 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0), i8* %226, i8* %227, i32 %228)
  br label %232

230:                                              ; preds = %217, %217
  store i32 0, i32* %8, align 4
  br label %232

231:                                              ; preds = %217
  store i32 -1, i32* %4, align 4
  br label %358

232:                                              ; preds = %217, %230, %223
  br label %336

233:                                              ; preds = %202
  %234 = load i8*, i8** %12, align 8
  %235 = call i64 @strcasecmp(i8* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %264

237:                                              ; preds = %233
  %238 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %239 = icmp eq %struct.connection_info* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i32 0, i32* %8, align 4
  br label %72

241:                                              ; preds = %237
  %242 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %243 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = icmp eq i8* %244, null
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = call i32 @match_test_missing_fatal(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %241
  %249 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %250 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %249, i32 0, i32 3
  %251 = load i8*, i8** %250, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = call i32 @addr_match_list(i8* %251, i8* %252)
  switch i32 %253, label %263 [
    i32 1, label %254
    i32 0, label %261
    i32 -1, label %261
    i32 -2, label %262
  ]

254:                                              ; preds = %248
  %255 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %256 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %255, i32 0, i32 3
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** %11, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.21, i64 0, i64 0), i8* %257, i8* %258, i32 %259)
  br label %263

261:                                              ; preds = %248, %248
  store i32 0, i32* %8, align 4
  br label %263

262:                                              ; preds = %248
  store i32 -1, i32* %4, align 4
  br label %358

263:                                              ; preds = %248, %261, %254
  br label %335

264:                                              ; preds = %233
  %265 = load i8*, i8** %12, align 8
  %266 = call i64 @strcasecmp(i8* %265, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %301

268:                                              ; preds = %264
  %269 = load i8*, i8** %11, align 8
  %270 = call i32 @a2port(i8* %269)
  store i32 %270, i32* %10, align 4
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i8*, i8** %11, align 8
  %274 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8* %273)
  store i32 -1, i32* %4, align 4
  br label %358

275:                                              ; preds = %268
  %276 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %277 = icmp eq %struct.connection_info* %276, null
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 0, i32* %8, align 4
  br label %72

279:                                              ; preds = %275
  %280 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %281 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %279
  %285 = call i32 @match_test_missing_fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %279
  %287 = load i32, i32* %10, align 4
  %288 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %289 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = icmp eq i32 %287, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %286
  %293 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %294 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %293, i32 0, i32 3
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* %10, align 4
  %297 = load i32, i32* %6, align 4
  %298 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i8* %295, i32 %296, i32 %297)
  br label %300

299:                                              ; preds = %286
  store i32 0, i32* %8, align 4
  br label %300

300:                                              ; preds = %299, %292
  br label %334

301:                                              ; preds = %264
  %302 = load i8*, i8** %12, align 8
  %303 = call i64 @strcasecmp(i8* %302, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0))
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %330

305:                                              ; preds = %301
  %306 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %307 = icmp eq %struct.connection_info* %306, null
  br i1 %307, label %313, label %308

308:                                              ; preds = %305
  %309 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %310 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = icmp eq i8* %311, null
  br i1 %312, label %313, label %314

313:                                              ; preds = %308, %305
  store i32 0, i32* %8, align 4
  br label %72

314:                                              ; preds = %308
  %315 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %316 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %315, i32 0, i32 5
  %317 = load i8*, i8** %316, align 8
  %318 = load i8*, i8** %11, align 8
  %319 = call i32 @match_pattern_list(i8* %317, i8* %318, i32 0)
  %320 = icmp ne i32 %319, 1
  br i1 %320, label %321, label %322

321:                                              ; preds = %314
  store i32 0, i32* %8, align 4
  br label %329

322:                                              ; preds = %314
  %323 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %324 = getelementptr inbounds %struct.connection_info, %struct.connection_info* %323, i32 0, i32 5
  %325 = load i8*, i8** %324, align 8
  %326 = load i8*, i8** %11, align 8
  %327 = load i32, i32* %6, align 4
  %328 = call i32 (i8*, i8*, ...) @debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i8* %325, i8* %326, i32 %327)
  br label %329

329:                                              ; preds = %322, %321
  br label %333

330:                                              ; preds = %301
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i8* %331)
  store i32 -1, i32* %4, align 4
  br label %358

333:                                              ; preds = %329
  br label %334

334:                                              ; preds = %333, %300
  br label %335

335:                                              ; preds = %334, %263
  br label %336

336:                                              ; preds = %335, %232
  br label %337

337:                                              ; preds = %336, %201
  br label %338

338:                                              ; preds = %337, %170
  br label %339

339:                                              ; preds = %338, %145
  br label %72

340:                                              ; preds = %80
  %341 = load i32, i32* %9, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %340
  %344 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %358

345:                                              ; preds = %340
  %346 = load %struct.connection_info*, %struct.connection_info** %7, align 8
  %347 = icmp ne %struct.connection_info* %346, null
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load i32, i32* %8, align 4
  %350 = icmp ne i32 %349, 0
  %351 = zext i1 %350 to i64
  %352 = select i1 %350, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0)
  %353 = call i32 (i8*, i8*, ...) @debug3(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8* %352)
  br label %354

354:                                              ; preds = %348, %345
  %355 = load i8*, i8** %13, align 8
  %356 = load i8**, i8*** %5, align 8
  store i8* %355, i8** %356, align 8
  %357 = load i32, i32* %8, align 4
  store i32 %357, i32* %4, align 4
  br label %358

358:                                              ; preds = %354, %343, %330, %272, %262, %231, %168, %112, %101, %99
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @debug3(i8*, i8*, ...) #1

declare dso_local i8* @strdelim(i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @match_test_missing_fatal(i8*, i8*) #1

declare dso_local i32 @match_pattern_list(i8*, i8*, i32) #1

declare dso_local i32 @debug(i8*, i8*, ...) #1

declare dso_local i32 @match_cfg_line_group(i8*, i32, i8*) #1

declare dso_local i32 @match_hostname(i8*, i8*) #1

declare dso_local i32 @addr_match_list(i8*, i8*) #1

declare dso_local i32 @a2port(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
