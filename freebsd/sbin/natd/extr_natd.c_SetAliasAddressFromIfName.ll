; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetAliasAddressFromIfName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_SetAliasAddressFromIfName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }
%struct.if_msghdr = type { i64, i64, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ifa_msghdr = type { i64, i64, i32, i32 }
%struct.sockaddr_dl = type { i64, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"iflist-sysctl-estimate\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"iflist-sysctl-get\00", align 1
@mip = common dso_local global %struct.TYPE_4__* null, align 8
@RTM_VERSION = common dso_local global i64 0, align 8
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"routing message version %d not understood\00", align 1
@RTM_IFINFO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"unknown interface name %s\00", align 1
@RTM_NEWADDR = common dso_local global i64 0, align 8
@RTA_IFA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: cannot get interface address\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@mla = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Aliasing to %s, mtu %d bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @SetAliasAddressFromIfName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetAliasAddressFromIfName(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [6 x i32], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.if_msghdr*, align 8
  %10 = alloca %struct.ifa_msghdr*, align 8
  %11 = alloca %struct.sockaddr_dl*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i32, i32* @CTL_NET, align 4
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  store i32 %15, i32* %16, align 16
  %17 = load i32, i32* @PF_ROUTE, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* @AF_INET, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 3
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @NET_RT_IFLIST, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 4
  store i32 %22, i32* %23, align 16
  %24 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 5
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %26 = call i32 @sysctl(i32* %25, i32 6, i8* null, i64* %4, i32* null, i32 0)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %1
  %31 = load i64, i64* %4, align 8
  %32 = call i8* @malloc(i64 %31)
  store i8* %32, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* %5, i64 0, i64 0
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @sysctl(i32* %37, i32 6, i8* %38, i64* %4, i32* null, i32 0)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @ENOMEM, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41, %36
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %7, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** %6, align 8
  store i8* %53, i8** %8, align 8
  br label %54

54:                                               ; preds = %121, %81, %47
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %122

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = bitcast i8* %59 to %struct.if_msghdr*
  store %struct.if_msghdr* %60, %struct.if_msghdr** %9, align 8
  %61 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %62 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %8, align 8
  %67 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %68 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RTM_VERSION, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %58
  %73 = load i64, i64* @verbose, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %77 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %75, %72
  br label %54

82:                                               ; preds = %58
  %83 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %84 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RTM_IFINFO, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %121

88:                                               ; preds = %82
  %89 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %90 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %89, i64 1
  %91 = bitcast %struct.if_msghdr* %90 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %91, %struct.sockaddr_dl** %11, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = call i64 @strlen(i8* %92)
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %11, align 8
  %95 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %88
  %99 = load i8*, i8** %3, align 8
  %100 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %11, align 8
  %101 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %11, align 8
  %104 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @strncmp(i8* %99, i32 %102, i64 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %98
  %109 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %110 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.if_msghdr*, %struct.if_msghdr** %9, align 8
  %115 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %122

120:                                              ; preds = %98, %88
  br label %121

121:                                              ; preds = %120, %82
  br label %54

122:                                              ; preds = %108, %54
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i8*, i8** %3, align 8
  %129 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %127, %122
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %12, align 8
  br label %131

131:                                              ; preds = %210, %158, %130
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = icmp ult i8* %132, %133
  br i1 %134, label %135, label %211

135:                                              ; preds = %131
  %136 = load i8*, i8** %8, align 8
  %137 = bitcast i8* %136 to %struct.ifa_msghdr*
  store %struct.ifa_msghdr* %137, %struct.ifa_msghdr** %10, align 8
  %138 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %139 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %8, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  store i8* %143, i8** %8, align 8
  %144 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %145 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @RTM_VERSION, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %159

149:                                              ; preds = %135
  %150 = load i64, i64* @verbose, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %154 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i8*
  %157 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %152, %149
  br label %131

159:                                              ; preds = %135
  %160 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %161 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @RTM_NEWADDR, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %211

166:                                              ; preds = %159
  %167 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %168 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @RTA_IFA, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %210

173:                                              ; preds = %166
  %174 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %175 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %174, i64 1
  %176 = bitcast %struct.ifa_msghdr* %175 to i8*
  store i8* %176, i8** %14, align 8
  store i32 1, i32* %13, align 4
  br label %177

177:                                              ; preds = %196, %173
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @RTA_IFA, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %177
  %182 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %10, align 8
  %183 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %13, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load i8*, i8** %14, align 8
  %190 = bitcast i8* %189 to %struct.sockaddr*
  %191 = call i32 @SA_SIZE(%struct.sockaddr* %190)
  %192 = load i8*, i8** %14, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %14, align 8
  br label %195

195:                                              ; preds = %188, %181
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %13, align 4
  %198 = shl i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %177

199:                                              ; preds = %177
  %200 = load i8*, i8** %14, align 8
  %201 = bitcast i8* %200 to %struct.sockaddr*
  %202 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AF_INET, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load i8*, i8** %14, align 8
  %208 = bitcast i8* %207 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %208, %struct.sockaddr_in** %12, align 8
  br label %211

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209, %166
  br label %131

211:                                              ; preds = %206, %165, %131
  %212 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %213 = icmp eq %struct.sockaddr_in* %212, null
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = load i8*, i8** %3, align 8
  %216 = call i32 @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %215)
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i32, i32* @EAGAIN, align 4
  store i32 %219, i32* %2, align 4
  br label %237

220:                                              ; preds = %211
  %221 = load i32, i32* @mla, align 4
  %222 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %223 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @LibAliasSetAddress(i32 %221, i32 %224)
  %226 = load i32, i32* @LOG_INFO, align 4
  %227 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %228 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @inet_ntoa(i32 %229)
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mip, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @syslog(i32 %226, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %230, i32 %233)
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @free(i8* %235)
  store i32 0, i32* %2, align 4
  br label %237

237:                                              ; preds = %220, %214
  %238 = load i32, i32* %2, align 4
  ret i32 %238
}

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @LibAliasSetAddress(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
