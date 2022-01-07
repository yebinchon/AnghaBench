; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_umountfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_umountfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i8*, i8*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.timeval = type { i32, i64 }
%struct.addrinfo = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nfscl_dumpmntopts = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't get net id for host\00", align 1
@CHECKUNIQUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@NFSSVC_DUMPMNTOPTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"nfsv4,\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c",tcp,\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"FSID:%d:%d\00", align 1
@fflag = common dso_local global i32 0, align 4
@MNT_BYFSID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"unmount of %s failed\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"retrying using path instead of file system ID\00", align 1
@REMOVE = common dso_local global i32 0, align 4
@vflag = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"%s: unmount from %s\0A\00", align 1
@MNT_FORCE = common dso_local global i32 0, align 4
@MOUNTPROG = common dso_local global i32 0, align 4
@MOUNTVERS3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"MOUNTPROG\00", align 1
@MOUNTPROC_UMNT = common dso_local global i32 0, align 4
@xdr_dir = common dso_local global i64 0, align 8
@xdr_void = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"RPCMNT_UMOUNT\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"cannot remove mounttab entry %s:%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @umountfs(%struct.statfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [1024 x i8], align 16
  %16 = alloca %struct.nfscl_dumpmntopts, align 8
  %17 = alloca i8*, align 8
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  store i8* null, i8** %17, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %11, align 8
  %18 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 4)
  %19 = load %struct.statfs*, %struct.statfs** %3, align 8
  %20 = getelementptr inbounds %struct.statfs, %struct.statfs* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @strcmp(i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %107

24:                                               ; preds = %1
  %25 = load %struct.statfs*, %struct.statfs** %3, align 8
  %26 = getelementptr inbounds %struct.statfs, %struct.statfs* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strdup(i8* %27)
  store i8* %28, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 91
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i8* @strchr(i8* %40, i8 signext 93)
  store i8* %41, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load i8*, i8** %14, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 58
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 1
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %11, align 8
  br label %63

54:                                               ; preds = %43, %38, %32
  %55 = load i8*, i8** %11, align 8
  %56 = call i8* @strrchr(i8* %55, i8 signext 58)
  store i8* %56, i8** %14, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %11, align 8
  store i8* %59, i8** %13, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i8*, i8** %14, align 8
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @getaddrinfo(i8* %68, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %7)
  %70 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %71 = icmp eq %struct.addrinfo* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %66
  br label %75

75:                                               ; preds = %74, %63
  %76 = load %struct.statfs*, %struct.statfs** %3, align 8
  %77 = getelementptr inbounds %struct.statfs, %struct.statfs* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i32, i32* @CHECKUNIQUE, align 4
  %80 = call i32* @getmntentry(i8* %78, i32* null, %struct.TYPE_8__* null, i32 %79)
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %106

82:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %17, align 8
  %83 = load %struct.statfs*, %struct.statfs** %3, align 8
  %84 = getelementptr inbounds %struct.statfs, %struct.statfs* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds %struct.nfscl_dumpmntopts, %struct.nfscl_dumpmntopts* %16, i32 0, i32 0
  store i8* %85, i8** %86, align 8
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %88 = getelementptr inbounds %struct.nfscl_dumpmntopts, %struct.nfscl_dumpmntopts* %16, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = getelementptr inbounds %struct.nfscl_dumpmntopts, %struct.nfscl_dumpmntopts* %16, i32 0, i32 2
  store i32 1024, i32* %89, align 8
  %90 = load i32, i32* @NFSSVC_DUMPMNTOPTS, align 4
  %91 = call i64 @nfssvc(i32 %90, %struct.nfscl_dumpmntopts* %16)
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %82
  %94 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %95 = call i32* @strstr(i8* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %9, align 4
  br label %104

98:                                               ; preds = %93
  %99 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i64 0, i64 0
  %100 = call i32* @strstr(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8** %17, align 8
  br label %103

103:                                              ; preds = %102, %98
  br label %104

104:                                              ; preds = %103, %97
  br label %105

105:                                              ; preds = %104, %82
  br label %106

106:                                              ; preds = %105, %75
  br label %107

107:                                              ; preds = %106, %1
  %108 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %109 = call i32 @namematch(%struct.addrinfo* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @free(i8* %112)
  store i32 1, i32* %2, align 4
  br label %291

114:                                              ; preds = %107
  %115 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %116 = load %struct.statfs*, %struct.statfs** %3, align 8
  %117 = getelementptr inbounds %struct.statfs, %struct.statfs* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.statfs*, %struct.statfs** %3, align 8
  %123 = getelementptr inbounds %struct.statfs, %struct.statfs* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @snprintf(i8* %115, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %121, i32 %127)
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %130 = load i32, i32* @fflag, align 4
  %131 = load i32, i32* @MNT_BYFSID, align 4
  %132 = or i32 %130, %131
  %133 = call i64 @unmount(i8* %129, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %200

135:                                              ; preds = %114
  %136 = load i64, i64* @errno, align 8
  %137 = load i64, i64* @ENOENT, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %155, label %139

139:                                              ; preds = %135
  %140 = load %struct.statfs*, %struct.statfs** %3, align 8
  %141 = getelementptr inbounds %struct.statfs, %struct.statfs* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %139
  %148 = load %struct.statfs*, %struct.statfs** %3, align 8
  %149 = getelementptr inbounds %struct.statfs, %struct.statfs* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %147, %139, %135
  %156 = load %struct.statfs*, %struct.statfs** %3, align 8
  %157 = getelementptr inbounds %struct.statfs, %struct.statfs* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %158)
  br label %160

160:                                              ; preds = %155, %147
  %161 = load i64, i64* @errno, align 8
  %162 = load i64, i64* @ENOENT, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %167

164:                                              ; preds = %160
  %165 = load i8*, i8** %12, align 8
  %166 = call i32 @free(i8* %165)
  store i32 1, i32* %2, align 4
  br label %291

167:                                              ; preds = %160
  %168 = load %struct.statfs*, %struct.statfs** %3, align 8
  %169 = getelementptr inbounds %struct.statfs, %struct.statfs* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %167
  %176 = load %struct.statfs*, %struct.statfs** %3, align 8
  %177 = getelementptr inbounds %struct.statfs, %struct.statfs* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %175, %167
  %184 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %175
  %186 = load %struct.statfs*, %struct.statfs** %3, align 8
  %187 = getelementptr inbounds %struct.statfs, %struct.statfs* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = load i32, i32* @fflag, align 4
  %190 = call i64 @unmount(i8* %188, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %185
  %193 = load %struct.statfs*, %struct.statfs** %3, align 8
  %194 = getelementptr inbounds %struct.statfs, %struct.statfs* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %195)
  %197 = load i8*, i8** %12, align 8
  %198 = call i32 @free(i8* %197)
  store i32 1, i32* %2, align 4
  br label %291

199:                                              ; preds = %185
  br label %200

200:                                              ; preds = %199, %114
  %201 = load %struct.statfs*, %struct.statfs** %3, align 8
  %202 = getelementptr inbounds %struct.statfs, %struct.statfs* %201, i32 0, i32 2
  %203 = load i32, i32* @REMOVE, align 4
  %204 = call i32* @getmntentry(i8* null, i32* null, %struct.TYPE_8__* %202, i32 %203)
  %205 = load i64, i64* @vflag, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %200
  %208 = load %struct.statfs*, %struct.statfs** %3, align 8
  %209 = getelementptr inbounds %struct.statfs, %struct.statfs* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.statfs*, %struct.statfs** %3, align 8
  %212 = getelementptr inbounds %struct.statfs, %struct.statfs* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %210, i8* %213)
  br label %215

215:                                              ; preds = %207, %200
  %216 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %217 = icmp ne %struct.addrinfo* %216, null
  br i1 %217, label %218, label %288

218:                                              ; preds = %215
  %219 = load i32, i32* @fflag, align 4
  %220 = load i32, i32* @MNT_FORCE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %288, label %223

223:                                              ; preds = %218
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %288

226:                                              ; preds = %223
  %227 = load i8*, i8** %13, align 8
  %228 = load i32, i32* @MOUNTPROG, align 4
  %229 = load i32, i32* @MOUNTVERS3, align 4
  %230 = load i8*, i8** %17, align 8
  %231 = call %struct.TYPE_7__* @clnt_create(i8* %227, i32 %228, i32 %229, i8* %230)
  store %struct.TYPE_7__* %231, %struct.TYPE_7__** %10, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %233 = icmp eq %struct.TYPE_7__* %232, null
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i8*, i8** %13, align 8
  %236 = call i8* @clnt_spcreateerror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0))
  %237 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %235, i8* %236)
  %238 = load i8*, i8** %12, align 8
  %239 = call i32 @free(i8* %238)
  store i32 1, i32* %2, align 4
  br label %291

240:                                              ; preds = %226
  %241 = call i32 (...) @authsys_create_default()
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 20, i32* %244, align 8
  %245 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %245, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %247 = load i32, i32* @MOUNTPROC_UMNT, align 4
  %248 = load i64, i64* @xdr_dir, align 8
  %249 = trunc i64 %248 to i32
  %250 = load i8*, i8** %11, align 8
  %251 = load i64, i64* @xdr_void, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @clnt_call(%struct.TYPE_7__* %246, i32 %247, i32 %249, i8* %250, i32 %252, i32 0, %struct.timeval* byval(%struct.timeval) align 8 %6)
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = load i32, i32* @RPC_SUCCESS, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %240
  %258 = load i8*, i8** %13, align 8
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %260 = call i8* @clnt_sperror(%struct.TYPE_7__* %259, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %261 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %258, i8* %260)
  %262 = load i8*, i8** %12, align 8
  %263 = call i32 @free(i8* %262)
  store i32 1, i32* %2, align 4
  br label %291

264:                                              ; preds = %240
  %265 = call i64 (...) @read_mtab()
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %281

267:                                              ; preds = %264
  %268 = load i8*, i8** %13, align 8
  %269 = load i8*, i8** %11, align 8
  %270 = load i64, i64* @vflag, align 8
  %271 = call i32 @clean_mtab(i8* %268, i8* %269, i64 %270)
  %272 = load i64, i64* @vflag, align 8
  %273 = call i32 @write_mtab(i64 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %279, label %275

275:                                              ; preds = %267
  %276 = load i8*, i8** %13, align 8
  %277 = load i8*, i8** %11, align 8
  %278 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0), i8* %276, i8* %277)
  br label %279

279:                                              ; preds = %275, %267
  %280 = call i32 (...) @free_mtab()
  br label %281

281:                                              ; preds = %279, %264
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @auth_destroy(i32 %284)
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %287 = call i32 @clnt_destroy(%struct.TYPE_7__* %286)
  br label %288

288:                                              ; preds = %281, %223, %218, %215
  %289 = load i8*, i8** %12, align 8
  %290 = call i32 @free(i8* %289)
  store i32 0, i32* %2, align 4
  br label %291

291:                                              ; preds = %288, %257, %234, %192, %164, %111
  %292 = load i32, i32* %2, align 4
  ret i32 %292
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32* @getmntentry(i8*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @nfssvc(i32, %struct.nfscl_dumpmntopts*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @namematch(%struct.addrinfo*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @unmount(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_7__* @clnt_create(i8*, i32, i32, i8*) #1

declare dso_local i8* @clnt_spcreateerror(i8*) #1

declare dso_local i32 @authsys_create_default(...) #1

declare dso_local i32 @clnt_call(%struct.TYPE_7__*, i32, i32, i8*, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i8* @clnt_sperror(%struct.TYPE_7__*, i8*) #1

declare dso_local i64 @read_mtab(...) #1

declare dso_local i32 @clean_mtab(i8*, i8*, i64) #1

declare dso_local i32 @write_mtab(i64) #1

declare dso_local i32 @free_mtab(...) #1

declare dso_local i32 @auth_destroy(i32) #1

declare dso_local i32 @clnt_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
