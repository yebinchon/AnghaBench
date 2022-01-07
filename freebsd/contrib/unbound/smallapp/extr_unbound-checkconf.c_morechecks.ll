; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_morechecks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-checkconf.c_morechecks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_file = type { i64, i32, i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"stub-host\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"forward-host\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"verbosity value < 0\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"num_threads value weird\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ip4 and ip6 are both disabled, pointless\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"cannot prefer and disable ip6, pointless\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"udp and tcp are both disabled, pointless\00", align 1
@.str.7 = private unnamed_addr constant [88 x i8] c"edns-buffer-size larger than msg-buffer-size, answers will not fit in processing buffer\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"chootdir %s has trailing slash '/' please remove.\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"bad chroot directory\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"bad chdir directory\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"pidfile directory does not exist\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"logfile directory does not exist\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"file with root-hints\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"trust-anchor-file\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"auto-trust-anchor-file\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"trusted-keys-file\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"dlv-anchor-file\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"iterator\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"validator iterator\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"dns64 validator iterator\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"dns64 iterator\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"respip iterator\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"respip validator iterator\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"module conf '%s' is not known to work\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"server-key-file\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"server-cert-file\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"control-key-file: \22%s\22 does not exist\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"control-cert-file: \22%s\22 does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.config_file*)* @morechecks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @morechecks(%struct.config_file* %0) #0 {
  %2 = alloca %struct.config_file*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.config_file* %0, %struct.config_file** %2, align 8
  %8 = load %struct.config_file*, %struct.config_file** %2, align 8
  %9 = getelementptr inbounds %struct.config_file, %struct.config_file* %8, i32 0, i32 29
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @warn_hosts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.config_file*, %struct.config_file** %2, align 8
  %13 = getelementptr inbounds %struct.config_file, %struct.config_file* %12, i32 0, i32 28
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @warn_hosts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.config_file*, %struct.config_file** %2, align 8
  %17 = call i32 @interfacechecks(%struct.config_file* %16)
  %18 = load %struct.config_file*, %struct.config_file** %2, align 8
  %19 = call i32 @aclchecks(%struct.config_file* %18)
  %20 = load %struct.config_file*, %struct.config_file** %2, align 8
  %21 = call i32 @tcpconnlimitchecks(%struct.config_file* %20)
  %22 = load %struct.config_file*, %struct.config_file** %2, align 8
  %23 = getelementptr inbounds %struct.config_file, %struct.config_file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.config_file*, %struct.config_file** %2, align 8
  %30 = getelementptr inbounds %struct.config_file, %struct.config_file* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.config_file*, %struct.config_file** %2, align 8
  %35 = getelementptr inbounds %struct.config_file, %struct.config_file* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %36, 10000
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28
  %39 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.config_file*, %struct.config_file** %2, align 8
  %42 = getelementptr inbounds %struct.config_file, %struct.config_file* %41, i32 0, i32 27
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %40
  %46 = load %struct.config_file*, %struct.config_file** %2, align 8
  %47 = getelementptr inbounds %struct.config_file, %struct.config_file* %46, i32 0, i32 26
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45, %40
  %53 = load %struct.config_file*, %struct.config_file** %2, align 8
  %54 = getelementptr inbounds %struct.config_file, %struct.config_file* %53, i32 0, i32 26
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = load %struct.config_file*, %struct.config_file** %2, align 8
  %59 = getelementptr inbounds %struct.config_file, %struct.config_file* %58, i32 0, i32 25
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %57, %52
  %65 = load %struct.config_file*, %struct.config_file** %2, align 8
  %66 = getelementptr inbounds %struct.config_file, %struct.config_file* %65, i32 0, i32 24
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %64
  %70 = load %struct.config_file*, %struct.config_file** %2, align 8
  %71 = getelementptr inbounds %struct.config_file, %struct.config_file* %70, i32 0, i32 23
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %69, %64
  %77 = load %struct.config_file*, %struct.config_file** %2, align 8
  %78 = getelementptr inbounds %struct.config_file, %struct.config_file* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.config_file*, %struct.config_file** %2, align 8
  %81 = getelementptr inbounds %struct.config_file, %struct.config_file* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = icmp sgt i64 %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %76
  %87 = load %struct.config_file*, %struct.config_file** %2, align 8
  %88 = getelementptr inbounds %struct.config_file, %struct.config_file* %87, i32 0, i32 4
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %86
  %92 = load %struct.config_file*, %struct.config_file** %2, align 8
  %93 = getelementptr inbounds %struct.config_file, %struct.config_file* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load %struct.config_file*, %struct.config_file** %2, align 8
  %101 = getelementptr inbounds %struct.config_file, %struct.config_file* %100, i32 0, i32 4
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.config_file*, %struct.config_file** %2, align 8
  %104 = getelementptr inbounds %struct.config_file, %struct.config_file* %103, i32 0, i32 4
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %102, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 47
  br i1 %112, label %113, label %118

113:                                              ; preds = %99
  %114 = load %struct.config_file*, %struct.config_file** %2, align 8
  %115 = getelementptr inbounds %struct.config_file, %struct.config_file* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %113, %99, %91, %86
  %119 = load %struct.config_file*, %struct.config_file** %2, align 8
  %120 = getelementptr inbounds %struct.config_file, %struct.config_file* %119, i32 0, i32 4
  %121 = load i8*, i8** %120, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.config_file*, %struct.config_file** %2, align 8
  %125 = getelementptr inbounds %struct.config_file, %struct.config_file* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load %struct.config_file*, %struct.config_file** %2, align 8
  %133 = getelementptr inbounds %struct.config_file, %struct.config_file* %132, i32 0, i32 4
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @is_dir(i8* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %131, %123, %118
  %140 = load %struct.config_file*, %struct.config_file** %2, align 8
  %141 = getelementptr inbounds %struct.config_file, %struct.config_file* %140, i32 0, i32 5
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %171

144:                                              ; preds = %139
  %145 = load %struct.config_file*, %struct.config_file** %2, align 8
  %146 = getelementptr inbounds %struct.config_file, %struct.config_file* %145, i32 0, i32 5
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %144
  %153 = load %struct.config_file*, %struct.config_file** %2, align 8
  %154 = getelementptr inbounds %struct.config_file, %struct.config_file* %153, i32 0, i32 5
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.config_file*, %struct.config_file** %2, align 8
  %157 = call i8* @fname_after_chroot(i8* %155, %struct.config_file* %156, i32 0)
  store i8* %157, i8** %3, align 8
  %158 = load i8*, i8** %3, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %152
  %161 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %162

162:                                              ; preds = %160, %152
  %163 = load i8*, i8** %3, align 8
  %164 = call i32 @is_dir(i8* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %168, label %166

166:                                              ; preds = %162
  %167 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %168

168:                                              ; preds = %166, %162
  %169 = load i8*, i8** %3, align 8
  %170 = call i32 @free(i8* %169)
  br label %171

171:                                              ; preds = %168, %144, %139
  %172 = load %struct.config_file*, %struct.config_file** %2, align 8
  %173 = getelementptr inbounds %struct.config_file, %struct.config_file* %172, i32 0, i32 4
  %174 = load i8*, i8** %173, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %184

176:                                              ; preds = %171
  %177 = load %struct.config_file*, %struct.config_file** %2, align 8
  %178 = getelementptr inbounds %struct.config_file, %struct.config_file* %177, i32 0, i32 4
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 0
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %176, %171
  %185 = load %struct.config_file*, %struct.config_file** %2, align 8
  %186 = getelementptr inbounds %struct.config_file, %struct.config_file* %185, i32 0, i32 5
  %187 = load i8*, i8** %186, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %277

189:                                              ; preds = %184
  %190 = load %struct.config_file*, %struct.config_file** %2, align 8
  %191 = getelementptr inbounds %struct.config_file, %struct.config_file* %190, i32 0, i32 5
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %277

197:                                              ; preds = %189, %176
  %198 = load %struct.config_file*, %struct.config_file** %2, align 8
  %199 = getelementptr inbounds %struct.config_file, %struct.config_file* %198, i32 0, i32 6
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %244

202:                                              ; preds = %197
  %203 = load %struct.config_file*, %struct.config_file** %2, align 8
  %204 = getelementptr inbounds %struct.config_file, %struct.config_file* %203, i32 0, i32 6
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %244

210:                                              ; preds = %202
  %211 = load %struct.config_file*, %struct.config_file** %2, align 8
  %212 = getelementptr inbounds %struct.config_file, %struct.config_file* %211, i32 0, i32 6
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 47
  br i1 %217, label %218, label %223

218:                                              ; preds = %210
  %219 = load %struct.config_file*, %struct.config_file** %2, align 8
  %220 = getelementptr inbounds %struct.config_file, %struct.config_file* %219, i32 0, i32 6
  %221 = load i8*, i8** %220, align 8
  %222 = call i8* @strdup(i8* %221)
  br label %229

223:                                              ; preds = %210
  %224 = load %struct.config_file*, %struct.config_file** %2, align 8
  %225 = getelementptr inbounds %struct.config_file, %struct.config_file* %224, i32 0, i32 6
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.config_file*, %struct.config_file** %2, align 8
  %228 = call i8* @fname_after_chroot(i8* %226, %struct.config_file* %227, i32 1)
  br label %229

229:                                              ; preds = %223, %218
  %230 = phi i8* [ %222, %218 ], [ %228, %223 ]
  store i8* %230, i8** %4, align 8
  %231 = load i8*, i8** %4, align 8
  %232 = call i8* @basedir(i8* %231)
  store i8* %232, i8** %5, align 8
  %233 = load i8*, i8** %5, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %235, label %241

235:                                              ; preds = %229
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @is_dir(i8* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %241, label %239

239:                                              ; preds = %235
  %240 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %241

241:                                              ; preds = %239, %235, %229
  %242 = load i8*, i8** %4, align 8
  %243 = call i32 @free(i8* %242)
  br label %244

244:                                              ; preds = %241, %202, %197
  %245 = load %struct.config_file*, %struct.config_file** %2, align 8
  %246 = getelementptr inbounds %struct.config_file, %struct.config_file* %245, i32 0, i32 7
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %276

249:                                              ; preds = %244
  %250 = load %struct.config_file*, %struct.config_file** %2, align 8
  %251 = getelementptr inbounds %struct.config_file, %struct.config_file* %250, i32 0, i32 7
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 0
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %249
  %258 = load %struct.config_file*, %struct.config_file** %2, align 8
  %259 = getelementptr inbounds %struct.config_file, %struct.config_file* %258, i32 0, i32 7
  %260 = load i8*, i8** %259, align 8
  %261 = load %struct.config_file*, %struct.config_file** %2, align 8
  %262 = call i8* @fname_after_chroot(i8* %260, %struct.config_file* %261, i32 1)
  store i8* %262, i8** %6, align 8
  %263 = load i8*, i8** %6, align 8
  %264 = call i8* @basedir(i8* %263)
  store i8* %264, i8** %7, align 8
  %265 = load i8*, i8** %7, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %273

267:                                              ; preds = %257
  %268 = load i8*, i8** %7, align 8
  %269 = call i32 @is_dir(i8* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %267
  %272 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %267, %257
  %274 = load i8*, i8** %6, align 8
  %275 = call i32 @free(i8* %274)
  br label %276

276:                                              ; preds = %273, %249, %244
  br label %277

277:                                              ; preds = %276, %189, %184
  %278 = load %struct.config_file*, %struct.config_file** %2, align 8
  %279 = getelementptr inbounds %struct.config_file, %struct.config_file* %278, i32 0, i32 22
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.config_file*, %struct.config_file** %2, align 8
  %282 = getelementptr inbounds %struct.config_file, %struct.config_file* %281, i32 0, i32 4
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.config_file*, %struct.config_file** %2, align 8
  %285 = call i32 @check_chroot_filelist(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %280, i8* %283, %struct.config_file* %284)
  %286 = load %struct.config_file*, %struct.config_file** %2, align 8
  %287 = getelementptr inbounds %struct.config_file, %struct.config_file* %286, i32 0, i32 21
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.config_file*, %struct.config_file** %2, align 8
  %290 = getelementptr inbounds %struct.config_file, %struct.config_file* %289, i32 0, i32 4
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.config_file*, %struct.config_file** %2, align 8
  %293 = call i32 @check_chroot_filelist(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %288, i8* %291, %struct.config_file* %292)
  %294 = load %struct.config_file*, %struct.config_file** %2, align 8
  %295 = getelementptr inbounds %struct.config_file, %struct.config_file* %294, i32 0, i32 20
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.config_file*, %struct.config_file** %2, align 8
  %298 = getelementptr inbounds %struct.config_file, %struct.config_file* %297, i32 0, i32 4
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.config_file*, %struct.config_file** %2, align 8
  %301 = call i32 @check_chroot_filelist(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 %296, i8* %299, %struct.config_file* %300)
  %302 = load %struct.config_file*, %struct.config_file** %2, align 8
  %303 = getelementptr inbounds %struct.config_file, %struct.config_file* %302, i32 0, i32 19
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.config_file*, %struct.config_file** %2, align 8
  %306 = getelementptr inbounds %struct.config_file, %struct.config_file* %305, i32 0, i32 4
  %307 = load i8*, i8** %306, align 8
  %308 = load %struct.config_file*, %struct.config_file** %2, align 8
  %309 = call i32 @check_chroot_filelist_wild(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %304, i8* %307, %struct.config_file* %308)
  %310 = load %struct.config_file*, %struct.config_file** %2, align 8
  %311 = getelementptr inbounds %struct.config_file, %struct.config_file* %310, i32 0, i32 18
  %312 = load %struct.config_file*, %struct.config_file** %2, align 8
  %313 = getelementptr inbounds %struct.config_file, %struct.config_file* %312, i32 0, i32 4
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.config_file*, %struct.config_file** %2, align 8
  %316 = call i32 @check_chroot_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32* %311, i8* %314, %struct.config_file* %315)
  %317 = load %struct.config_file*, %struct.config_file** %2, align 8
  %318 = getelementptr inbounds %struct.config_file, %struct.config_file* %317, i32 0, i32 4
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @free(i8* %319)
  %321 = load %struct.config_file*, %struct.config_file** %2, align 8
  %322 = getelementptr inbounds %struct.config_file, %struct.config_file* %321, i32 0, i32 4
  store i8* null, i8** %322, align 8
  %323 = load %struct.config_file*, %struct.config_file** %2, align 8
  %324 = getelementptr inbounds %struct.config_file, %struct.config_file* %323, i32 0, i32 8
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @check_modules_exist(i8* %325)
  %327 = load %struct.config_file*, %struct.config_file** %2, align 8
  %328 = getelementptr inbounds %struct.config_file, %struct.config_file* %327, i32 0, i32 8
  %329 = load i8*, i8** %328, align 8
  %330 = call i64 @strcmp(i8* %329, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %367

332:                                              ; preds = %277
  %333 = load %struct.config_file*, %struct.config_file** %2, align 8
  %334 = getelementptr inbounds %struct.config_file, %struct.config_file* %333, i32 0, i32 8
  %335 = load i8*, i8** %334, align 8
  %336 = call i64 @strcmp(i8* %335, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %367

338:                                              ; preds = %332
  %339 = load %struct.config_file*, %struct.config_file** %2, align 8
  %340 = getelementptr inbounds %struct.config_file, %struct.config_file* %339, i32 0, i32 8
  %341 = load i8*, i8** %340, align 8
  %342 = call i64 @strcmp(i8* %341, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %367

344:                                              ; preds = %338
  %345 = load %struct.config_file*, %struct.config_file** %2, align 8
  %346 = getelementptr inbounds %struct.config_file, %struct.config_file* %345, i32 0, i32 8
  %347 = load i8*, i8** %346, align 8
  %348 = call i64 @strcmp(i8* %347, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %367

350:                                              ; preds = %344
  %351 = load %struct.config_file*, %struct.config_file** %2, align 8
  %352 = getelementptr inbounds %struct.config_file, %struct.config_file* %351, i32 0, i32 8
  %353 = load i8*, i8** %352, align 8
  %354 = call i64 @strcmp(i8* %353, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %367

356:                                              ; preds = %350
  %357 = load %struct.config_file*, %struct.config_file** %2, align 8
  %358 = getelementptr inbounds %struct.config_file, %struct.config_file* %357, i32 0, i32 8
  %359 = load i8*, i8** %358, align 8
  %360 = call i64 @strcmp(i8* %359, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %356
  %363 = load %struct.config_file*, %struct.config_file** %2, align 8
  %364 = getelementptr inbounds %struct.config_file, %struct.config_file* %363, i32 0, i32 8
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8* %365)
  br label %367

367:                                              ; preds = %362, %356, %350, %344, %338, %332, %277
  %368 = load %struct.config_file*, %struct.config_file** %2, align 8
  %369 = getelementptr inbounds %struct.config_file, %struct.config_file* %368, i32 0, i32 15
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %418

372:                                              ; preds = %367
  %373 = load %struct.config_file*, %struct.config_file** %2, align 8
  %374 = call i64 @options_remote_is_address(%struct.config_file* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %418

376:                                              ; preds = %372
  %377 = load %struct.config_file*, %struct.config_file** %2, align 8
  %378 = getelementptr inbounds %struct.config_file, %struct.config_file* %377, i32 0, i32 14
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %418

381:                                              ; preds = %376
  %382 = load %struct.config_file*, %struct.config_file** %2, align 8
  %383 = getelementptr inbounds %struct.config_file, %struct.config_file* %382, i32 0, i32 13
  %384 = load %struct.config_file*, %struct.config_file** %2, align 8
  %385 = getelementptr inbounds %struct.config_file, %struct.config_file* %384, i32 0, i32 4
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.config_file*, %struct.config_file** %2, align 8
  %388 = call i32 @check_chroot_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32* %383, i8* %386, %struct.config_file* %387)
  %389 = load %struct.config_file*, %struct.config_file** %2, align 8
  %390 = getelementptr inbounds %struct.config_file, %struct.config_file* %389, i32 0, i32 12
  %391 = load %struct.config_file*, %struct.config_file** %2, align 8
  %392 = getelementptr inbounds %struct.config_file, %struct.config_file* %391, i32 0, i32 4
  %393 = load i8*, i8** %392, align 8
  %394 = load %struct.config_file*, %struct.config_file** %2, align 8
  %395 = call i32 @check_chroot_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32* %390, i8* %393, %struct.config_file* %394)
  %396 = load %struct.config_file*, %struct.config_file** %2, align 8
  %397 = getelementptr inbounds %struct.config_file, %struct.config_file* %396, i32 0, i32 10
  %398 = load i8*, i8** %397, align 8
  %399 = call i32 @is_file(i8* %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %381
  %402 = load %struct.config_file*, %struct.config_file** %2, align 8
  %403 = getelementptr inbounds %struct.config_file, %struct.config_file* %402, i32 0, i32 10
  %404 = load i8*, i8** %403, align 8
  %405 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i8* %404)
  br label %406

406:                                              ; preds = %401, %381
  %407 = load %struct.config_file*, %struct.config_file** %2, align 8
  %408 = getelementptr inbounds %struct.config_file, %struct.config_file* %407, i32 0, i32 11
  %409 = load i8*, i8** %408, align 8
  %410 = call i32 @is_file(i8* %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %406
  %413 = load %struct.config_file*, %struct.config_file** %2, align 8
  %414 = getelementptr inbounds %struct.config_file, %struct.config_file* %413, i32 0, i32 11
  %415 = load i8*, i8** %414, align 8
  %416 = call i32 (i8*, ...) @fatal_exit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* %415)
  br label %417

417:                                              ; preds = %412, %406
  br label %418

418:                                              ; preds = %417, %376, %372, %367
  %419 = load %struct.config_file*, %struct.config_file** %2, align 8
  %420 = call i32 @localzonechecks(%struct.config_file* %419)
  %421 = load %struct.config_file*, %struct.config_file** %2, align 8
  %422 = call i32 @view_and_respipchecks(%struct.config_file* %421)
  ret void
}

declare dso_local i32 @warn_hosts(i8*, i32) #1

declare dso_local i32 @interfacechecks(%struct.config_file*) #1

declare dso_local i32 @aclchecks(%struct.config_file*) #1

declare dso_local i32 @tcpconnlimitchecks(%struct.config_file*) #1

declare dso_local i32 @fatal_exit(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @is_dir(i8*) #1

declare dso_local i8* @fname_after_chroot(i8*, %struct.config_file*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @basedir(i8*) #1

declare dso_local i32 @check_chroot_filelist(i8*, i32, i8*, %struct.config_file*) #1

declare dso_local i32 @check_chroot_filelist_wild(i8*, i32, i8*, %struct.config_file*) #1

declare dso_local i32 @check_chroot_string(i8*, i32*, i8*, %struct.config_file*) #1

declare dso_local i32 @check_modules_exist(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @options_remote_is_address(%struct.config_file*) #1

declare dso_local i32 @is_file(i8*) #1

declare dso_local i32 @localzonechecks(%struct.config_file*) #1

declare dso_local i32 @view_and_respipchecks(%struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
