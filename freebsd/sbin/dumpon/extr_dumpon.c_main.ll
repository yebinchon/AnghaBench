; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dumpon/extr_dumpon.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dumpon/extr_dumpon.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diocskerneldump_arg = type { i32, i32, i32, %struct.diocskerneldump_arg*, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.addrinfo = type { i64, i32, i8* }
%struct.sockaddr_in = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@KDA_APPEND = common dso_local global i32 0, align 4
@KERNELDUMP_ENC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"C:c:g:i:k:lrs:vZz\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"chacha\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"chacha20\00", align 1
@KERNELDUMP_ENC_CHACHA20 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"aes-cbc\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"aes256-cbc\00", align 1
@KERNELDUMP_ENC_AES_256_CBC = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Unrecognized cipher algorithm '%s'\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"-i index must be between zero and %d.\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"The -z and -Z options are mutually exclusive.\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"The -i and -r options are mutually exclusive.\00", align 1
@optind = common dso_local global i64 0, align 8
@EX_OK = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [69 x i8] c"Unable to use the public key. Recompile dumpon with OpenSSL support.\00", align 1
@_PATH_NETDUMP = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@_PATH_DEVNULL = common dso_local global i8* null, align 8
@KDA_REMOVE = common dso_local global i32 0, align 4
@KERNELDUMP_COMP_NONE = common dso_local global i32 0, align 4
@KERNELDUMP_COMP_ZSTD = common dso_local global i32 0, align 4
@KERNELDUMP_COMP_GZIP = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"failed to resolve '%s'\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"invalid interface name '%s'\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"invalid server address '%s'\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"invalid client address '%s'\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"failed to look up gateway for %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"invalid gateway address '%s'\00", align 1
@DIOCSKERNELDUMP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [66 x i8] c"Unable to configure netdump because the interface's link is down.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [87 x i8] c"Unable to configure netdump because the interface driver does not yet support netdump.\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"ioctl(DIOCSKERNELDUMP)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.diocskerneldump_arg, align 8
  %9 = alloca %struct.diocskerneldump_arg*, align 8
  %10 = alloca %struct.addrinfo, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %29 = load i32, i32* @PATH_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %6, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store %struct.diocskerneldump_arg* null, %struct.diocskerneldump_arg** %9, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  %33 = load i32, i32* @KDA_APPEND, align 4
  store i32 %33, i32* %27, align 4
  %34 = load i32, i32* @KERNELDUMP_ENC_NONE, align 4
  store i32 %34, i32* %20, align 4
  br label %35

35:                                               ; preds = %102, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %17, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %103

40:                                               ; preds = %35
  %41 = load i32, i32* %17, align 4
  %42 = trunc i32 %41 to i8
  %43 = sext i8 %42 to i32
  switch i32 %43, label %100 [
    i32 67, label %44
    i32 99, label %70
    i32 103, label %72
    i32 105, label %74
    i32 107, label %91
    i32 108, label %93
    i32 114, label %94
    i32 115, label %95
    i32 118, label %97
    i32 90, label %98
    i32 122, label %99
  ]

44:                                               ; preds = %40
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @strcasecmp(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @strcasecmp(i8* %49, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %44
  %53 = load i32, i32* @KERNELDUMP_ENC_CHACHA20, align 4
  store i32 %53, i32* %20, align 4
  br label %69

54:                                               ; preds = %48
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @strcasecmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @strcasecmp(i8* %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @KERNELDUMP_ENC_AES_256_CBC, align 4
  store i32 %63, i32* %20, align 4
  br label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @EX_USAGE, align 4
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 (i32, i8*, ...) @errx(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %62
  br label %69

69:                                               ; preds = %68, %52
  br label %102

70:                                               ; preds = %40
  %71 = load i8*, i8** @optarg, align 8
  store i8* %71, i8** %15, align 8
  br label %102

72:                                               ; preds = %40
  %73 = load i8*, i8** @optarg, align 8
  store i8* %73, i8** %16, align 8
  br label %102

74:                                               ; preds = %40
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @atoi(i8* %75)
  store i32 %76, i32* %28, align 4
  %77 = load i32, i32* %28, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %28, align 4
  %81 = load i32, i32* @KDA_APPEND, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp sge i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %74
  %85 = load i32, i32* @EX_USAGE, align 4
  %86 = load i32, i32* @KDA_APPEND, align 4
  %87 = sub nsw i32 %86, 2
  %88 = call i32 (i32, i8*, ...) @errx(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  store i32 1, i32* %25, align 4
  %90 = load i32, i32* %28, align 4
  store i32 %90, i32* %27, align 4
  br label %102

91:                                               ; preds = %40
  %92 = load i8*, i8** @optarg, align 8
  store i8* %92, i8** %13, align 8
  br label %102

93:                                               ; preds = %40
  store i32 1, i32* %22, align 4
  br label %102

94:                                               ; preds = %40
  store i32 1, i32* %26, align 4
  br label %102

95:                                               ; preds = %40
  %96 = load i8*, i8** @optarg, align 8
  store i8* %96, i8** %14, align 8
  br label %102

97:                                               ; preds = %40
  store i32 1, i32* @verbose, align 4
  br label %102

98:                                               ; preds = %40
  store i32 1, i32* %24, align 4
  br label %102

99:                                               ; preds = %40
  store i32 1, i32* %21, align 4
  br label %102

100:                                              ; preds = %40
  %101 = call i32 (...) @usage()
  br label %102

102:                                              ; preds = %100, %99, %98, %97, %95, %94, %93, %91, %89, %72, %70, %69
  br label %35

103:                                              ; preds = %35
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %24, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i32, i32* @EX_USAGE, align 4
  %111 = call i32 (i32, i8*, ...) @errx(i32 %110, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %109, %106, %103
  %113 = load i32, i32* %25, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %26, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @EX_USAGE, align 4
  %120 = call i32 (i32, i8*, ...) @errx(i32 %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115, %112
  %122 = load i64, i64* @optind, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %124, %122
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %4, align 4
  %127 = load i64, i64* @optind, align 8
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 %127
  store i8** %129, i8*** %5, align 8
  %130 = load i32, i32* %22, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %121
  %133 = call i32 (...) @listdumpdev()
  %134 = load i32, i32* @EX_OK, align 4
  %135 = call i32 @exit(i32 %134) #4
  unreachable

136:                                              ; preds = %121
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 (...) @usage()
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i8*, i8** %13, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @EX_UNAVAILABLE, align 4
  %146 = call i32 (i32, i8*, ...) @errx(i32 %145, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i8*, i8** %14, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i8*, i8** %15, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i8*, i8** @_PATH_NETDUMP, align 8
  store i8* %154, i8** %12, align 8
  store i32 1, i32* %23, align 4
  br label %180

155:                                              ; preds = %150, %147
  %156 = load i8*, i8** %14, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i8*, i8** %15, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load i32, i32* %4, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load i8**, i8*** %5, align 8
  %166 = getelementptr inbounds i8*, i8** %165, i64 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  store i32 1, i32* %26, align 4
  %171 = load i8*, i8** @_PATH_DEVNULL, align 8
  store i8* %171, i8** %12, align 8
  br label %176

172:                                              ; preds = %164
  %173 = load i8**, i8*** %5, align 8
  %174 = getelementptr inbounds i8*, i8** %173, i64 0
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %12, align 8
  br label %176

176:                                              ; preds = %172, %170
  store i32 0, i32* %23, align 4
  br label %179

177:                                              ; preds = %161, %158, %155
  %178 = call i32 (...) @usage()
  br label %179

179:                                              ; preds = %177, %176
  br label %180

180:                                              ; preds = %179, %153
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @opendumpdev(i8* %181, i8* %32)
  store i32 %182, i32* %19, align 4
  %183 = load i32, i32* %23, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* %21, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %194, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %26, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load i32, i32* %19, align 4
  %193 = call i32 @check_size(i32 %192, i8* %32)
  br label %194

194:                                              ; preds = %191, %188, %185, %180
  store %struct.diocskerneldump_arg* %8, %struct.diocskerneldump_arg** %9, align 8
  %195 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %196 = call i32 @bzero(%struct.diocskerneldump_arg* %195, i32 56)
  %197 = load i32, i32* %26, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i32, i32* @KDA_REMOVE, align 4
  %201 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %202 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  br label %207

203:                                              ; preds = %194
  %204 = load i32, i32* %27, align 4
  %205 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %206 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %199
  %208 = load i32, i32* @KERNELDUMP_COMP_NONE, align 4
  %209 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %210 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* %24, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load i32, i32* @KERNELDUMP_COMP_ZSTD, align 4
  %215 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %216 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %215, i32 0, i32 9
  store i32 %214, i32* %216, align 8
  br label %225

217:                                              ; preds = %207
  %218 = load i32, i32* %21, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load i32, i32* @KERNELDUMP_COMP_GZIP, align 4
  %222 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %223 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %222, i32 0, i32 9
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %217
  br label %225

225:                                              ; preds = %224, %213
  %226 = load i32, i32* %23, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %325

228:                                              ; preds = %225
  %229 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 24)
  %230 = load i8*, i8** @AF_INET, align 8
  %231 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i8* %230, i8** %231, align 8
  %232 = load i32, i32* @IPPROTO_UDP, align 4
  %233 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 1
  store i32 %232, i32* %233, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = call i32 @getaddrinfo(i8* %234, i32* null, %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %235, i32* %18, align 4
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %228
  %239 = load i32, i32* %18, align 4
  %240 = call i32 @gai_strerror(i32 %239)
  %241 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %238, %228
  %243 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %244 = icmp eq %struct.addrinfo* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i8*, i8** %14, align 8
  %247 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %250 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = inttoptr i64 %251 to i8*
  %253 = bitcast i8* %252 to %struct.sockaddr_in*
  %254 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @inet_ntoa(i32 %255)
  store i8* %256, i8** %14, align 8
  %257 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %258 = call i32 @freeaddrinfo(%struct.addrinfo* %257)
  %259 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %8, i32 0, i32 8
  %260 = load i32, i32* %259, align 4
  %261 = load i8**, i8*** %5, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 0
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @strlcpy(i32 %260, i8* %263, i32 4)
  %265 = sext i32 %264 to i64
  %266 = icmp uge i64 %265, 4
  br i1 %266, label %267, label %273

267:                                              ; preds = %248
  %268 = load i32, i32* @EX_USAGE, align 4
  %269 = load i8**, i8*** %5, align 8
  %270 = getelementptr inbounds i8*, i8** %269, i64 0
  %271 = load i8*, i8** %270, align 8
  %272 = call i32 (i32, i8*, ...) @errx(i32 %268, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %271)
  br label %273

273:                                              ; preds = %267, %248
  %274 = load i8*, i8** %14, align 8
  %275 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %8, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 0
  %277 = call i64 @inet_aton(i8* %274, i32* %276)
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = load i32, i32* @EX_USAGE, align 4
  %281 = load i8*, i8** %14, align 8
  %282 = call i32 (i32, i8*, ...) @errx(i32 %280, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %281)
  br label %283

283:                                              ; preds = %279, %273
  %284 = load i8*, i8** %15, align 8
  %285 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %8, i32 0, i32 6
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 0
  %287 = call i64 @inet_aton(i8* %284, i32* %286)
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %283
  %290 = load i32, i32* @EX_USAGE, align 4
  %291 = load i8*, i8** %15, align 8
  %292 = call i32 (i32, i8*, ...) @errx(i32 %290, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %289, %283
  %294 = load i8*, i8** %16, align 8
  %295 = icmp eq i8* %294, null
  br i1 %295, label %296, label %312

296:                                              ; preds = %293
  %297 = load i8**, i8*** %5, align 8
  %298 = getelementptr inbounds i8*, i8** %297, i64 0
  %299 = load i8*, i8** %298, align 8
  %300 = call i8* @find_gateway(i8* %299)
  store i8* %300, i8** %16, align 8
  %301 = load i8*, i8** %16, align 8
  %302 = icmp eq i8* %301, null
  br i1 %302, label %303, label %311

303:                                              ; preds = %296
  %304 = load i32, i32* @verbose, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i8*, i8** %14, align 8
  %308 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %307)
  br label %309

309:                                              ; preds = %306, %303
  %310 = load i8*, i8** %14, align 8
  store i8* %310, i8** %16, align 8
  br label %311

311:                                              ; preds = %309, %296
  br label %312

312:                                              ; preds = %311, %293
  %313 = load i8*, i8** %16, align 8
  %314 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %8, i32 0, i32 5
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 0
  %316 = call i64 @inet_aton(i8* %313, i32* %315)
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = load i32, i32* @EX_USAGE, align 4
  %320 = load i8*, i8** %16, align 8
  %321 = call i32 (i32, i8*, ...) @errx(i32 %319, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %320)
  br label %322

322:                                              ; preds = %318, %312
  %323 = load i8*, i8** @AF_INET, align 8
  %324 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %8, i32 0, i32 4
  store i8* %323, i8** %324, align 8
  br label %325

325:                                              ; preds = %322, %225
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* @DIOCSKERNELDUMP, align 4
  %328 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %329 = call i32 @ioctl(i32 %326, i32 %327, %struct.diocskerneldump_arg* %328)
  store i32 %329, i32* %18, align 4
  %330 = load i32, i32* %18, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %325
  %333 = load i32, i32* @errno, align 4
  store i32 %333, i32* %18, align 4
  br label %334

334:                                              ; preds = %332, %325
  %335 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %336 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %335, i32 0, i32 3
  %337 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %336, align 8
  %338 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %339 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @explicit_bzero(%struct.diocskerneldump_arg* %337, i32 %340)
  %342 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %343 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %342, i32 0, i32 3
  %344 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %343, align 8
  %345 = call i32 @free(%struct.diocskerneldump_arg* %344)
  %346 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %9, align 8
  %347 = call i32 @explicit_bzero(%struct.diocskerneldump_arg* %346, i32 56)
  %348 = load i32, i32* %18, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %373

350:                                              ; preds = %334
  %351 = load i32, i32* %23, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %369

353:                                              ; preds = %350
  %354 = load i32, i32* %18, align 4
  %355 = load i32, i32* @ENXIO, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %360

357:                                              ; preds = %353
  %358 = load i32, i32* @EX_OSERR, align 4
  %359 = call i32 (i32, i8*, ...) @errx(i32 %358, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0))
  br label %368

360:                                              ; preds = %353
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* @ENODEV, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %360
  %365 = load i32, i32* @EX_OSERR, align 4
  %366 = call i32 (i32, i8*, ...) @errx(i32 %365, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.19, i64 0, i64 0))
  br label %367

367:                                              ; preds = %364, %360
  br label %368

368:                                              ; preds = %367, %357
  br label %369

369:                                              ; preds = %368, %350
  %370 = load i32, i32* @EX_OSERR, align 4
  %371 = load i32, i32* %18, align 4
  %372 = call i32 @errc(i32 %370, i32 %371, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0))
  br label %373

373:                                              ; preds = %369, %334
  %374 = load i32, i32* @verbose, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = call i32 (...) @listdumpdev()
  br label %378

378:                                              ; preds = %376, %373
  %379 = load i32, i32* @EX_OK, align 4
  %380 = call i32 @exit(i32 %379) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @listdumpdev(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @opendumpdev(i8*, i8*) #2

declare dso_local i32 @check_size(i32, i8*) #2

declare dso_local i32 @bzero(%struct.diocskerneldump_arg*, i32) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #2

declare dso_local i32 @err(i32, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i8* @inet_ntoa(i32) #2

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i64 @inet_aton(i8*, i32*) #2

declare dso_local i8* @find_gateway(i8*) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @ioctl(i32, i32, %struct.diocskerneldump_arg*) #2

declare dso_local i32 @explicit_bzero(%struct.diocskerneldump_arg*, i32) #2

declare dso_local i32 @free(%struct.diocskerneldump_arg*) #2

declare dso_local i32 @errc(i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
