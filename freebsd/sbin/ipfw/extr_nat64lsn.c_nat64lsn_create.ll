; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat64lsn.c_nat64lsn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"64:ff9b::\00", align 1
@NAT64LSN_MAX_PORTS = common dso_local global i8* null, align 8
@NAT64LSN_JMAXLEN = common dso_local global i8* null, align 8
@NAT64LSN_HOST_AGE = common dso_local global i8* null, align 8
@NAT64LSN_PG_AGE = common dso_local global i8* null, align 8
@NAT64LSN_TCP_SYN_AGE = common dso_local global i8* null, align 8
@NAT64LSN_TCP_EST_AGE = common dso_local global i8* null, align 8
@NAT64LSN_TCP_FIN_AGE = common dso_local global i8* null, align 8
@NAT64LSN_UDP_AGE = common dso_local global i8* null, align 8
@NAT64LSN_ICMP_AGE = common dso_local global i8* null, align 8
@NAT64LSN_HAS_PREFIX6 = common dso_local global i32 0, align 4
@nat64newcmds = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"IPv4 prefix required\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@NAT64LSN_HAS_PREFIX4 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"IPv6 prefix required\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Bad prefix6 %s\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"job queue length required\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Max per-user ports required\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"host delete delay required\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"portgroup delete delay required\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"tcp syn age required\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"tcp close age required\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"tcp est age required\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"udp age required\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"icmp age required\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"number of chunks required\00", align 1
@NAT64_LOG = common dso_local global i32 0, align 4
@NAT64_ALLOW_PRIVATE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"prefix4 required\00", align 1
@IP_FW_NAT64LSN_CREATE = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"nat64lsn instance creation failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8**)* @nat64lsn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_create(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %15 = bitcast [128 x i8]* %9 to i8**
  %16 = call i32 @memset(i8** %15, i32 0, i32 128)
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %18 = bitcast i8* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %11, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 1
  %21 = bitcast %struct.TYPE_3__* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load i32, i32* @AF_INET6, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 14
  %25 = call i32 @inet_pton(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 96, i32* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 16
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @NAT64LSN_MAX_PORTS, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 12
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @NAT64LSN_JMAXLEN, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 13
  store i8* %34, i8** %36, align 8
  %37 = load i8*, i8** @NAT64LSN_HOST_AGE, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 11
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @NAT64LSN_PG_AGE, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 10
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @NAT64LSN_TCP_SYN_AGE, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 9
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @NAT64LSN_TCP_EST_AGE, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 7
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @NAT64LSN_TCP_FIN_AGE, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @NAT64LSN_UDP_AGE, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @NAT64LSN_ICMP_AGE, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* @NAT64LSN_HAS_PREFIX6, align 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %269, %4
  %60 = load i32, i32* %7, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %270

62:                                               ; preds = %59
  %63 = load i32, i32* @nat64newcmds, align 4
  %64 = load i8**, i8*** %8, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @get_token(i32 %63, i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %66, i32* %12, align 4
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %14, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %7, align 4
  %71 = load i8**, i8*** %8, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i32 1
  store i8** %72, i8*** %8, align 8
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %269 [
    i32 136, label %74
    i32 135, label %91
    i32 141, label %123
    i32 138, label %135
    i32 143, label %147
    i32 137, label %159
    i32 129, label %171
    i32 131, label %183
    i32 130, label %195
    i32 128, label %207
    i32 142, label %219
    i32 132, label %231
    i32 140, label %243
    i32 139, label %249
    i32 134, label %256
    i32 133, label %262
  ]

74:                                               ; preds = %62
  %75 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %76 = load i8**, i8*** %8, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @AF_INET, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 15
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call i32 @nat64lsn_parse_prefix(i8* %77, i32 %78, i32* %80, i32* %82)
  %84 = load i32, i32* @NAT64LSN_HAS_PREFIX4, align 4
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  %89 = load i8**, i8*** %8, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %8, align 8
  br label %269

91:                                               ; preds = %62
  %92 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i8**, i8*** %8, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* @AF_INET6, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 14
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = call i32 @nat64lsn_parse_prefix(i8* %94, i32 %95, i32* %97, i32* %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 14
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @ipfw_check_nat64prefix(i32* %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %91
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 14
  %111 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32, i32* @EX_USAGE, align 4
  %115 = load i8**, i8*** %8, align 8
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, ...) @errx(i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %113, %108, %91
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %7, align 4
  %121 = load i8**, i8*** %8, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i32 1
  store i8** %122, i8*** %8, align 8
  br label %269

123:                                              ; preds = %62
  %124 = call i32 @NEED1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i8**, i8*** %8, align 8
  %126 = load i8*, i8** %125, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = call i8* @nat64lsn_parse_int(i8* %126, i8* %127)
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 13
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %7, align 4
  %133 = load i8**, i8*** %8, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %8, align 8
  br label %269

135:                                              ; preds = %62
  %136 = call i32 @NEED1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %137 = load i8**, i8*** %8, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8*, i8** %14, align 8
  %140 = call i8* @nat64lsn_parse_int(i8* %138, i8* %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 12
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %7, align 4
  %145 = load i8**, i8*** %8, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i32 1
  store i8** %146, i8*** %8, align 8
  br label %269

147:                                              ; preds = %62
  %148 = call i32 @NEED1(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i8**, i8*** %8, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = load i8*, i8** %14, align 8
  %152 = call i8* @nat64lsn_parse_int(i8* %150, i8* %151)
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 11
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %7, align 4
  %157 = load i8**, i8*** %8, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i32 1
  store i8** %158, i8*** %8, align 8
  br label %269

159:                                              ; preds = %62
  %160 = call i32 @NEED1(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %161 = load i8**, i8*** %8, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = load i8*, i8** %14, align 8
  %164 = call i8* @nat64lsn_parse_int(i8* %162, i8* %163)
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 10
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %7, align 4
  %169 = load i8**, i8*** %8, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i32 1
  store i8** %170, i8*** %8, align 8
  br label %269

171:                                              ; preds = %62
  %172 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %173 = load i8**, i8*** %8, align 8
  %174 = load i8*, i8** %173, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = call i8* @nat64lsn_parse_int(i8* %174, i8* %175)
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 9
  store i8* %176, i8** %178, align 8
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* %7, align 4
  %181 = load i8**, i8*** %8, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i32 1
  store i8** %182, i8*** %8, align 8
  br label %269

183:                                              ; preds = %62
  %184 = call i32 @NEED1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %185 = load i8**, i8*** %8, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** %14, align 8
  %188 = call i8* @nat64lsn_parse_int(i8* %186, i8* %187)
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 8
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %7, align 4
  %193 = load i8**, i8*** %8, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %8, align 8
  br label %269

195:                                              ; preds = %62
  %196 = call i32 @NEED1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %197 = load i8**, i8*** %8, align 8
  %198 = load i8*, i8** %197, align 8
  %199 = load i8*, i8** %14, align 8
  %200 = call i8* @nat64lsn_parse_int(i8* %198, i8* %199)
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 7
  store i8* %200, i8** %202, align 8
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %7, align 4
  %205 = load i8**, i8*** %8, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i32 1
  store i8** %206, i8*** %8, align 8
  br label %269

207:                                              ; preds = %62
  %208 = call i32 @NEED1(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %209 = load i8**, i8*** %8, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i8*, i8** %14, align 8
  %212 = call i8* @nat64lsn_parse_int(i8* %210, i8* %211)
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 6
  store i8* %212, i8** %214, align 8
  %215 = load i32, i32* %7, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %7, align 4
  %217 = load i8**, i8*** %8, align 8
  %218 = getelementptr inbounds i8*, i8** %217, i32 1
  store i8** %218, i8*** %8, align 8
  br label %269

219:                                              ; preds = %62
  %220 = call i32 @NEED1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %221 = load i8**, i8*** %8, align 8
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %14, align 8
  %224 = call i8* @nat64lsn_parse_int(i8* %222, i8* %223)
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 5
  store i8* %224, i8** %226, align 8
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %7, align 4
  %229 = load i8**, i8*** %8, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i32 1
  store i8** %230, i8*** %8, align 8
  br label %269

231:                                              ; preds = %62
  %232 = call i32 @NEED1(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %233 = load i8**, i8*** %8, align 8
  %234 = load i8*, i8** %233, align 8
  %235 = load i8*, i8** %14, align 8
  %236 = call i8* @nat64lsn_parse_int(i8* %234, i8* %235)
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, -1
  store i32 %240, i32* %7, align 4
  %241 = load i8**, i8*** %8, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i32 1
  store i8** %242, i8*** %8, align 8
  br label %269

243:                                              ; preds = %62
  %244 = load i32, i32* @NAT64_LOG, align 4
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  br label %269

249:                                              ; preds = %62
  %250 = load i32, i32* @NAT64_LOG, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %269

256:                                              ; preds = %62
  %257 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %269

262:                                              ; preds = %62
  %263 = load i32, i32* @NAT64_ALLOW_PRIVATE, align 4
  %264 = xor i32 %263, -1
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = and i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %62, %262, %256, %249, %243, %231, %219, %207, %195, %183, %171, %159, %147, %135, %123, %118, %74
  br label %59

270:                                              ; preds = %59
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* @NAT64LSN_HAS_PREFIX4, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* @NAT64LSN_HAS_PREFIX4, align 4
  %275 = icmp ne i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %270
  %277 = load i32, i32* @EX_USAGE, align 4
  %278 = call i32 (i32, i8*, ...) @errx(i32 %277, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %270
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 0
  store i32 1, i32* %281, align 4
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 1
  store i32 112, i32* %283, align 4
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 2
  store i32 128, i32* %285, align 4
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load i8*, i8** %5, align 8
  %290 = call i32 @strlcpy(i32 %288, i8* %289, i32 4)
  %291 = load i32, i32* @IP_FW_NAT64LSN_CREATE, align 4
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 3
  %294 = call i64 @do_set3(i32 %291, i32* %293, i32 128)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %279
  %297 = load i32, i32* @EX_OSERR, align 4
  %298 = call i32 @err(i32 %297, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  br label %299

299:                                              ; preds = %296, %279
  ret void
}

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @get_token(i32, i8*, i8*) #1

declare dso_local i32 @NEED1(i8*) #1

declare dso_local i32 @nat64lsn_parse_prefix(i8*, i32, i32*, i32*) #1

declare dso_local i32 @ipfw_check_nat64prefix(i32*, i32) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @nat64lsn_parse_int(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @do_set3(i32, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
