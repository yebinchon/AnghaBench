; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_netcat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/regress/extr_netcat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i8*, i8*, i64 }
%struct.servent = type { i8* }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UNIX_DG_TMP_SOCKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"46DdFhI:i:klNnO:P:p:rSs:tT:UuV:vw:X:x:z\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@family = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"unsupported proxy protocol\00", align 1
@dflag = common dso_local global i32 0, align 4
@Fflag = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@iflag = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"interval %s: %s\00", align 1
@kflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@Pflag = common dso_local global i8* null, align 8
@pflag = common dso_local global i8* null, align 8
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i8* null, align 8
@tflag = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"timeout %s: %s\00", align 1
@xflag = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@zflag = common dso_local global i32 0, align 4
@Dflag = common dso_local global i32 0, align 4
@Iflag = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"TCP receive window %s: %s\00", align 1
@Oflag = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"TCP send window %s: %s\00", align 1
@Sflag = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@Tflag = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [21 x i8] c"illegal tos value %s\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"cannot use -s and -l\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"cannot use -p and -l\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"cannot use -z and -l\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"must use -l with -k\00", align 1
@unix_dg_tmp_socket = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"/tmp/nc.XXXXXXXXXX\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@SOCK_DGRAM = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i8* null, align 8
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"no proxy support for UDP mode\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"no proxy support for listen\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"no proxy support for unix sockets\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"no proxy support for IPv6\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"no proxy support for local source address\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"local_listen\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@portlist = common dso_local global i8** null, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [45 x i8] c"Connection to %s %s port [%s/%s] succeeded!\0A\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@RT_TABLEID_MAX = common dso_local global i32 0, align 4
@rtableid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.servent*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockaddr_storage, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.addrinfo, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [16384 x i8], align 16
  %27 = alloca %struct.sockaddr_storage, align 4
  %28 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %16, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  store i8* null, i8** %19, align 8
  %29 = load i32, i32* @UNIX_DG_TMP_SOCKET_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %21, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %22, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 5, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.servent* null, %struct.servent** %13, align 8
  br label %33

33:                                               ; preds = %187, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = call i32 @getopt(i32 %34, i8** %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %188

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %185 [
    i32 52, label %40
    i32 54, label %42
    i32 85, label %44
    i32 88, label %46
    i32 100, label %66
    i32 70, label %67
    i32 104, label %68
    i32 105, label %70
    i32 107, label %81
    i32 108, label %82
    i32 78, label %83
    i32 110, label %84
    i32 80, label %85
    i32 112, label %87
    i32 114, label %89
    i32 115, label %90
    i32 116, label %92
    i32 117, label %93
    i32 118, label %94
    i32 119, label %95
    i32 120, label %110
    i32 122, label %117
    i32 68, label %118
    i32 73, label %119
    i32 79, label %129
    i32 83, label %139
    i32 84, label %140
  ]

40:                                               ; preds = %38
  %41 = load i64, i64* @AF_INET, align 8
  store i64 %41, i64* @family, align 8
  br label %187

42:                                               ; preds = %38
  %43 = load i64, i64* @AF_INET6, align 8
  store i64 %43, i64* @family, align 8
  br label %187

44:                                               ; preds = %38
  %45 = load i64, i64* @AF_UNIX, align 8
  store i64 %45, i64* @family, align 8
  br label %187

46:                                               ; preds = %38
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @strcasecmp(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 -1, i32* %9, align 4
  br label %65

51:                                               ; preds = %46
  %52 = load i8*, i8** @optarg, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 4, i32* %9, align 4
  br label %64

56:                                               ; preds = %51
  %57 = load i8*, i8** @optarg, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 5, i32* %9, align 4
  br label %63

61:                                               ; preds = %56
  %62 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %60
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %50
  br label %187

66:                                               ; preds = %38
  store i32 1, i32* @dflag, align 4
  br label %187

67:                                               ; preds = %38
  store i32 1, i32* @Fflag, align 4
  br label %187

68:                                               ; preds = %38
  %69 = call i32 (...) @help()
  br label %187

70:                                               ; preds = %38
  %71 = load i8*, i8** @optarg, align 8
  %72 = load i32, i32* @UINT_MAX, align 4
  %73 = call i8* @strtonum(i8* %71, i32 0, i32 %72, i8** %17)
  store i8* %73, i8** @iflag, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i8*, i8** %17, align 8
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %70
  br label %187

81:                                               ; preds = %38
  store i32 1, i32* @kflag, align 4
  br label %187

82:                                               ; preds = %38
  store i32 1, i32* @lflag, align 4
  br label %187

83:                                               ; preds = %38
  store i32 1, i32* @Nflag, align 4
  br label %187

84:                                               ; preds = %38
  store i32 1, i32* @nflag, align 4
  br label %187

85:                                               ; preds = %38
  %86 = load i8*, i8** @optarg, align 8
  store i8* %86, i8** @Pflag, align 8
  br label %187

87:                                               ; preds = %38
  %88 = load i8*, i8** @optarg, align 8
  store i8* %88, i8** @pflag, align 8
  br label %187

89:                                               ; preds = %38
  store i32 1, i32* @rflag, align 4
  br label %187

90:                                               ; preds = %38
  %91 = load i8*, i8** @optarg, align 8
  store i8* %91, i8** @sflag, align 8
  br label %187

92:                                               ; preds = %38
  store i32 1, i32* @tflag, align 4
  br label %187

93:                                               ; preds = %38
  store i32 1, i32* @uflag, align 4
  br label %187

94:                                               ; preds = %38
  store i32 1, i32* @vflag, align 4
  br label %187

95:                                               ; preds = %38
  %96 = load i8*, i8** @optarg, align 8
  %97 = load i32, i32* @INT_MAX, align 4
  %98 = sdiv i32 %97, 1000
  %99 = call i8* @strtonum(i8* %96, i32 0, i32 %98, i8** %17)
  %100 = ptrtoint i8* %99 to i32
  store i32 %100, i32* @timeout, align 4
  %101 = load i8*, i8** %17, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load i8*, i8** %17, align 8
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %95
  %108 = load i32, i32* @timeout, align 4
  %109 = mul nsw i32 %108, 1000
  store i32 %109, i32* @timeout, align 4
  br label %187

110:                                              ; preds = %38
  store i32 1, i32* @xflag, align 4
  %111 = load i8*, i8** @optarg, align 8
  %112 = call i8* @strdup(i8* %111)
  store i8* %112, i8** %16, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %110
  br label %187

117:                                              ; preds = %38
  store i32 1, i32* @zflag, align 4
  br label %187

118:                                              ; preds = %38
  store i32 1, i32* @Dflag, align 4
  br label %187

119:                                              ; preds = %38
  %120 = load i8*, i8** @optarg, align 8
  %121 = call i8* @strtonum(i8* %120, i32 1, i32 1073741824, i8** %17)
  store i8* %121, i8** @Iflag, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i8*, i8** %17, align 8
  %126 = load i8*, i8** @optarg, align 8
  %127 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %125, i8* %126)
  br label %128

128:                                              ; preds = %124, %119
  br label %187

129:                                              ; preds = %38
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i8* @strtonum(i8* %130, i32 1, i32 1073741824, i8** %17)
  store i8* %131, i8** @Oflag, align 8
  %132 = load i8*, i8** %17, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i8*, i8** %17, align 8
  %136 = load i8*, i8** @optarg, align 8
  %137 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %135, i8* %136)
  br label %138

138:                                              ; preds = %134, %129
  br label %187

139:                                              ; preds = %38
  store i32 1, i32* @Sflag, align 4
  br label %187

140:                                              ; preds = %38
  store i8* null, i8** %17, align 8
  store i32 0, i32* @errno, align 4
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i32 @map_tos(i8* %141, i32* @Tflag)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %187

145:                                              ; preds = %140
  %146 = load i8*, i8** @optarg, align 8
  %147 = call i32 @strlen(i8* %146)
  %148 = icmp sgt i32 %147, 1
  br i1 %148, label %149, label %165

149:                                              ; preds = %145
  %150 = load i8*, i8** @optarg, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 48
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = load i8*, i8** @optarg, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 120
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i8*, i8** @optarg, align 8
  %163 = call i64 @strtol(i8* %162, i32* null, i32 16)
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* @Tflag, align 4
  br label %169

165:                                              ; preds = %155, %149, %145
  %166 = load i8*, i8** @optarg, align 8
  %167 = call i8* @strtonum(i8* %166, i32 0, i32 255, i8** %17)
  %168 = ptrtoint i8* %167 to i32
  store i32 %168, i32* @Tflag, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = load i32, i32* @Tflag, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* @Tflag, align 4
  %174 = icmp sgt i32 %173, 255
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %17, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* @errno, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178, %175, %172, %169
  %182 = load i8*, i8** @optarg, align 8
  %183 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %181, %178
  br label %187

185:                                              ; preds = %38
  %186 = call i32 @usage(i32 1)
  br label %187

187:                                              ; preds = %185, %184, %144, %139, %138, %128, %118, %117, %116, %107, %94, %93, %92, %90, %89, %87, %85, %84, %83, %82, %81, %80, %68, %67, %66, %65, %44, %42, %40
  br label %33

188:                                              ; preds = %33
  %189 = load i64, i64* @optind, align 8
  %190 = load i32, i32* %4, align 4
  %191 = sext i32 %190 to i64
  %192 = sub nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %4, align 4
  %194 = load i64, i64* @optind, align 8
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 %194
  store i8** %196, i8*** %5, align 8
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i64 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %214

201:                                              ; preds = %188
  %202 = load i8**, i8*** %5, align 8
  %203 = getelementptr inbounds i8*, i8** %202, i64 1
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %214, label %206

206:                                              ; preds = %201
  %207 = load i64, i64* @family, align 8
  %208 = load i64, i64* @AF_UNIX, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = load i8**, i8*** %5, align 8
  %212 = getelementptr inbounds i8*, i8** %211, i64 0
  %213 = load i8*, i8** %212, align 8
  store i8* %213, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %254

214:                                              ; preds = %206, %201, %188
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %233

219:                                              ; preds = %214
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 1
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %233, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* @lflag, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %229, label %227

227:                                              ; preds = %224
  %228 = call i32 @usage(i32 1)
  br label %229

229:                                              ; preds = %227, %224
  %230 = load i8**, i8*** %5, align 8
  %231 = getelementptr inbounds i8*, i8** %230, i64 0
  %232 = load i8*, i8** %231, align 8
  store i8* %232, i8** %11, align 8
  store i8* null, i8** %10, align 8
  br label %253

233:                                              ; preds = %219, %214
  %234 = load i8**, i8*** %5, align 8
  %235 = getelementptr inbounds i8*, i8** %234, i64 0
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %238, label %250

238:                                              ; preds = %233
  %239 = load i8**, i8*** %5, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 1
  %241 = load i8*, i8** %240, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %238
  %244 = load i8**, i8*** %5, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 0
  %246 = load i8*, i8** %245, align 8
  store i8* %246, i8** %10, align 8
  %247 = load i8**, i8*** %5, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 1
  %249 = load i8*, i8** %248, align 8
  store i8* %249, i8** %11, align 8
  br label %252

250:                                              ; preds = %238, %233
  %251 = call i32 @usage(i32 1)
  br label %252

252:                                              ; preds = %250, %243
  br label %253

253:                                              ; preds = %252, %229
  br label %254

254:                                              ; preds = %253, %210
  %255 = load i32, i32* @lflag, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %254
  %258 = load i8*, i8** @sflag, align 8
  %259 = icmp ne i8* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %257, %254
  %263 = load i32, i32* @lflag, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load i8*, i8** @pflag, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %265, %262
  %271 = load i32, i32* @lflag, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i32, i32* @zflag, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %273
  %277 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %273, %270
  %279 = load i32, i32* @lflag, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* @kflag, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0))
  br label %286

286:                                              ; preds = %284, %281, %278
  %287 = load i64, i64* @family, align 8
  %288 = load i64, i64* @AF_UNIX, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %310

290:                                              ; preds = %286
  %291 = load i32, i32* @uflag, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %310

293:                                              ; preds = %290
  %294 = load i32, i32* @lflag, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %310, label %296

296:                                              ; preds = %293
  %297 = load i8*, i8** @sflag, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %301

299:                                              ; preds = %296
  %300 = load i8*, i8** @sflag, align 8
  store i8* %300, i8** @unix_dg_tmp_socket, align 8
  br label %309

301:                                              ; preds = %296
  %302 = load i32, i32* @UNIX_DG_TMP_SOCKET_SIZE, align 4
  %303 = call i32 @strlcpy(i8* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %302)
  %304 = call i32* @mktemp(i8* %32)
  %305 = icmp eq i32* %304, null
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %301
  store i8* %32, i8** @unix_dg_tmp_socket, align 8
  br label %309

309:                                              ; preds = %308, %299
  br label %310

310:                                              ; preds = %309, %293, %290, %286
  %311 = load i64, i64* @family, align 8
  %312 = load i64, i64* @AF_UNIX, align 8
  %313 = icmp ne i64 %311, %312
  br i1 %313, label %314, label %344

314:                                              ; preds = %310
  %315 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %316 = load i64, i64* @family, align 8
  %317 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i64 %316, i64* %317, align 8
  %318 = load i32, i32* @uflag, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = load i8*, i8** @SOCK_DGRAM, align 8
  br label %324

322:                                              ; preds = %314
  %323 = load i8*, i8** @SOCK_STREAM, align 8
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi i8* [ %321, %320 ], [ %323, %322 ]
  %326 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 2
  store i8* %325, i8** %326, align 8
  %327 = load i32, i32* @uflag, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i8*, i8** @IPPROTO_UDP, align 8
  br label %333

331:                                              ; preds = %324
  %332 = load i8*, i8** @IPPROTO_TCP, align 8
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i8* [ %330, %329 ], [ %332, %331 ]
  %335 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 1
  store i8* %334, i8** %335, align 8
  %336 = load i32, i32* @nflag, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = load i32, i32* @AI_NUMERICHOST, align 4
  %340 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = or i32 %341, %339
  store i32 %342, i32* %340, align 8
  br label %343

343:                                              ; preds = %338, %333
  br label %344

344:                                              ; preds = %343, %310
  %345 = load i32, i32* @xflag, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %392

347:                                              ; preds = %344
  %348 = load i32, i32* @uflag, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %347
  %351 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %352

352:                                              ; preds = %350, %347
  %353 = load i32, i32* @lflag, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  br label %357

357:                                              ; preds = %355, %352
  %358 = load i64, i64* @family, align 8
  %359 = load i64, i64* @AF_UNIX, align 8
  %360 = icmp eq i64 %358, %359
  br i1 %360, label %361, label %363

361:                                              ; preds = %357
  %362 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  br label %363

363:                                              ; preds = %361, %357
  %364 = load i64, i64* @family, align 8
  %365 = load i64, i64* @AF_INET6, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %369

367:                                              ; preds = %363
  %368 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  br label %369

369:                                              ; preds = %367, %363
  %370 = load i8*, i8** @sflag, align 8
  %371 = icmp ne i8* %370, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %369
  %373 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %369
  %375 = call i8* @strsep(i8** %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  store i8* %375, i8** %18, align 8
  %376 = load i8*, i8** %16, align 8
  store i8* %376, i8** %19, align 8
  %377 = call i32 @memset(%struct.addrinfo* %20, i32 0, i32 32)
  %378 = load i64, i64* @family, align 8
  %379 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 3
  store i64 %378, i64* %379, align 8
  %380 = load i8*, i8** @SOCK_STREAM, align 8
  %381 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 2
  store i8* %380, i8** %381, align 8
  %382 = load i8*, i8** @IPPROTO_TCP, align 8
  %383 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 1
  store i8* %382, i8** %383, align 8
  %384 = load i32, i32* @nflag, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %374
  %387 = load i32, i32* @AI_NUMERICHOST, align 4
  %388 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = or i32 %389, %387
  store i32 %390, i32* %388, align 8
  br label %391

391:                                              ; preds = %386, %374
  br label %392

392:                                              ; preds = %391, %344
  %393 = load i32, i32* @lflag, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %514

395:                                              ; preds = %392
  store i32 0, i32* %8, align 4
  %396 = load i64, i64* @family, align 8
  %397 = load i64, i64* @AF_UNIX, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %409

399:                                              ; preds = %395
  %400 = load i32, i32* @uflag, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %399
  %403 = load i8*, i8** %10, align 8
  %404 = call i32 @unix_bind(i8* %403)
  store i32 %404, i32* %7, align 4
  br label %408

405:                                              ; preds = %399
  %406 = load i8*, i8** %10, align 8
  %407 = call i32 @unix_listen(i8* %406)
  store i32 %407, i32* %7, align 4
  br label %408

408:                                              ; preds = %405, %402
  br label %409

409:                                              ; preds = %408, %395
  br label %410

410:                                              ; preds = %512, %409
  %411 = load i64, i64* @family, align 8
  %412 = load i64, i64* @AF_UNIX, align 8
  %413 = icmp ne i64 %411, %412
  br i1 %413, label %414, label %418

414:                                              ; preds = %410
  %415 = load i8*, i8** %10, align 8
  %416 = load i8*, i8** %11, align 8
  %417 = call i32 @local_listen(i8* %415, i8* %416, %struct.addrinfo* byval(%struct.addrinfo) align 8 %12)
  store i32 %417, i32* %7, align 4
  br label %418

418:                                              ; preds = %414, %410
  %419 = load i32, i32* %7, align 4
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = call i32 @err(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %418
  %424 = load i32, i32* @uflag, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %432

426:                                              ; preds = %423
  %427 = load i32, i32* @kflag, align 4
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %426
  %430 = load i32, i32* %7, align 4
  %431 = call i32 @readwrite(i32 %430)
  br label %490

432:                                              ; preds = %426, %423
  %433 = load i32, i32* @uflag, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %469

435:                                              ; preds = %432
  %436 = load i32, i32* @kflag, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %469, label %438

438:                                              ; preds = %435
  store i32 4, i32* %14, align 4
  store i32 2048, i32* %25, align 4
  %439 = load i32, i32* %7, align 4
  %440 = getelementptr inbounds [16384 x i8], [16384 x i8]* %26, i64 0, i64 0
  %441 = load i32, i32* %25, align 4
  %442 = load i32, i32* @MSG_PEEK, align 4
  %443 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr*
  %444 = call i32 @recvfrom(i32 %439, i8* %440, i32 %441, i32 %442, %struct.sockaddr* %443, i32* %14)
  store i32 %444, i32* %24, align 4
  %445 = load i32, i32* %24, align 4
  %446 = icmp slt i32 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %438
  %448 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %449

449:                                              ; preds = %447, %438
  %450 = load i32, i32* %7, align 4
  %451 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr*
  %452 = load i32, i32* %14, align 4
  %453 = call i64 @connect(i32 %450, %struct.sockaddr* %451, i32 %452)
  %454 = trunc i64 %453 to i32
  store i32 %454, i32* %24, align 4
  %455 = load i32, i32* %24, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %459

457:                                              ; preds = %449
  %458 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %459

459:                                              ; preds = %457, %449
  %460 = load i32, i32* @vflag, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %466

462:                                              ; preds = %459
  %463 = bitcast %struct.sockaddr_storage* %27 to %struct.sockaddr*
  %464 = load i32, i32* %14, align 4
  %465 = call i32 @report_connect(%struct.sockaddr* %463, i32 %464)
  br label %466

466:                                              ; preds = %462, %459
  %467 = load i32, i32* %7, align 4
  %468 = call i32 @readwrite(i32 %467)
  br label %489

469:                                              ; preds = %435, %432
  store i32 4, i32* %14, align 4
  %470 = load i32, i32* %7, align 4
  %471 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  %472 = call i32 @accept(i32 %470, %struct.sockaddr* %471, i32* %14)
  store i32 %472, i32* %23, align 4
  %473 = load i32, i32* %23, align 4
  %474 = icmp eq i32 %473, -1
  br i1 %474, label %475, label %477

475:                                              ; preds = %469
  %476 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %477

477:                                              ; preds = %475, %469
  %478 = load i32, i32* @vflag, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %484

480:                                              ; preds = %477
  %481 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  %482 = load i32, i32* %14, align 4
  %483 = call i32 @report_connect(%struct.sockaddr* %481, i32 %482)
  br label %484

484:                                              ; preds = %480, %477
  %485 = load i32, i32* %23, align 4
  %486 = call i32 @readwrite(i32 %485)
  %487 = load i32, i32* %23, align 4
  %488 = call i32 @close(i32 %487)
  br label %489

489:                                              ; preds = %484, %466
  br label %490

490:                                              ; preds = %489, %429
  %491 = load i64, i64* @family, align 8
  %492 = load i64, i64* @AF_UNIX, align 8
  %493 = icmp ne i64 %491, %492
  br i1 %493, label %494, label %497

494:                                              ; preds = %490
  %495 = load i32, i32* %7, align 4
  %496 = call i32 @close(i32 %495)
  br label %508

497:                                              ; preds = %490
  %498 = load i32, i32* @uflag, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %507

500:                                              ; preds = %497
  %501 = load i32, i32* %7, align 4
  %502 = call i64 @connect(i32 %501, %struct.sockaddr* null, i32 0)
  %503 = icmp slt i64 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %500
  %505 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %506

506:                                              ; preds = %504, %500
  br label %507

507:                                              ; preds = %506, %497
  br label %508

508:                                              ; preds = %507, %494
  %509 = load i32, i32* @kflag, align 4
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %512, label %511

511:                                              ; preds = %508
  br label %513

512:                                              ; preds = %508
  br label %410

513:                                              ; preds = %511
  br label %656

514:                                              ; preds = %392
  %515 = load i64, i64* @family, align 8
  %516 = load i64, i64* @AF_UNIX, align 8
  %517 = icmp eq i64 %515, %516
  br i1 %517, label %518, label %540

518:                                              ; preds = %514
  store i32 0, i32* %8, align 4
  %519 = load i8*, i8** %10, align 8
  %520 = call i32 @unix_connect(i8* %519)
  store i32 %520, i32* %7, align 4
  %521 = icmp sgt i32 %520, 0
  br i1 %521, label %522, label %530

522:                                              ; preds = %518
  %523 = load i32, i32* @zflag, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %530, label %525

525:                                              ; preds = %522
  %526 = load i32, i32* %7, align 4
  %527 = call i32 @readwrite(i32 %526)
  %528 = load i32, i32* %7, align 4
  %529 = call i32 @close(i32 %528)
  br label %531

530:                                              ; preds = %522, %518
  store i32 1, i32* %8, align 4
  br label %531

531:                                              ; preds = %530, %525
  %532 = load i32, i32* @uflag, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %537

534:                                              ; preds = %531
  %535 = load i8*, i8** @unix_dg_tmp_socket, align 8
  %536 = call i32 @unlink(i8* %535)
  br label %537

537:                                              ; preds = %534, %531
  %538 = load i32, i32* %8, align 4
  %539 = call i32 @exit(i32 %538) #4
  unreachable

540:                                              ; preds = %514
  store i32 0, i32* %28, align 4
  %541 = load i8*, i8** %11, align 8
  %542 = call i32 @build_ports(i8* %541)
  store i32 0, i32* %28, align 4
  br label %543

543:                                              ; preds = %651, %540
  %544 = load i8**, i8*** @portlist, align 8
  %545 = load i32, i32* %28, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8*, i8** %544, i64 %546
  %548 = load i8*, i8** %547, align 8
  %549 = icmp ne i8* %548, null
  br i1 %549, label %550, label %654

550:                                              ; preds = %543
  %551 = load i32, i32* %7, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %556

553:                                              ; preds = %550
  %554 = load i32, i32* %7, align 4
  %555 = call i32 @close(i32 %554)
  br label %556

556:                                              ; preds = %553, %550
  %557 = load i32, i32* @xflag, align 4
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %571

559:                                              ; preds = %556
  %560 = load i8*, i8** %10, align 8
  %561 = load i8**, i8*** @portlist, align 8
  %562 = load i32, i32* %28, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i8*, i8** %561, i64 %563
  %565 = load i8*, i8** %564, align 8
  %566 = load i8*, i8** %18, align 8
  %567 = load i8*, i8** %19, align 8
  %568 = load i32, i32* %9, align 4
  %569 = load i8*, i8** @Pflag, align 8
  %570 = call i32 @socks_connect(i8* %560, i8* %565, %struct.addrinfo* byval(%struct.addrinfo) align 8 %12, i8* %566, i8* %567, %struct.addrinfo* byval(%struct.addrinfo) align 8 %20, i32 %568, i8* %569)
  store i32 %570, i32* %7, align 4
  br label %579

571:                                              ; preds = %556
  %572 = load i8*, i8** %10, align 8
  %573 = load i8**, i8*** @portlist, align 8
  %574 = load i32, i32* %28, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8*, i8** %573, i64 %575
  %577 = load i8*, i8** %576, align 8
  %578 = call i32 @remote_connect(i8* %572, i8* %577, %struct.addrinfo* byval(%struct.addrinfo) align 8 %12)
  store i32 %578, i32* %7, align 4
  br label %579

579:                                              ; preds = %571, %559
  %580 = load i32, i32* %7, align 4
  %581 = icmp slt i32 %580, 0
  br i1 %581, label %582, label %583

582:                                              ; preds = %579
  br label %651

583:                                              ; preds = %579
  store i32 0, i32* %8, align 4
  %584 = load i32, i32* @vflag, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %589, label %586

586:                                              ; preds = %583
  %587 = load i32, i32* @zflag, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %637

589:                                              ; preds = %586, %583
  %590 = load i32, i32* @uflag, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %598

592:                                              ; preds = %589
  %593 = load i32, i32* %7, align 4
  %594 = call i32 @udptest(i32 %593)
  %595 = icmp eq i32 %594, -1
  br i1 %595, label %596, label %597

596:                                              ; preds = %592
  store i32 1, i32* %8, align 4
  br label %651

597:                                              ; preds = %592
  br label %598

598:                                              ; preds = %597, %589
  %599 = load i32, i32* @nflag, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %602

601:                                              ; preds = %598
  store %struct.servent* null, %struct.servent** %13, align 8
  br label %615

602:                                              ; preds = %598
  %603 = load i8**, i8*** @portlist, align 8
  %604 = load i32, i32* %28, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8*, i8** %603, i64 %605
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 @atoi(i8* %607)
  %609 = call i32 @ntohs(i32 %608)
  %610 = load i32, i32* @uflag, align 4
  %611 = icmp ne i32 %610, 0
  %612 = zext i1 %611 to i64
  %613 = select i1 %611, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)
  %614 = call %struct.servent* @getservbyport(i32 %609, i8* %613)
  store %struct.servent* %614, %struct.servent** %13, align 8
  br label %615

615:                                              ; preds = %602, %601
  %616 = load i32, i32* @stderr, align 4
  %617 = load i8*, i8** %10, align 8
  %618 = load i8**, i8*** @portlist, align 8
  %619 = load i32, i32* %28, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8*, i8** %618, i64 %620
  %622 = load i8*, i8** %621, align 8
  %623 = load i32, i32* @uflag, align 4
  %624 = icmp ne i32 %623, 0
  %625 = zext i1 %624 to i64
  %626 = select i1 %624, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0)
  %627 = load %struct.servent*, %struct.servent** %13, align 8
  %628 = icmp ne %struct.servent* %627, null
  br i1 %628, label %629, label %633

629:                                              ; preds = %615
  %630 = load %struct.servent*, %struct.servent** %13, align 8
  %631 = getelementptr inbounds %struct.servent, %struct.servent* %630, i32 0, i32 0
  %632 = load i8*, i8** %631, align 8
  br label %634

633:                                              ; preds = %615
  br label %634

634:                                              ; preds = %633, %629
  %635 = phi i8* [ %632, %629 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), %633 ]
  %636 = call i32 @fprintf(i32 %616, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.29, i64 0, i64 0), i8* %617, i8* %622, i8* %626, i8* %635)
  br label %637

637:                                              ; preds = %634, %586
  %638 = load i32, i32* @Fflag, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %637
  %641 = load i32, i32* %7, align 4
  %642 = call i32 @fdpass(i32 %641)
  br label %650

643:                                              ; preds = %637
  %644 = load i32, i32* @zflag, align 4
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %649, label %646

646:                                              ; preds = %643
  %647 = load i32, i32* %7, align 4
  %648 = call i32 @readwrite(i32 %647)
  br label %649

649:                                              ; preds = %646, %643
  br label %650

650:                                              ; preds = %649, %640
  br label %651

651:                                              ; preds = %650, %596, %582
  %652 = load i32, i32* %28, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* %28, align 4
  br label %543

654:                                              ; preds = %543
  br label %655

655:                                              ; preds = %654
  br label %656

656:                                              ; preds = %655, %513
  %657 = load i32, i32* %7, align 4
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %662

659:                                              ; preds = %656
  %660 = load i32, i32* %7, align 4
  %661 = call i32 @close(i32 %660)
  br label %662

662:                                              ; preds = %659, %656
  %663 = load i32, i32* %8, align 4
  %664 = call i32 @exit(i32 %663) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @help(...) #2

declare dso_local i8* @strtonum(i8*, i32, i32, i8**) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @map_tos(i8*, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strtol(i8*, i32*, i32) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32* @mktemp(i8*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @unix_bind(i8*) #2

declare dso_local i32 @unix_listen(i8*) #2

declare dso_local i32 @local_listen(i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8) #2

declare dso_local i32 @readwrite(i32) #2

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @report_connect(%struct.sockaddr*, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @unix_connect(i8*) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @build_ports(i8*) #2

declare dso_local i32 @socks_connect(i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8, i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8, i32, i8*) #2

declare dso_local i32 @remote_connect(i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8) #2

declare dso_local i32 @udptest(i32) #2

declare dso_local %struct.servent* @getservbyport(i32, i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @fdpass(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
