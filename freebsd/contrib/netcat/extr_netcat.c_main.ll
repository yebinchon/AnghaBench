; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netcat/extr_netcat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i8*, i8*, i64 }
%struct.servent = type { i8* }
%struct.sockaddr_storage = type { i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@UNIX_DG_TMP_SOCKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"no-tcpopt\00", align 1
@no_argument = common dso_local global i32 0, align 4
@FreeBSD_Oflag = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"46DdEe:FhI:i:klNnoO:P:p:rSs:tT:UuV:vw:X:x:z\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@family = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AF_UNIX = common dso_local global i64 0, align 8
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"unsupported proxy protocol\00", align 1
@dflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"IPsec support unavailable.\00", align 1
@Fflag = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@iflag = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"interval %s: %s\00", align 1
@kflag = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"option -o is deprecated.\0A\00", align 1
@Pflag = common dso_local global i8* null, align 8
@pflag = common dso_local global i8* null, align 8
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i8* null, align 8
@tflag = common dso_local global i32 0, align 4
@uflag = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"net.fibs\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Multiple FIBS not supported\00", align 1
@rtableid = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"rtable %s: %s\00", align 1
@vflag = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"timeout %s: %s\00", align 1
@xflag = common dso_local global i32 0, align 4
@zflag = common dso_local global i32 0, align 4
@Dflag = common dso_local global i32 0, align 4
@Iflag = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"TCP receive window %s: %s\00", align 1
@Oflag = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"TCP send window %s: %s\00", align 1
@Sflag = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@Tflag = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"illegal tos value %s\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c"cannot use -s and -l\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"cannot use -p and -l\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"cannot use -z and -l\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"must use -l with -k\00", align 1
@unix_dg_tmp_socket = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [19 x i8] c"/tmp/nc.XXXXXXXXXX\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"mktemp\00", align 1
@SOCK_DGRAM = common dso_local global i8* null, align 8
@SOCK_STREAM = common dso_local global i8* null, align 8
@IPPROTO_UDP = common dso_local global i8* null, align 8
@IPPROTO_TCP = common dso_local global i8* null, align 8
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [30 x i8] c"no proxy support for UDP mode\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"no proxy support for listen\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"no proxy support for unix sockets\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"no proxy support for IPv6\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"no proxy support for local source address\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c":\00", align 1
@MSG_PEEK = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"recvfrom\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@portlist = common dso_local global i8** null, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"Connection to %s %s port [%s/%s] succeeded!\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@ipsec_policy = common dso_local global i8** null, align 8

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
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.servent*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_storage, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.addrinfo, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca [2 x %struct.option], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [16384 x i8], align 16
  %31 = alloca %struct.sockaddr_storage, align 4
  %32 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 4, i64* %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  store i8* null, i8** %22, align 8
  %33 = load i32, i32* @UNIX_DG_TMP_SOCKET_SIZE, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %24, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %25, align 8
  %37 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %26, i64 0, i64 0
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 1
  %40 = load i32, i32* @no_argument, align 4
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 2
  store i32* @FreeBSD_Oflag, i32** %41, align 16
  %42 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 3
  store i32 1, i32* %42, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %44 = bitcast %struct.option* %43 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %44, i8 0, i64 32, i1 false)
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 5, i32* %9, align 4
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store %struct.servent* null, %struct.servent** %16, align 8
  %45 = load i32, i32* @SIGPIPE, align 4
  %46 = load i32, i32* @SIG_IGN, align 4
  %47 = call i32 @signal(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %233, %2
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %26, i64 0, i64 0
  %52 = call i32 @getopt_long(i32 %49, i8** %50, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.option* %51, i32* null)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %234

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %231 [
    i32 52, label %56
    i32 54, label %58
    i32 85, label %60
    i32 88, label %62
    i32 100, label %82
    i32 101, label %83
    i32 69, label %85
    i32 70, label %87
    i32 104, label %88
    i32 105, label %90
    i32 107, label %101
    i32 108, label %102
    i32 78, label %103
    i32 110, label %104
    i32 111, label %105
    i32 80, label %108
    i32 112, label %110
    i32 114, label %112
    i32 115, label %113
    i32 116, label %115
    i32 117, label %116
    i32 86, label %117
    i32 118, label %135
    i32 119, label %136
    i32 120, label %151
    i32 122, label %158
    i32 68, label %159
    i32 73, label %160
    i32 79, label %170
    i32 83, label %185
    i32 84, label %186
  ]

56:                                               ; preds = %54
  %57 = load i64, i64* @AF_INET, align 8
  store i64 %57, i64* @family, align 8
  br label %233

58:                                               ; preds = %54
  %59 = load i64, i64* @AF_INET6, align 8
  store i64 %59, i64* @family, align 8
  br label %233

60:                                               ; preds = %54
  %61 = load i64, i64* @AF_UNIX, align 8
  store i64 %61, i64* @family, align 8
  br label %233

62:                                               ; preds = %54
  %63 = load i8*, i8** @optarg, align 8
  %64 = call i32 @strcasecmp(i8* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 -1, i32* %9, align 4
  br label %81

67:                                               ; preds = %62
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 4, i32* %9, align 4
  br label %80

72:                                               ; preds = %67
  %73 = load i8*, i8** @optarg, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 5, i32* %9, align 4
  br label %79

77:                                               ; preds = %72
  %78 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %76
  br label %80

80:                                               ; preds = %79, %71
  br label %81

81:                                               ; preds = %80, %66
  br label %233

82:                                               ; preds = %54
  store i32 1, i32* @dflag, align 4
  br label %233

83:                                               ; preds = %54
  %84 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %233

85:                                               ; preds = %54
  %86 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %233

87:                                               ; preds = %54
  store i32 1, i32* @Fflag, align 4
  br label %233

88:                                               ; preds = %54
  %89 = call i32 (...) @help()
  br label %233

90:                                               ; preds = %54
  %91 = load i8*, i8** @optarg, align 8
  %92 = load i32, i32* @UINT_MAX, align 4
  %93 = call i8* @strtonum(i8* %91, i32 0, i32 %92, i8** %20)
  store i8* %93, i8** @iflag, align 8
  %94 = load i8*, i8** %20, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i8*, i8** %20, align 8
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %96, %90
  br label %233

101:                                              ; preds = %54
  store i32 1, i32* @kflag, align 4
  br label %233

102:                                              ; preds = %54
  store i32 1, i32* @lflag, align 4
  br label %233

103:                                              ; preds = %54
  store i32 1, i32* @Nflag, align 4
  br label %233

104:                                              ; preds = %54
  store i32 1, i32* @nflag, align 4
  br label %233

105:                                              ; preds = %54
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %233

108:                                              ; preds = %54
  %109 = load i8*, i8** @optarg, align 8
  store i8* %109, i8** @Pflag, align 8
  br label %233

110:                                              ; preds = %54
  %111 = load i8*, i8** @optarg, align 8
  store i8* %111, i8** @pflag, align 8
  br label %233

112:                                              ; preds = %54
  store i32 1, i32* @rflag, align 4
  br label %233

113:                                              ; preds = %54
  %114 = load i8*, i8** @optarg, align 8
  store i8* %114, i8** @sflag, align 8
  br label %233

115:                                              ; preds = %54
  store i32 1, i32* @tflag, align 4
  br label %233

116:                                              ; preds = %54
  store i32 1, i32* @uflag, align 4
  br label %233

117:                                              ; preds = %54
  %118 = call i32 @sysctlbyname(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32* %11, i64* %12, i32* null, i32 0)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i8*, i8** @optarg, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sub nsw i32 %124, 1
  %126 = call i8* @strtonum(i8* %123, i32 0, i32 %125, i8** %20)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* @rtableid, align 4
  %128 = load i8*, i8** %20, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load i8*, i8** %20, align 8
  %132 = load i8*, i8** @optarg, align 8
  %133 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %131, i8* %132)
  br label %134

134:                                              ; preds = %130, %122
  br label %233

135:                                              ; preds = %54
  store i32 1, i32* @vflag, align 4
  br label %233

136:                                              ; preds = %54
  %137 = load i8*, i8** @optarg, align 8
  %138 = load i32, i32* @INT_MAX, align 4
  %139 = sdiv i32 %138, 1000
  %140 = call i8* @strtonum(i8* %137, i32 0, i32 %139, i8** %20)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* @timeout, align 4
  %142 = load i8*, i8** %20, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i8*, i8** %20, align 8
  %146 = load i8*, i8** @optarg, align 8
  %147 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i8* %145, i8* %146)
  br label %148

148:                                              ; preds = %144, %136
  %149 = load i32, i32* @timeout, align 4
  %150 = mul nsw i32 %149, 1000
  store i32 %150, i32* @timeout, align 4
  br label %233

151:                                              ; preds = %54
  store i32 1, i32* @xflag, align 4
  %152 = load i8*, i8** @optarg, align 8
  %153 = call i8* @strdup(i8* %152)
  store i8* %153, i8** %19, align 8
  %154 = icmp eq i8* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = call i32 @err(i32 1, i8* null)
  br label %157

157:                                              ; preds = %155, %151
  br label %233

158:                                              ; preds = %54
  store i32 1, i32* @zflag, align 4
  br label %233

159:                                              ; preds = %54
  store i32 1, i32* @Dflag, align 4
  br label %233

160:                                              ; preds = %54
  %161 = load i8*, i8** @optarg, align 8
  %162 = call i8* @strtonum(i8* %161, i32 1, i32 1073741824, i8** %20)
  store i8* %162, i8** @Iflag, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %160
  %166 = load i8*, i8** %20, align 8
  %167 = load i8*, i8** @optarg, align 8
  %168 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %166, i8* %167)
  br label %169

169:                                              ; preds = %165, %160
  br label %233

170:                                              ; preds = %54
  %171 = load i8*, i8** @optarg, align 8
  %172 = call i8* @strtonum(i8* %171, i32 1, i32 1073741824, i8** %20)
  store i8* %172, i8** @Oflag, align 8
  %173 = load i8*, i8** %20, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load i8*, i8** %20, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i8*, i8** %20, align 8
  %181 = load i8*, i8** @optarg, align 8
  %182 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i8* %180, i8* %181)
  br label %183

183:                                              ; preds = %179, %175
  br label %184

184:                                              ; preds = %183, %170
  br label %233

185:                                              ; preds = %54
  store i32 1, i32* @Sflag, align 4
  br label %233

186:                                              ; preds = %54
  store i8* null, i8** %20, align 8
  store i32 0, i32* @errno, align 4
  %187 = load i8*, i8** @optarg, align 8
  %188 = call i32 @map_tos(i8* %187, i32* @Tflag)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %233

191:                                              ; preds = %186
  %192 = load i8*, i8** @optarg, align 8
  %193 = call i32 @strlen(i8* %192)
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load i8*, i8** @optarg, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp eq i32 %199, 48
  br i1 %200, label %201, label %211

201:                                              ; preds = %195
  %202 = load i8*, i8** @optarg, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 120
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = load i8*, i8** @optarg, align 8
  %209 = call i64 @strtol(i8* %208, i32* null, i32 16)
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* @Tflag, align 4
  br label %215

211:                                              ; preds = %201, %195, %191
  %212 = load i8*, i8** @optarg, align 8
  %213 = call i8* @strtonum(i8* %212, i32 0, i32 255, i8** %20)
  %214 = ptrtoint i8* %213 to i32
  store i32 %214, i32* @Tflag, align 4
  br label %215

215:                                              ; preds = %211, %207
  %216 = load i32, i32* @Tflag, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %227, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* @Tflag, align 4
  %220 = icmp sgt i32 %219, 255
  br i1 %220, label %227, label %221

221:                                              ; preds = %218
  %222 = load i8*, i8** %20, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* @errno, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224, %221, %218, %215
  %228 = load i8*, i8** @optarg, align 8
  %229 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %227, %224
  br label %233

231:                                              ; preds = %54
  %232 = call i32 @usage(i32 1)
  br label %233

233:                                              ; preds = %231, %230, %190, %185, %184, %169, %159, %158, %157, %148, %135, %134, %116, %115, %113, %112, %110, %108, %105, %104, %103, %102, %101, %100, %88, %87, %85, %83, %82, %81, %60, %58, %56
  br label %48

234:                                              ; preds = %48
  %235 = load i64, i64* @optind, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = sub nsw i64 %237, %235
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %4, align 4
  %240 = load i64, i64* @optind, align 8
  %241 = load i8**, i8*** %5, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 %240
  store i8** %242, i8*** %5, align 8
  %243 = load i8**, i8*** %5, align 8
  %244 = getelementptr inbounds i8*, i8** %243, i64 0
  %245 = load i8*, i8** %244, align 8
  %246 = icmp ne i8* %245, null
  br i1 %246, label %247, label %260

247:                                              ; preds = %234
  %248 = load i8**, i8*** %5, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 1
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %260, label %252

252:                                              ; preds = %247
  %253 = load i64, i64* @family, align 8
  %254 = load i64, i64* @AF_UNIX, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %260

256:                                              ; preds = %252
  %257 = load i8**, i8*** %5, align 8
  %258 = getelementptr inbounds i8*, i8** %257, i64 0
  %259 = load i8*, i8** %258, align 8
  store i8* %259, i8** %13, align 8
  store i8* null, i8** %14, align 8
  br label %300

260:                                              ; preds = %252, %247, %234
  %261 = load i8**, i8*** %5, align 8
  %262 = getelementptr inbounds i8*, i8** %261, i64 0
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %279

265:                                              ; preds = %260
  %266 = load i8**, i8*** %5, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  %268 = load i8*, i8** %267, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %279, label %270

270:                                              ; preds = %265
  %271 = load i32, i32* @lflag, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %270
  %274 = call i32 @usage(i32 1)
  br label %275

275:                                              ; preds = %273, %270
  %276 = load i8**, i8*** %5, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 0
  %278 = load i8*, i8** %277, align 8
  store i8* %278, i8** %14, align 8
  store i8* null, i8** %13, align 8
  br label %299

279:                                              ; preds = %265, %260
  %280 = load i8**, i8*** %5, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 0
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %296

284:                                              ; preds = %279
  %285 = load i8**, i8*** %5, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 1
  %287 = load i8*, i8** %286, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %296

289:                                              ; preds = %284
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 0
  %292 = load i8*, i8** %291, align 8
  store i8* %292, i8** %13, align 8
  %293 = load i8**, i8*** %5, align 8
  %294 = getelementptr inbounds i8*, i8** %293, i64 1
  %295 = load i8*, i8** %294, align 8
  store i8* %295, i8** %14, align 8
  br label %298

296:                                              ; preds = %284, %279
  %297 = call i32 @usage(i32 1)
  br label %298

298:                                              ; preds = %296, %289
  br label %299

299:                                              ; preds = %298, %275
  br label %300

300:                                              ; preds = %299, %256
  %301 = load i32, i32* @lflag, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %308

303:                                              ; preds = %300
  %304 = load i8*, i8** @sflag, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %308

306:                                              ; preds = %303
  %307 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %303, %300
  %309 = load i32, i32* @lflag, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %308
  %312 = load i8*, i8** @pflag, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %311, %308
  %317 = load i32, i32* @lflag, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i32, i32* @zflag, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %319
  %323 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %319, %316
  %325 = load i32, i32* @lflag, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %332, label %327

327:                                              ; preds = %324
  %328 = load i32, i32* @kflag, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %327
  %331 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0))
  br label %332

332:                                              ; preds = %330, %327, %324
  %333 = load i64, i64* @family, align 8
  %334 = load i64, i64* @AF_UNIX, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %356

336:                                              ; preds = %332
  %337 = load i32, i32* @uflag, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %356

339:                                              ; preds = %336
  %340 = load i32, i32* @lflag, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %356, label %342

342:                                              ; preds = %339
  %343 = load i8*, i8** @sflag, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %345, label %347

345:                                              ; preds = %342
  %346 = load i8*, i8** @sflag, align 8
  store i8* %346, i8** @unix_dg_tmp_socket, align 8
  br label %355

347:                                              ; preds = %342
  %348 = load i32, i32* @UNIX_DG_TMP_SOCKET_SIZE, align 4
  %349 = call i32 @strlcpy(i8* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %348)
  %350 = call i32* @mktemp(i8* %36)
  %351 = icmp eq i32* %350, null
  br i1 %351, label %352, label %354

352:                                              ; preds = %347
  %353 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %354

354:                                              ; preds = %352, %347
  store i8* %36, i8** @unix_dg_tmp_socket, align 8
  br label %355

355:                                              ; preds = %354, %345
  br label %356

356:                                              ; preds = %355, %339, %336, %332
  %357 = load i64, i64* @family, align 8
  %358 = load i64, i64* @AF_UNIX, align 8
  %359 = icmp ne i64 %357, %358
  br i1 %359, label %360, label %390

360:                                              ; preds = %356
  %361 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 32)
  %362 = load i64, i64* @family, align 8
  %363 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 3
  store i64 %362, i64* %363, align 8
  %364 = load i32, i32* @uflag, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %360
  %367 = load i8*, i8** @SOCK_DGRAM, align 8
  br label %370

368:                                              ; preds = %360
  %369 = load i8*, i8** @SOCK_STREAM, align 8
  br label %370

370:                                              ; preds = %368, %366
  %371 = phi i8* [ %367, %366 ], [ %369, %368 ]
  %372 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 2
  store i8* %371, i8** %372, align 8
  %373 = load i32, i32* @uflag, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = load i8*, i8** @IPPROTO_UDP, align 8
  br label %379

377:                                              ; preds = %370
  %378 = load i8*, i8** @IPPROTO_TCP, align 8
  br label %379

379:                                              ; preds = %377, %375
  %380 = phi i8* [ %376, %375 ], [ %378, %377 ]
  %381 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  store i8* %380, i8** %381, align 8
  %382 = load i32, i32* @nflag, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %389

384:                                              ; preds = %379
  %385 = load i32, i32* @AI_NUMERICHOST, align 4
  %386 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = or i32 %387, %385
  store i32 %388, i32* %386, align 8
  br label %389

389:                                              ; preds = %384, %379
  br label %390

390:                                              ; preds = %389, %356
  %391 = load i32, i32* @xflag, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %438

393:                                              ; preds = %390
  %394 = load i32, i32* @uflag, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i64 0, i64 0))
  br label %398

398:                                              ; preds = %396, %393
  %399 = load i32, i32* @lflag, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401, %398
  %404 = load i64, i64* @family, align 8
  %405 = load i64, i64* @AF_UNIX, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %409

407:                                              ; preds = %403
  %408 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0))
  br label %409

409:                                              ; preds = %407, %403
  %410 = load i64, i64* @family, align 8
  %411 = load i64, i64* @AF_INET6, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0))
  br label %415

415:                                              ; preds = %413, %409
  %416 = load i8*, i8** @sflag, align 8
  %417 = icmp ne i8* %416, null
  br i1 %417, label %418, label %420

418:                                              ; preds = %415
  %419 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.28, i64 0, i64 0))
  br label %420

420:                                              ; preds = %418, %415
  %421 = call i8* @strsep(i8** %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  store i8* %421, i8** %21, align 8
  %422 = load i8*, i8** %19, align 8
  store i8* %422, i8** %22, align 8
  %423 = call i32 @memset(%struct.addrinfo* %23, i32 0, i32 32)
  %424 = load i64, i64* @family, align 8
  %425 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 3
  store i64 %424, i64* %425, align 8
  %426 = load i8*, i8** @SOCK_STREAM, align 8
  %427 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 2
  store i8* %426, i8** %427, align 8
  %428 = load i8*, i8** @IPPROTO_TCP, align 8
  %429 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 1
  store i8* %428, i8** %429, align 8
  %430 = load i32, i32* @nflag, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %420
  %433 = load i32, i32* @AI_NUMERICHOST, align 4
  %434 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %23, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %435, %433
  store i32 %436, i32* %434, align 8
  br label %437

437:                                              ; preds = %432, %420
  br label %438

438:                                              ; preds = %437, %390
  %439 = load i32, i32* @lflag, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %560

441:                                              ; preds = %438
  store i32 0, i32* %8, align 4
  %442 = load i64, i64* @family, align 8
  %443 = load i64, i64* @AF_UNIX, align 8
  %444 = icmp eq i64 %442, %443
  br i1 %444, label %445, label %455

445:                                              ; preds = %441
  %446 = load i32, i32* @uflag, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %451

448:                                              ; preds = %445
  %449 = load i8*, i8** %13, align 8
  %450 = call i32 @unix_bind(i8* %449)
  store i32 %450, i32* %7, align 4
  br label %454

451:                                              ; preds = %445
  %452 = load i8*, i8** %13, align 8
  %453 = call i32 @unix_listen(i8* %452)
  store i32 %453, i32* %7, align 4
  br label %454

454:                                              ; preds = %451, %448
  br label %455

455:                                              ; preds = %454, %441
  br label %456

456:                                              ; preds = %558, %455
  %457 = load i64, i64* @family, align 8
  %458 = load i64, i64* @AF_UNIX, align 8
  %459 = icmp ne i64 %457, %458
  br i1 %459, label %460, label %464

460:                                              ; preds = %456
  %461 = load i8*, i8** %13, align 8
  %462 = load i8*, i8** %14, align 8
  %463 = call i32 @local_listen(i8* %461, i8* %462, %struct.addrinfo* byval(%struct.addrinfo) align 8 %15)
  store i32 %463, i32* %7, align 4
  br label %464

464:                                              ; preds = %460, %456
  %465 = load i32, i32* %7, align 4
  %466 = icmp slt i32 %465, 0
  br i1 %466, label %467, label %469

467:                                              ; preds = %464
  %468 = call i32 @err(i32 1, i8* null)
  br label %469

469:                                              ; preds = %467, %464
  %470 = load i32, i32* @uflag, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %478

472:                                              ; preds = %469
  %473 = load i32, i32* @kflag, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %472
  %476 = load i32, i32* %7, align 4
  %477 = call i32 @readwrite(i32 %476)
  br label %536

478:                                              ; preds = %472, %469
  %479 = load i32, i32* @uflag, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %515

481:                                              ; preds = %478
  %482 = load i32, i32* @kflag, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %515, label %484

484:                                              ; preds = %481
  store i32 4, i32* %17, align 4
  store i32 2048, i32* %29, align 4
  %485 = load i32, i32* %7, align 4
  %486 = getelementptr inbounds [16384 x i8], [16384 x i8]* %30, i64 0, i64 0
  %487 = load i32, i32* %29, align 4
  %488 = load i32, i32* @MSG_PEEK, align 4
  %489 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr*
  %490 = call i32 @recvfrom(i32 %485, i8* %486, i32 %487, i32 %488, %struct.sockaddr* %489, i32* %17)
  store i32 %490, i32* %28, align 4
  %491 = load i32, i32* %28, align 4
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %484
  %494 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0))
  br label %495

495:                                              ; preds = %493, %484
  %496 = load i32, i32* %7, align 4
  %497 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr*
  %498 = load i32, i32* %17, align 4
  %499 = call i64 @connect(i32 %496, %struct.sockaddr* %497, i32 %498)
  %500 = trunc i64 %499 to i32
  store i32 %500, i32* %28, align 4
  %501 = load i32, i32* %28, align 4
  %502 = icmp slt i32 %501, 0
  br i1 %502, label %503, label %505

503:                                              ; preds = %495
  %504 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %505

505:                                              ; preds = %503, %495
  %506 = load i32, i32* @vflag, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %512

508:                                              ; preds = %505
  %509 = bitcast %struct.sockaddr_storage* %31 to %struct.sockaddr*
  %510 = load i32, i32* %17, align 4
  %511 = call i32 @report_connect(%struct.sockaddr* %509, i32 %510)
  br label %512

512:                                              ; preds = %508, %505
  %513 = load i32, i32* %7, align 4
  %514 = call i32 @readwrite(i32 %513)
  br label %535

515:                                              ; preds = %481, %478
  store i32 4, i32* %17, align 4
  %516 = load i32, i32* %7, align 4
  %517 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr*
  %518 = call i32 @accept(i32 %516, %struct.sockaddr* %517, i32* %17)
  store i32 %518, i32* %27, align 4
  %519 = load i32, i32* %27, align 4
  %520 = icmp eq i32 %519, -1
  br i1 %520, label %521, label %523

521:                                              ; preds = %515
  %522 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  br label %523

523:                                              ; preds = %521, %515
  %524 = load i32, i32* @vflag, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %530

526:                                              ; preds = %523
  %527 = bitcast %struct.sockaddr_storage* %18 to %struct.sockaddr*
  %528 = load i32, i32* %17, align 4
  %529 = call i32 @report_connect(%struct.sockaddr* %527, i32 %528)
  br label %530

530:                                              ; preds = %526, %523
  %531 = load i32, i32* %27, align 4
  %532 = call i32 @readwrite(i32 %531)
  %533 = load i32, i32* %27, align 4
  %534 = call i32 @close(i32 %533)
  br label %535

535:                                              ; preds = %530, %512
  br label %536

536:                                              ; preds = %535, %475
  %537 = load i64, i64* @family, align 8
  %538 = load i64, i64* @AF_UNIX, align 8
  %539 = icmp ne i64 %537, %538
  br i1 %539, label %540, label %543

540:                                              ; preds = %536
  %541 = load i32, i32* %7, align 4
  %542 = call i32 @close(i32 %541)
  br label %554

543:                                              ; preds = %536
  %544 = load i32, i32* @uflag, align 4
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %543
  %547 = load i32, i32* %7, align 4
  %548 = call i64 @connect(i32 %547, %struct.sockaddr* null, i32 0)
  %549 = icmp slt i64 %548, 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %546
  %551 = call i32 @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %552

552:                                              ; preds = %550, %546
  br label %553

553:                                              ; preds = %552, %543
  br label %554

554:                                              ; preds = %553, %540
  %555 = load i32, i32* @kflag, align 4
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %558, label %557

557:                                              ; preds = %554
  br label %559

558:                                              ; preds = %554
  br label %456

559:                                              ; preds = %557
  br label %702

560:                                              ; preds = %438
  %561 = load i64, i64* @family, align 8
  %562 = load i64, i64* @AF_UNIX, align 8
  %563 = icmp eq i64 %561, %562
  br i1 %563, label %564, label %586

564:                                              ; preds = %560
  store i32 0, i32* %8, align 4
  %565 = load i8*, i8** %13, align 8
  %566 = call i32 @unix_connect(i8* %565)
  store i32 %566, i32* %7, align 4
  %567 = icmp sgt i32 %566, 0
  br i1 %567, label %568, label %576

568:                                              ; preds = %564
  %569 = load i32, i32* @zflag, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %576, label %571

571:                                              ; preds = %568
  %572 = load i32, i32* %7, align 4
  %573 = call i32 @readwrite(i32 %572)
  %574 = load i32, i32* %7, align 4
  %575 = call i32 @close(i32 %574)
  br label %577

576:                                              ; preds = %568, %564
  store i32 1, i32* %8, align 4
  br label %577

577:                                              ; preds = %576, %571
  %578 = load i32, i32* @uflag, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %583

580:                                              ; preds = %577
  %581 = load i8*, i8** @unix_dg_tmp_socket, align 8
  %582 = call i32 @unlink(i8* %581)
  br label %583

583:                                              ; preds = %580, %577
  %584 = load i32, i32* %8, align 4
  %585 = call i32 @exit(i32 %584) #5
  unreachable

586:                                              ; preds = %560
  store i32 0, i32* %32, align 4
  %587 = load i8*, i8** %14, align 8
  %588 = call i32 @build_ports(i8* %587)
  store i32 0, i32* %32, align 4
  br label %589

589:                                              ; preds = %697, %586
  %590 = load i8**, i8*** @portlist, align 8
  %591 = load i32, i32* %32, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds i8*, i8** %590, i64 %592
  %594 = load i8*, i8** %593, align 8
  %595 = icmp ne i8* %594, null
  br i1 %595, label %596, label %700

596:                                              ; preds = %589
  %597 = load i32, i32* %7, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %599, label %602

599:                                              ; preds = %596
  %600 = load i32, i32* %7, align 4
  %601 = call i32 @close(i32 %600)
  br label %602

602:                                              ; preds = %599, %596
  %603 = load i32, i32* @xflag, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %617

605:                                              ; preds = %602
  %606 = load i8*, i8** %13, align 8
  %607 = load i8**, i8*** @portlist, align 8
  %608 = load i32, i32* %32, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i8*, i8** %607, i64 %609
  %611 = load i8*, i8** %610, align 8
  %612 = load i8*, i8** %21, align 8
  %613 = load i8*, i8** %22, align 8
  %614 = load i32, i32* %9, align 4
  %615 = load i8*, i8** @Pflag, align 8
  %616 = call i32 @socks_connect(i8* %606, i8* %611, %struct.addrinfo* byval(%struct.addrinfo) align 8 %15, i8* %612, i8* %613, %struct.addrinfo* byval(%struct.addrinfo) align 8 %23, i32 %614, i8* %615)
  store i32 %616, i32* %7, align 4
  br label %625

617:                                              ; preds = %602
  %618 = load i8*, i8** %13, align 8
  %619 = load i8**, i8*** @portlist, align 8
  %620 = load i32, i32* %32, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8*, i8** %619, i64 %621
  %623 = load i8*, i8** %622, align 8
  %624 = call i32 @remote_connect(i8* %618, i8* %623, %struct.addrinfo* byval(%struct.addrinfo) align 8 %15)
  store i32 %624, i32* %7, align 4
  br label %625

625:                                              ; preds = %617, %605
  %626 = load i32, i32* %7, align 4
  %627 = icmp slt i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625
  br label %697

629:                                              ; preds = %625
  store i32 0, i32* %8, align 4
  %630 = load i32, i32* @vflag, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %635, label %632

632:                                              ; preds = %629
  %633 = load i32, i32* @zflag, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %635, label %683

635:                                              ; preds = %632, %629
  %636 = load i32, i32* @uflag, align 4
  %637 = icmp ne i32 %636, 0
  br i1 %637, label %638, label %644

638:                                              ; preds = %635
  %639 = load i32, i32* %7, align 4
  %640 = call i32 @udptest(i32 %639)
  %641 = icmp eq i32 %640, -1
  br i1 %641, label %642, label %643

642:                                              ; preds = %638
  store i32 1, i32* %8, align 4
  br label %697

643:                                              ; preds = %638
  br label %644

644:                                              ; preds = %643, %635
  %645 = load i32, i32* @nflag, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %647, label %648

647:                                              ; preds = %644
  store %struct.servent* null, %struct.servent** %16, align 8
  br label %661

648:                                              ; preds = %644
  %649 = load i8**, i8*** @portlist, align 8
  %650 = load i32, i32* %32, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i8*, i8** %649, i64 %651
  %653 = load i8*, i8** %652, align 8
  %654 = call i32 @atoi(i8* %653)
  %655 = call i32 @ntohs(i32 %654)
  %656 = load i32, i32* @uflag, align 4
  %657 = icmp ne i32 %656, 0
  %658 = zext i1 %657 to i64
  %659 = select i1 %657, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)
  %660 = call %struct.servent* @getservbyport(i32 %655, i8* %659)
  store %struct.servent* %660, %struct.servent** %16, align 8
  br label %661

661:                                              ; preds = %648, %647
  %662 = load i32, i32* @stderr, align 4
  %663 = load i8*, i8** %13, align 8
  %664 = load i8**, i8*** @portlist, align 8
  %665 = load i32, i32* %32, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds i8*, i8** %664, i64 %666
  %668 = load i8*, i8** %667, align 8
  %669 = load i32, i32* @uflag, align 4
  %670 = icmp ne i32 %669, 0
  %671 = zext i1 %670 to i64
  %672 = select i1 %670, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0)
  %673 = load %struct.servent*, %struct.servent** %16, align 8
  %674 = icmp ne %struct.servent* %673, null
  br i1 %674, label %675, label %679

675:                                              ; preds = %661
  %676 = load %struct.servent*, %struct.servent** %16, align 8
  %677 = getelementptr inbounds %struct.servent, %struct.servent* %676, i32 0, i32 0
  %678 = load i8*, i8** %677, align 8
  br label %680

679:                                              ; preds = %661
  br label %680

680:                                              ; preds = %679, %675
  %681 = phi i8* [ %678, %675 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), %679 ]
  %682 = call i32 (i32, i8*, ...) @fprintf(i32 %662, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0), i8* %663, i8* %668, i8* %672, i8* %681)
  br label %683

683:                                              ; preds = %680, %632
  %684 = load i32, i32* @Fflag, align 4
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %689

686:                                              ; preds = %683
  %687 = load i32, i32* %7, align 4
  %688 = call i32 @fdpass(i32 %687)
  br label %696

689:                                              ; preds = %683
  %690 = load i32, i32* @zflag, align 4
  %691 = icmp ne i32 %690, 0
  br i1 %691, label %695, label %692

692:                                              ; preds = %689
  %693 = load i32, i32* %7, align 4
  %694 = call i32 @readwrite(i32 %693)
  br label %695

695:                                              ; preds = %692, %689
  br label %696

696:                                              ; preds = %695, %686
  br label %697

697:                                              ; preds = %696, %642, %628
  %698 = load i32, i32* %32, align 4
  %699 = add nsw i32 %698, 1
  store i32 %699, i32* %32, align 4
  br label %589

700:                                              ; preds = %589
  br label %701

701:                                              ; preds = %700
  br label %702

702:                                              ; preds = %701, %559
  %703 = load i32, i32* %7, align 4
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %705, label %708

705:                                              ; preds = %702
  %706 = load i32, i32* %7, align 4
  %707 = call i32 @close(i32 %706)
  br label %708

708:                                              ; preds = %705, %702
  %709 = load i32, i32* %8, align 4
  %710 = call i32 @exit(i32 %709) #5
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @signal(i32, i32) #3

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #3

declare dso_local i32 @strcasecmp(i8*, i8*) #3

declare dso_local i32 @strcmp(i8*, i8*) #3

declare dso_local i32 @errx(i32, i8*, ...) #3

declare dso_local i32 @help(...) #3

declare dso_local i8* @strtonum(i8*, i32, i32, i8**) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #3

declare dso_local i8* @strdup(i8*) #3

declare dso_local i32 @err(i32, i8*) #3

declare dso_local i32 @map_tos(i8*, i32*) #3

declare dso_local i32 @strlen(i8*) #3

declare dso_local i64 @strtol(i8*, i32*, i32) #3

declare dso_local i32 @usage(i32) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i32* @mktemp(i8*) #3

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #3

declare dso_local i8* @strsep(i8**, i8*) #3

declare dso_local i32 @unix_bind(i8*) #3

declare dso_local i32 @unix_listen(i8*) #3

declare dso_local i32 @local_listen(i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8) #3

declare dso_local i32 @readwrite(i32) #3

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #3

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #3

declare dso_local i32 @report_connect(%struct.sockaddr*, i32) #3

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #3

declare dso_local i32 @close(i32) #3

declare dso_local i32 @unix_connect(i8*) #3

declare dso_local i32 @unlink(i8*) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @build_ports(i8*) #3

declare dso_local i32 @socks_connect(i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8, i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8, i32, i8*) #3

declare dso_local i32 @remote_connect(i8*, i8*, %struct.addrinfo* byval(%struct.addrinfo) align 8) #3

declare dso_local i32 @udptest(i32) #3

declare dso_local %struct.servent* @getservbyport(i32, i8*) #3

declare dso_local i32 @ntohs(i32) #3

declare dso_local i32 @atoi(i8*) #3

declare dso_local i32 @fdpass(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
