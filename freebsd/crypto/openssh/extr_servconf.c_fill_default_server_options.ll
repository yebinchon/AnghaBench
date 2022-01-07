; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_fill_default_server_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_servconf.c_fill_default_server_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32**, i32**, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_7__, i32*, i32, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@defaultkey = common dso_local global i32 0, align 4
@_PATH_HOST_RSA_KEY_FILE = common dso_local global i32 0, align 4
@_PATH_HOST_DSA_KEY_FILE = common dso_local global i32 0, align 4
@_PATH_HOST_ED25519_KEY_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No host key files found\00", align 1
@SSH_DEFAULT_PORT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@_PATH_SSH_DAEMON_PID_FILE = common dso_local global i32 0, align 4
@PERMIT_NOT_SET = common dso_local global i64 0, align 8
@PERMIT_NO = common dso_local global i64 0, align 8
@_PATH_XAUTH = common dso_local global i32 0, align 4
@SYSLOG_FACILITY_NOT_SET = common dso_local global i64 0, align 8
@SYSLOG_FACILITY_AUTH = common dso_local global i64 0, align 8
@SYSLOG_LEVEL_NOT_SET = common dso_local global i64 0, align 8
@SYSLOG_LEVEL_INFO = common dso_local global i64 0, align 8
@COMP_DELAYED = common dso_local global i32 0, align 4
@FORWARD_ALLOW = common dso_local global i8* null, align 8
@DEFAULT_AUTH_FAIL_MAX = common dso_local global i32 0, align 4
@DEFAULT_SESSIONS_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"AuthorizedKeysFiles\00", align 1
@_PATH_SSH_USER_PERMITTED_KEYS = common dso_local global i32 0, align 4
@_PATH_SSH_USER_PERMITTED_KEYS2 = common dso_local global i32 0, align 4
@SSH_TUNMODE_NO = common dso_local global i32 0, align 4
@IPTOS_DSCP_AF21 = common dso_local global i32 0, align 4
@IPTOS_DSCP_CS1 = common dso_local global i32 0, align 4
@SSH_VERSION_FREEBSD = common dso_local global i32 0, align 4
@SSH_FP_HASH_DEFAULT = common dso_local global i32 0, align 4
@use_privsep = common dso_local global i32 0, align 4
@PRIVSEP_ON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"This platform does not support both privilege separation and compression\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Compression disabled\00", align 1
@_PATH_HOST_ECDSA_KEY_FILE = common dso_local global i32 0, align 4
@_PATH_HOST_XMSS_KEY_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_default_server_options(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32, i32* @defaultkey, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = load i32, i32* @_PATH_HOST_RSA_KEY_FILE, align 4
  %20 = call i32 @servconf_add_hostkey(i32 %17, i32 0, %struct.TYPE_8__* %18, i32 %19)
  %21 = load i32, i32* @defaultkey, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = load i32, i32* @_PATH_HOST_DSA_KEY_FILE, align 4
  %24 = call i32 @servconf_add_hostkey(i32 %21, i32 0, %struct.TYPE_8__* %22, i32 %23)
  %25 = load i32, i32* @defaultkey, align 4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i32, i32* @_PATH_HOST_ED25519_KEY_FILE, align 4
  %28 = call i32 @servconf_add_hostkey(i32 %25, i32 0, %struct.TYPE_8__* %26, i32 %27)
  br label %29

29:                                               ; preds = %16, %11
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* @SSH_DEFAULT_PORT, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 75
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %42, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @AF_UNSPEC, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 74
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = call i32 @add_listen_addr(%struct.TYPE_8__* %66, i32* null, i32* null, i32 0)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 69
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i32, i32* @_PATH_SSH_DAEMON_PID_FILE, align 4
  %75 = call i8* @xstrdup(i32 %74)
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 69
  store i32* %76, i32** %78, align 8
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 4
  store i32 120, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PERMIT_NOT_SET, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i64, i64* @PERMIT_NO, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 5
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 6
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %97
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 7
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 8
  store i32 1, i32* %120, align 8
  br label %121

121:                                              ; preds = %118, %113
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 9
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 10
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 10
  store i32 1, i32* %136, align 8
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 11
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 11
  store i32 10, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %137
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, -1
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 12
  store i32 1, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %145
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 68
  %156 = load i32*, i32** %155, align 8
  %157 = icmp eq i32* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load i32, i32* @_PATH_XAUTH, align 4
  %160 = call i8* @xstrdup(i32 %159)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 68
  store i32* %161, i32** %163, align 8
  br label %164

164:                                              ; preds = %158, %153
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 13
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 13
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %164
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 14
  %175 = load i32, i32* %174, align 8
  %176 = icmp eq i32 %175, -1
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 14
  store i32 1, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %172
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 15
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 15
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %180
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 16
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 16
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %188
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 17
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @SYSLOG_FACILITY_NOT_SET, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %196
  %203 = load i64, i64* @SYSLOG_FACILITY_AUTH, align 8
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 17
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %202, %196
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 18
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @SYSLOG_LEVEL_NOT_SET, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i64, i64* @SYSLOG_LEVEL_INFO, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 18
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %212, %206
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 19
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %224

221:                                              ; preds = %216
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 19
  store i32 0, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %216
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 20
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 20
  store i32 0, i32* %231, align 4
  br label %232

232:                                              ; preds = %229, %224
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 21
  %235 = load i32, i32* %234, align 8
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 21
  store i32 1, i32* %239, align 8
  br label %240

240:                                              ; preds = %237, %232
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 22
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, -1
  br i1 %244, label %245, label %248

245:                                              ; preds = %240
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 22
  store i32 0, i32* %247, align 4
  br label %248

248:                                              ; preds = %245, %240
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 23
  %251 = load i32, i32* %250, align 8
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %256

253:                                              ; preds = %248
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 23
  store i32 1, i32* %255, align 8
  br label %256

256:                                              ; preds = %253, %248
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 24
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %264

261:                                              ; preds = %256
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 24
  store i32 1, i32* %263, align 4
  br label %264

264:                                              ; preds = %261, %256
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 25
  %267 = load i32, i32* %266, align 8
  %268 = icmp eq i32 %267, -1
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 25
  store i32 0, i32* %271, align 8
  br label %272

272:                                              ; preds = %269, %264
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 26
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, -1
  br i1 %276, label %277, label %280

277:                                              ; preds = %272
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 26
  store i32 0, i32* %279, align 4
  br label %280

280:                                              ; preds = %277, %272
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 27
  %283 = load i32, i32* %282, align 8
  %284 = icmp eq i32 %283, -1
  br i1 %284, label %285, label %288

285:                                              ; preds = %280
  %286 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 27
  store i32 1, i32* %287, align 8
  br label %288

288:                                              ; preds = %285, %280
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i32 0, i32 28
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 28
  store i32 1, i32* %295, align 4
  br label %296

296:                                              ; preds = %293, %288
  %297 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 29
  %299 = load i32, i32* %298, align 8
  %300 = icmp eq i32 %299, -1
  br i1 %300, label %301, label %304

301:                                              ; preds = %296
  %302 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 29
  store i32 0, i32* %303, align 8
  br label %304

304:                                              ; preds = %301, %296
  %305 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 30
  %307 = load i32, i32* %306, align 4
  %308 = icmp eq i32 %307, -1
  br i1 %308, label %309, label %312

309:                                              ; preds = %304
  %310 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 30
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %309, %304
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 31
  %315 = load i32, i32* %314, align 8
  %316 = icmp eq i32 %315, -1
  br i1 %316, label %317, label %320

317:                                              ; preds = %312
  %318 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %318, i32 0, i32 31
  store i32 1, i32* %319, align 8
  br label %320

320:                                              ; preds = %317, %312
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 32
  %323 = load i32, i32* %322, align 4
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 32
  store i32 0, i32* %327, align 4
  br label %328

328:                                              ; preds = %325, %320
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 33
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, -1
  br i1 %332, label %333, label %338

333:                                              ; preds = %328
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 33
  store i32 0, i32* %335, align 8
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 73
  store i32* null, i32** %337, align 8
  br label %338

338:                                              ; preds = %333, %328
  %339 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 34
  %341 = load i32, i32* %340, align 4
  %342 = icmp eq i32 %341, -1
  br i1 %342, label %343, label %347

343:                                              ; preds = %338
  %344 = load i32, i32* @COMP_DELAYED, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 34
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %343, %338
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 35
  %350 = load i32, i32* %349, align 8
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %355

352:                                              ; preds = %347
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %353, i32 0, i32 35
  store i32 0, i32* %354, align 8
  br label %355

355:                                              ; preds = %352, %347
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 36
  %358 = load i32, i32* %357, align 4
  %359 = icmp eq i32 %358, -1
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 36
  store i32 0, i32* %362, align 4
  br label %363

363:                                              ; preds = %360, %355
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 37
  %366 = load i32, i32* %365, align 8
  %367 = icmp eq i32 %366, -1
  br i1 %367, label %368, label %373

368:                                              ; preds = %363
  %369 = load i8*, i8** @FORWARD_ALLOW, align 8
  %370 = ptrtoint i8* %369 to i32
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 37
  store i32 %370, i32* %372, align 8
  br label %373

373:                                              ; preds = %368, %363
  %374 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 38
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, -1
  br i1 %377, label %378, label %383

378:                                              ; preds = %373
  %379 = load i8*, i8** @FORWARD_ALLOW, align 8
  %380 = ptrtoint i8* %379 to i32
  %381 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 38
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %378, %373
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 39
  %386 = load i32, i32* %385, align 8
  %387 = icmp eq i32 %386, -1
  br i1 %387, label %388, label %391

388:                                              ; preds = %383
  %389 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 39
  store i32 1, i32* %390, align 8
  br label %391

391:                                              ; preds = %388, %383
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 70
  %394 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = icmp eq i32 %395, -1
  br i1 %396, label %397, label %401

397:                                              ; preds = %391
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 70
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  store i32 0, i32* %400, align 8
  br label %401

401:                                              ; preds = %397, %391
  %402 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 40
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, -1
  br i1 %405, label %406, label %409

406:                                              ; preds = %401
  %407 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %407, i32 0, i32 40
  store i32 100, i32* %408, align 4
  br label %409

409:                                              ; preds = %406, %401
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 41
  %412 = load i32, i32* %411, align 8
  %413 = icmp eq i32 %412, -1
  br i1 %413, label %414, label %417

414:                                              ; preds = %409
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %416 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i32 0, i32 41
  store i32 30, i32* %416, align 8
  br label %417

417:                                              ; preds = %414, %409
  %418 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 42
  %420 = load i32, i32* %419, align 4
  %421 = icmp eq i32 %420, -1
  br i1 %421, label %422, label %425

422:                                              ; preds = %417
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 42
  store i32 10, i32* %424, align 4
  br label %425

425:                                              ; preds = %422, %417
  %426 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 43
  %428 = load i32, i32* %427, align 8
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %430, label %434

430:                                              ; preds = %425
  %431 = load i32, i32* @DEFAULT_AUTH_FAIL_MAX, align 4
  %432 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 43
  store i32 %431, i32* %433, align 8
  br label %434

434:                                              ; preds = %430, %425
  %435 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %435, i32 0, i32 44
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, -1
  br i1 %438, label %439, label %443

439:                                              ; preds = %434
  %440 = load i32, i32* @DEFAULT_SESSIONS_MAX, align 4
  %441 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %442 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %441, i32 0, i32 44
  store i32 %440, i32* %442, align 4
  br label %443

443:                                              ; preds = %439, %434
  %444 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 45
  %446 = load i32, i32* %445, align 8
  %447 = icmp eq i32 %446, -1
  br i1 %447, label %448, label %451

448:                                              ; preds = %443
  %449 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %450 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %449, i32 0, i32 45
  store i32 1, i32* %450, align 8
  br label %451

451:                                              ; preds = %448, %443
  %452 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 46
  %454 = load i32, i32* %453, align 4
  %455 = icmp eq i32 %454, -1
  br i1 %455, label %456, label %459

456:                                              ; preds = %451
  %457 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %457, i32 0, i32 46
  store i32 0, i32* %458, align 4
  br label %459

459:                                              ; preds = %456, %451
  %460 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %461 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %460, i32 0, i32 47
  %462 = load i32, i32* %461, align 8
  %463 = icmp eq i32 %462, -1
  br i1 %463, label %464, label %467

464:                                              ; preds = %459
  %465 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %465, i32 0, i32 47
  store i32 3, i32* %466, align 8
  br label %467

467:                                              ; preds = %464, %459
  %468 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 48
  %470 = load i64, i64* %469, align 8
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %487

472:                                              ; preds = %467
  %473 = load i32, i32* @defaultkey, align 4
  %474 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %475 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %474, i32 0, i32 72
  %476 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %477 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i32 0, i32 48
  %478 = load i32, i32* @_PATH_SSH_USER_PERMITTED_KEYS, align 4
  %479 = call i32 @array_append(i32 %473, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %475, i64* %477, i32 %478)
  %480 = load i32, i32* @defaultkey, align 4
  %481 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 72
  %483 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %484 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %483, i32 0, i32 48
  %485 = load i32, i32* @_PATH_SSH_USER_PERMITTED_KEYS2, align 4
  %486 = call i32 @array_append(i32 %480, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %482, i64* %484, i32 %485)
  br label %487

487:                                              ; preds = %472, %467
  %488 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %489 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %488, i32 0, i32 49
  %490 = load i32, i32* %489, align 8
  %491 = icmp eq i32 %490, -1
  br i1 %491, label %492, label %496

492:                                              ; preds = %487
  %493 = load i32, i32* @SSH_TUNMODE_NO, align 4
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 49
  store i32 %493, i32* %495, align 8
  br label %496

496:                                              ; preds = %492, %487
  %497 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 50
  %499 = load i32, i32* %498, align 4
  %500 = icmp eq i32 %499, -1
  br i1 %500, label %501, label %505

501:                                              ; preds = %496
  %502 = load i32, i32* @IPTOS_DSCP_AF21, align 4
  %503 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 50
  store i32 %502, i32* %504, align 4
  br label %505

505:                                              ; preds = %501, %496
  %506 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 51
  %508 = load i32, i32* %507, align 8
  %509 = icmp eq i32 %508, -1
  br i1 %509, label %510, label %514

510:                                              ; preds = %505
  %511 = load i32, i32* @IPTOS_DSCP_CS1, align 4
  %512 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 51
  store i32 %511, i32* %513, align 8
  br label %514

514:                                              ; preds = %510, %505
  %515 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %516 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %515, i32 0, i32 71
  %517 = load i32*, i32** %516, align 8
  %518 = icmp eq i32* %517, null
  br i1 %518, label %519, label %525

519:                                              ; preds = %514
  %520 = load i32, i32* @SSH_VERSION_FREEBSD, align 4
  %521 = call i8* @xstrdup(i32 %520)
  %522 = bitcast i8* %521 to i32*
  %523 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %524 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %523, i32 0, i32 71
  store i32* %522, i32** %524, align 8
  br label %525

525:                                              ; preds = %519, %514
  %526 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 70
  %528 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  %530 = icmp eq i32 %529, -1
  br i1 %530, label %531, label %535

531:                                              ; preds = %525
  %532 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %533 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %532, i32 0, i32 70
  %534 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %533, i32 0, i32 1
  store i32 127, i32* %534, align 4
  br label %535

535:                                              ; preds = %531, %525
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %537 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i32 0, i32 70
  %538 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = icmp eq i32 %539, -1
  br i1 %540, label %541, label %545

541:                                              ; preds = %535
  %542 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %543 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i32 0, i32 70
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 2
  store i32 0, i32* %544, align 8
  br label %545

545:                                              ; preds = %541, %535
  %546 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %547 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %546, i32 0, i32 52
  %548 = load i32, i32* %547, align 4
  %549 = icmp eq i32 %548, -1
  br i1 %549, label %550, label %554

550:                                              ; preds = %545
  %551 = load i32, i32* @SSH_FP_HASH_DEFAULT, align 4
  %552 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 52
  store i32 %551, i32* %553, align 4
  br label %554

554:                                              ; preds = %550, %545
  %555 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %556 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %555, i32 0, i32 53
  %557 = load i32, i32* %556, align 8
  %558 = icmp eq i32 %557, -1
  br i1 %558, label %559, label %562

559:                                              ; preds = %554
  %560 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %561 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %560, i32 0, i32 53
  store i32 0, i32* %561, align 8
  br label %562

562:                                              ; preds = %559, %554
  %563 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %564 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %563, i32 0, i32 54
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, -1
  br i1 %566, label %567, label %570

567:                                              ; preds = %562
  %568 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %569 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %568, i32 0, i32 54
  store i32 0, i32* %569, align 4
  br label %570

570:                                              ; preds = %567, %562
  %571 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %572 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %571, i32 0, i32 55
  %573 = load i32, i32* %572, align 8
  %574 = icmp eq i32 %573, -1
  br i1 %574, label %575, label %578

575:                                              ; preds = %570
  %576 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %577 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %576, i32 0, i32 55
  store i32 0, i32* %577, align 8
  br label %578

578:                                              ; preds = %575, %570
  %579 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %580 = call i32 @assemble_algorithms(%struct.TYPE_8__* %579)
  %581 = load i32, i32* @use_privsep, align 4
  %582 = icmp eq i32 %581, -1
  br i1 %582, label %583, label %585

583:                                              ; preds = %578
  %584 = load i32, i32* @PRIVSEP_ON, align 4
  store i32 %584, i32* @use_privsep, align 4
  br label %585

585:                                              ; preds = %583, %578
  br label %586

586:                                              ; preds = %585
  %587 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %588 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %587, i32 0, i32 69
  %589 = load i32*, i32** %588, align 8
  %590 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %589)
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %599

592:                                              ; preds = %586
  %593 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %594 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %593, i32 0, i32 69
  %595 = load i32*, i32** %594, align 8
  %596 = call i32 @free(i32* %595)
  %597 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %598 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %597, i32 0, i32 69
  store i32* null, i32** %598, align 8
  br label %599

599:                                              ; preds = %592, %586
  br label %600

600:                                              ; preds = %599
  br label %601

601:                                              ; preds = %600
  %602 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %603 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %602, i32 0, i32 68
  %604 = load i32*, i32** %603, align 8
  %605 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %604)
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %614

607:                                              ; preds = %601
  %608 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %609 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %608, i32 0, i32 68
  %610 = load i32*, i32** %609, align 8
  %611 = call i32 @free(i32* %610)
  %612 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %613 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %612, i32 0, i32 68
  store i32* null, i32** %613, align 8
  br label %614

614:                                              ; preds = %607, %601
  br label %615

615:                                              ; preds = %614
  br label %616

616:                                              ; preds = %615
  %617 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %618 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %617, i32 0, i32 67
  %619 = load i32*, i32** %618, align 8
  %620 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %619)
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %629

622:                                              ; preds = %616
  %623 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %624 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %623, i32 0, i32 67
  %625 = load i32*, i32** %624, align 8
  %626 = call i32 @free(i32* %625)
  %627 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %628 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %627, i32 0, i32 67
  store i32* null, i32** %628, align 8
  br label %629

629:                                              ; preds = %622, %616
  br label %630

630:                                              ; preds = %629
  br label %631

631:                                              ; preds = %630
  %632 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %633 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %632, i32 0, i32 66
  %634 = load i32*, i32** %633, align 8
  %635 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %634)
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %644

637:                                              ; preds = %631
  %638 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %639 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %638, i32 0, i32 66
  %640 = load i32*, i32** %639, align 8
  %641 = call i32 @free(i32* %640)
  %642 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %643 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %642, i32 0, i32 66
  store i32* null, i32** %643, align 8
  br label %644

644:                                              ; preds = %637, %631
  br label %645

645:                                              ; preds = %644
  br label %646

646:                                              ; preds = %645
  %647 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %648 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %647, i32 0, i32 65
  %649 = load i32*, i32** %648, align 8
  %650 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %649)
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %652, label %659

652:                                              ; preds = %646
  %653 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %654 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %653, i32 0, i32 65
  %655 = load i32*, i32** %654, align 8
  %656 = call i32 @free(i32* %655)
  %657 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %658 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %657, i32 0, i32 65
  store i32* null, i32** %658, align 8
  br label %659

659:                                              ; preds = %652, %646
  br label %660

660:                                              ; preds = %659
  br label %661

661:                                              ; preds = %660
  %662 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %663 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %662, i32 0, i32 64
  %664 = load i32*, i32** %663, align 8
  %665 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %664)
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %674

667:                                              ; preds = %661
  %668 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %669 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %668, i32 0, i32 64
  %670 = load i32*, i32** %669, align 8
  %671 = call i32 @free(i32* %670)
  %672 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %673 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %672, i32 0, i32 64
  store i32* null, i32** %673, align 8
  br label %674

674:                                              ; preds = %667, %661
  br label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675
  %677 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %678 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %677, i32 0, i32 63
  %679 = load i32*, i32** %678, align 8
  %680 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %679)
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %689

682:                                              ; preds = %676
  %683 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %684 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %683, i32 0, i32 63
  %685 = load i32*, i32** %684, align 8
  %686 = call i32 @free(i32* %685)
  %687 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %688 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %687, i32 0, i32 63
  store i32* null, i32** %688, align 8
  br label %689

689:                                              ; preds = %682, %676
  br label %690

690:                                              ; preds = %689
  br label %691

691:                                              ; preds = %690
  %692 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %693 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %692, i32 0, i32 62
  %694 = load i32*, i32** %693, align 8
  %695 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %694)
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %697, label %704

697:                                              ; preds = %691
  %698 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %699 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %698, i32 0, i32 62
  %700 = load i32*, i32** %699, align 8
  %701 = call i32 @free(i32* %700)
  %702 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %703 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %702, i32 0, i32 62
  store i32* null, i32** %703, align 8
  br label %704

704:                                              ; preds = %697, %691
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705
  %707 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %708 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %707, i32 0, i32 61
  %709 = load i32*, i32** %708, align 8
  %710 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %709)
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %719

712:                                              ; preds = %706
  %713 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %714 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %713, i32 0, i32 61
  %715 = load i32*, i32** %714, align 8
  %716 = call i32 @free(i32* %715)
  %717 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %718 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %717, i32 0, i32 61
  store i32* null, i32** %718, align 8
  br label %719

719:                                              ; preds = %712, %706
  br label %720

720:                                              ; preds = %719
  store i64 0, i64* %3, align 8
  br label %721

721:                                              ; preds = %752, %720
  %722 = load i64, i64* %3, align 8
  %723 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %724 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %723, i32 0, i32 1
  %725 = load i64, i64* %724, align 8
  %726 = icmp ult i64 %722, %725
  br i1 %726, label %727, label %755

727:                                              ; preds = %721
  br label %728

728:                                              ; preds = %727
  %729 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %730 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %729, i32 0, i32 60
  %731 = load i32**, i32*** %730, align 8
  %732 = load i64, i64* %3, align 8
  %733 = getelementptr inbounds i32*, i32** %731, i64 %732
  %734 = load i32*, i32** %733, align 8
  %735 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %734)
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %750

737:                                              ; preds = %728
  %738 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %739 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %738, i32 0, i32 60
  %740 = load i32**, i32*** %739, align 8
  %741 = load i64, i64* %3, align 8
  %742 = getelementptr inbounds i32*, i32** %740, i64 %741
  %743 = load i32*, i32** %742, align 8
  %744 = call i32 @free(i32* %743)
  %745 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %746 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %745, i32 0, i32 60
  %747 = load i32**, i32*** %746, align 8
  %748 = load i64, i64* %3, align 8
  %749 = getelementptr inbounds i32*, i32** %747, i64 %748
  store i32* null, i32** %749, align 8
  br label %750

750:                                              ; preds = %737, %728
  br label %751

751:                                              ; preds = %750
  br label %752

752:                                              ; preds = %751
  %753 = load i64, i64* %3, align 8
  %754 = add i64 %753, 1
  store i64 %754, i64* %3, align 8
  br label %721

755:                                              ; preds = %721
  store i64 0, i64* %3, align 8
  br label %756

756:                                              ; preds = %787, %755
  %757 = load i64, i64* %3, align 8
  %758 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %759 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %758, i32 0, i32 56
  %760 = load i64, i64* %759, align 8
  %761 = icmp ult i64 %757, %760
  br i1 %761, label %762, label %790

762:                                              ; preds = %756
  br label %763

763:                                              ; preds = %762
  %764 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %765 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %764, i32 0, i32 59
  %766 = load i32**, i32*** %765, align 8
  %767 = load i64, i64* %3, align 8
  %768 = getelementptr inbounds i32*, i32** %766, i64 %767
  %769 = load i32*, i32** %768, align 8
  %770 = call i32 (i32*, ...) bitcast (i32 (...)* @option_clear_or_none to i32 (i32*, ...)*)(i32* %769)
  %771 = icmp ne i32 %770, 0
  br i1 %771, label %772, label %785

772:                                              ; preds = %763
  %773 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %774 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %773, i32 0, i32 59
  %775 = load i32**, i32*** %774, align 8
  %776 = load i64, i64* %3, align 8
  %777 = getelementptr inbounds i32*, i32** %775, i64 %776
  %778 = load i32*, i32** %777, align 8
  %779 = call i32 @free(i32* %778)
  %780 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %781 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %780, i32 0, i32 59
  %782 = load i32**, i32*** %781, align 8
  %783 = load i64, i64* %3, align 8
  %784 = getelementptr inbounds i32*, i32** %782, i64 %783
  store i32* null, i32** %784, align 8
  br label %785

785:                                              ; preds = %772, %763
  br label %786

786:                                              ; preds = %785
  br label %787

787:                                              ; preds = %786
  %788 = load i64, i64* %3, align 8
  %789 = add i64 %788, 1
  store i64 %789, i64* %3, align 8
  br label %756

790:                                              ; preds = %756
  %791 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %792 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %791, i32 0, i32 57
  %793 = load i32, i32* %792, align 8
  %794 = icmp eq i32 %793, 1
  br i1 %794, label %795, label %816

795:                                              ; preds = %790
  %796 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %797 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %796, i32 0, i32 58
  %798 = load i32**, i32*** %797, align 8
  %799 = getelementptr inbounds i32*, i32** %798, i64 0
  %800 = load i32*, i32** %799, align 8
  %801 = call i64 @strcmp(i32* %800, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %802 = icmp eq i64 %801, 0
  br i1 %802, label %803, label %816

803:                                              ; preds = %795
  %804 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %805 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %804, i32 0, i32 58
  %806 = load i32**, i32*** %805, align 8
  %807 = getelementptr inbounds i32*, i32** %806, i64 0
  %808 = load i32*, i32** %807, align 8
  %809 = call i32 @free(i32* %808)
  %810 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %811 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %810, i32 0, i32 58
  %812 = load i32**, i32*** %811, align 8
  %813 = getelementptr inbounds i32*, i32** %812, i64 0
  store i32* null, i32** %813, align 8
  %814 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %815 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %814, i32 0, i32 57
  store i32 0, i32* %815, align 8
  br label %816

816:                                              ; preds = %803, %795, %790
  %817 = load i32, i32* @use_privsep, align 4
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %819, label %829

819:                                              ; preds = %816
  %820 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %821 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %820, i32 0, i32 34
  %822 = load i32, i32* %821, align 4
  %823 = icmp eq i32 %822, 1
  br i1 %823, label %824, label %829

824:                                              ; preds = %819
  %825 = call i32 @error(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0))
  %826 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %827 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %828 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %827, i32 0, i32 34
  store i32 0, i32* %828, align 4
  br label %829

829:                                              ; preds = %824, %819, %816
  ret void
}

declare dso_local i32 @servconf_add_hostkey(i32, i32, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @add_listen_addr(%struct.TYPE_8__*, i32*, i32*, i32) #1

declare dso_local i8* @xstrdup(i32) #1

declare dso_local i32 @array_append(i32, i32, i8*, i32*, i64*, i32) #1

declare dso_local i32 @assemble_algorithms(%struct.TYPE_8__*) #1

declare dso_local i32 @option_clear_or_none(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
