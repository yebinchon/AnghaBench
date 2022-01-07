; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/misc/kexfuzz/extr_kexfuzz.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sshkey = type { i64 }
%struct.sshbuf = type { i32 }

@stdout = common dso_local global i32 0, align 4
@_IONBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"hcdrvD:f:K:k:i:\00", align 1
@do_debug = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"s2c\00", align 1
@S2C = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"c2s\00", align 1
@C2S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid direction (-D)\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid packet index\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"unsupported flag\00", align 1
@optind = common dso_local global i64 0, align 8
@SYSLOG_LEVEL_DEBUG3 = common dso_local global i32 0, align 4
@SYSLOG_LEVEL_INFO = common dso_local global i32 0, align 4
@SYSLOG_FACILITY_USER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Must select one mode: -c, -d or -r\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Missing or invalid kex type (-K flag)\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Missing private key (-k flag)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@KEY_UNSPEC = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"Unable to load key %s: %s\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Invalid key file (-k flag)\00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"Replace (-r) mode must specify direction (-D) packet index (-i) and data path (-f)\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"read %s: %s\00", align 1
@.str.14 = private unnamed_addr constant [81 x i8] c"Dump (-d) mode must specify direction (-D), packet index (-i) and data path (-f)\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"S2C: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"C2S: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.sshkey*, align 8
  %20 = alloca %struct.sshbuf*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store %struct.sshkey* null, %struct.sshkey** %19, align 8
  store %struct.sshbuf* null, %struct.sshbuf** %20, align 8
  %21 = load i32, i32* @stdout, align 4
  %22 = load i32, i32* @_IONBF, align 4
  %23 = call i32 @setvbuf(i32 %21, i32* null, i32 %22, i32 0)
  br label %24

24:                                               ; preds = %69, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %67 [
    i32 104, label %31
    i32 99, label %33
    i32 100, label %34
    i32 114, label %35
    i32 118, label %36
    i32 68, label %37
    i32 102, label %53
    i32 75, label %55
    i32 107, label %57
    i32 105, label %59
  ]

31:                                               ; preds = %29
  %32 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  br label %232

33:                                               ; preds = %29
  store i32 1, i32* %9, align 4
  br label %69

34:                                               ; preds = %29
  store i32 1, i32* %10, align 4
  br label %69

35:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %69

36:                                               ; preds = %29
  store i32 1, i32* @do_debug, align 4
  br label %69

37:                                               ; preds = %29
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i32 @strcasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @S2C, align 4
  store i32 %42, i32* %13, align 4
  br label %52

43:                                               ; preds = %37
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i32 @strcasecmp(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @C2S, align 4
  store i32 %48, i32* %13, align 4
  br label %51

49:                                               ; preds = %43
  %50 = call i32 @badusage(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %47
  br label %52

52:                                               ; preds = %51, %41
  br label %69

53:                                               ; preds = %29
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %18, align 8
  br label %69

55:                                               ; preds = %29
  %56 = load i8*, i8** @optarg, align 8
  store i8* %56, i8** %16, align 8
  br label %69

57:                                               ; preds = %29
  %58 = load i8*, i8** @optarg, align 8
  store i8* %58, i8** %17, align 8
  br label %69

59:                                               ; preds = %29
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i32 @atoi(i8* %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @badusage(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  br label %69

67:                                               ; preds = %29
  %68 = call i32 @badusage(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %66, %57, %55, %53, %52, %36, %35, %34, %33
  br label %24

70:                                               ; preds = %24
  %71 = load i64, i64* @optind, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i64, i64* @optind, align 8
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 %76
  store i8** %78, i8*** %5, align 8
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i32, i32* @do_debug, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @SYSLOG_LEVEL_DEBUG3, align 4
  br label %88

86:                                               ; preds = %70
  %87 = load i32, i32* @SYSLOG_LEVEL_INFO, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = load i32, i32* @SYSLOG_FACILITY_USER, align 4
  %91 = call i32 @log_init(i8* %81, i32 %89, i32 %90, i32 1)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = call i32 @badusage(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %88
  %101 = load i8*, i8** %16, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %111, label %103

103:                                              ; preds = %100
  %104 = load i8*, i8** %16, align 8
  %105 = call i32 @kex_names_valid(i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i8*, i8** %16, align 8
  %109 = call i32* @strchr(i8* %108, i8 signext 44)
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %107, %103, %100
  %112 = call i32 @badusage(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %107
  %114 = load i8*, i8** %17, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 @badusage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i8*, i8** %17, align 8
  %120 = load i32, i32* @O_RDONLY, align 4
  %121 = call i32 @open(i8* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %118
  %124 = load i8*, i8** %17, align 8
  %125 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %123, %118
  %127 = load i32, i32* %7, align 4
  %128 = load i64, i64* @KEY_UNSPEC, align 8
  %129 = call i32 @sshkey_load_private_type_fd(i32 %127, i64 %128, i32* null, %struct.sshkey** %19, i32* null)
  store i32 %129, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i8*, i8** %17, align 8
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @ssh_err(i32 %133)
  %135 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %132, i32 %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @close(i32 %137)
  %139 = load %struct.sshkey*, %struct.sshkey** %19, align 8
  %140 = icmp eq %struct.sshkey* %139, null
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load %struct.sshkey*, %struct.sshkey** %19, align 8
  %143 = getelementptr inbounds %struct.sshkey, %struct.sshkey* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @KEY_UNSPEC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %141, %136
  %148 = call i32 @badusage(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %141
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %185

152:                                              ; preds = %149
  %153 = load i32, i32* %12, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %161, label %155

155:                                              ; preds = %152
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i8*, i8** %18, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %155, %152
  %162 = call i32 @badusage(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.12, i64 0, i64 0))
  br label %163

163:                                              ; preds = %161, %158
  %164 = load i8*, i8** %18, align 8
  %165 = load i32, i32* @O_RDONLY, align 4
  %166 = call i32 @open(i8* %164, i32 %165)
  store i32 %166, i32* %7, align 4
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load i8*, i8** %18, align 8
  %170 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %168, %163
  %172 = call %struct.sshbuf* (...) @sshbuf_new()
  store %struct.sshbuf* %172, %struct.sshbuf** %20, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %175 = call i32 @sshkey_load_file(i32 %173, %struct.sshbuf* %174)
  store i32 %175, i32* %8, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load i8*, i8** %18, align 8
  %179 = load i32, i32* %8, align 4
  %180 = call i32 @ssh_err(i32 %179)
  %181 = call i32 @errx(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %178, i32 %180)
  br label %182

182:                                              ; preds = %177, %171
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @close(i32 %183)
  br label %185

185:                                              ; preds = %182, %149
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %185
  %189 = load i32, i32* %12, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %197, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp eq i32 %192, -1
  br i1 %193, label %197, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %18, align 8
  %196 = icmp eq i8* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %194, %191, %188
  %198 = call i32 @badusage(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %194
  br label %200

200:                                              ; preds = %199, %185
  %201 = load i8*, i8** %16, align 8
  %202 = load %struct.sshkey*, %struct.sshkey** %19, align 8
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %200
  %208 = load i8*, i8** %18, align 8
  br label %210

209:                                              ; preds = %200
  br label %210

210:                                              ; preds = %209, %207
  %211 = phi i8* [ %208, %207 ], [ null, %209 ]
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  br label %217

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi %struct.sshbuf* [ %215, %214 ], [ null, %216 ]
  %219 = call i32 @do_kex_with_key(i8* %201, %struct.sshkey* %202, i32* %15, i32* %14, i32 %203, i32 %204, i8* %211, %struct.sshbuf* %218)
  %220 = load %struct.sshkey*, %struct.sshkey** %19, align 8
  %221 = call i32 @sshkey_free(%struct.sshkey* %220)
  %222 = load %struct.sshbuf*, %struct.sshbuf** %20, align 8
  %223 = call i32 @sshbuf_free(%struct.sshbuf* %222)
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %231

226:                                              ; preds = %217
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i32 %227)
  %229 = load i32, i32* %15, align 4
  %230 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %226, %217
  store i32 0, i32* %3, align 4
  br label %232

232:                                              ; preds = %231, %31
  %233 = load i32, i32* %3, align 4
  ret i32 %233
}

declare dso_local i32 @setvbuf(i32, i32*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @badusage(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @log_init(i8*, i32, i32, i32) #1

declare dso_local i32 @kex_names_valid(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @sshkey_load_private_type_fd(i32, i64, i32*, %struct.sshkey**, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @ssh_err(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.sshbuf* @sshbuf_new(...) #1

declare dso_local i32 @sshkey_load_file(i32, %struct.sshbuf*) #1

declare dso_local i32 @do_kex_with_key(i8*, %struct.sshkey*, i32*, i32*, i32, i32, i8*, %struct.sshbuf*) #1

declare dso_local i32 @sshkey_free(%struct.sshkey*) #1

declare dso_local i32 @sshbuf_free(%struct.sshbuf*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
