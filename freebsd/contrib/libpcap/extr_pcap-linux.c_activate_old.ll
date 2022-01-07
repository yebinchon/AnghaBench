; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_activate_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-linux.c_activate_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, i64, i64, i32, %struct.TYPE_7__, %struct.pcap_linux* }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.pcap_linux = type { i32, i32, i32, i64 }
%struct.ifreq = type { i32, i32 }
%struct.utsname = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@SOCK_PACKET = common dso_local global i32 0, align 4
@ETH_P_ALL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@EPERM = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@PCAP_ERROR_PERM_DENIED = common dso_local global i32 0, align 4
@PCAP_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"pcap_activate: The \22any\22 device isn't supported on 2.0[.x]-kernel systems\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown arptype %d\00", align 1
@SIOCGIFFLAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"SIOCGIFFLAGS\00", align 1
@IFF_PROMISC = common dso_local global i32 0, align 4
@SIOCSIFFLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"SIOCSIFFLAGS\00", align 1
@MUST_CLEAR_PROMISC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@MAX_LINKHEADER_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @activate_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate_old(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.pcap_linux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifreq, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.utsname, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 7
  %13 = load %struct.pcap_linux*, %struct.pcap_linux** %12, align 8
  store %struct.pcap_linux* %13, %struct.pcap_linux** %4, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %8, align 8
  %18 = load i32, i32* @PF_INET, align 4
  %19 = load i32, i32* @SOCK_PACKET, align 4
  %20 = load i32, i32* @ETH_P_ALL, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = call i32 @socket(i32 %18, i32 %19, i32 %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %48

29:                                               ; preds = %1
  %30 = load i32, i32* @errno, align 4
  store i32 %30, i32* %5, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pcap_fmt_errmsg_for_errno(i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @EPERM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EACCES, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %29
  %45 = load i32, i32* @PCAP_ERROR_PERM_DENIED, align 4
  store i32 %45, i32* %2, align 4
  br label %227

46:                                               ; preds = %40
  %47 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %47, i32* %2, align 4
  br label %227

48:                                               ; preds = %1
  %49 = load %struct.pcap_linux*, %struct.pcap_linux** %4, align 8
  %50 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.pcap_linux*, %struct.pcap_linux** %4, align 8
  %52 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i64 @strcmp(i8* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %61 = call i32 @strlcpy(i32 %59, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %62, i32* %2, align 4
  br label %227

63:                                               ; preds = %48
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @iface_bind_old(i32 %66, i8* %67, i32 %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %74, i32* %2, align 4
  br label %227

75:                                               ; preds = %63
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @iface_get_arptype(i32 %78, i8* %79, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %87, i32* %2, align 4
  br label %227

88:                                               ; preds = %75
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @map_arphrd_to_dlt(%struct.TYPE_8__* %89, i32 %92, i32 %93, i8* %94, i32 0)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %108

100:                                              ; preds = %88
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @pcap_snprintf(i32 %103, i32 %104, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %107, i32* %2, align 4
  br label %227

108:                                              ; preds = %88
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %174

114:                                              ; preds = %108
  %115 = call i32 @memset(%struct.ifreq* %7, i32 0, i32 8)
  %116 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @strlcpy(i32 %117, i8* %118, i32 4)
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @SIOCGIFFLAGS, align 4
  %124 = call i32 @ioctl(i32 %122, i32 %123, %struct.ifreq* %7)
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %134

126:                                              ; preds = %114
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %131 = load i32, i32* @errno, align 4
  %132 = call i32 @pcap_fmt_errmsg_for_errno(i32 %129, i32 %130, i32 %131, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %133, i32* %2, align 4
  br label %227

134:                                              ; preds = %114
  %135 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IFF_PROMISC, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %173

140:                                              ; preds = %134
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %142 = call i32 @pcap_do_addexit(%struct.TYPE_8__* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %145, i32* %2, align 4
  br label %227

146:                                              ; preds = %140
  %147 = load i32, i32* @IFF_PROMISC, align 4
  %148 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SIOCSIFFLAGS, align 4
  %155 = call i32 @ioctl(i32 %153, i32 %154, %struct.ifreq* %7)
  %156 = icmp eq i32 %155, -1
  br i1 %156, label %157, label %165

157:                                              ; preds = %146
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %162 = load i32, i32* @errno, align 4
  %163 = call i32 @pcap_fmt_errmsg_for_errno(i32 %160, i32 %161, i32 %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %164 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %164, i32* %2, align 4
  br label %227

165:                                              ; preds = %146
  %166 = load i32, i32* @MUST_CLEAR_PROMISC, align 4
  %167 = load %struct.pcap_linux*, %struct.pcap_linux** %4, align 8
  %168 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %172 = call i32 @pcap_add_to_pcaps_to_close(%struct.TYPE_8__* %171)
  br label %173

173:                                              ; preds = %165, %134
  br label %174

174:                                              ; preds = %173, %108
  %175 = call i64 @uname(%struct.utsname* %9)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.utsname, %struct.utsname* %9, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @strncmp(i32 %179, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 3)
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %216

182:                                              ; preds = %177, %174
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %8, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @iface_get_mtu(i32 %185, i8* %186, i32 %189)
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %195

193:                                              ; preds = %182
  %194 = load i32, i32* @PCAP_ERROR, align 4
  store i32 %194, i32* %2, align 4
  br label %227

195:                                              ; preds = %182
  %196 = load i64, i64* @MAX_LINKHEADER_SIZE, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %196, %198
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  store i64 %199, i64* %201, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %204, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %195
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  store i64 %212, i64* %214, align 8
  br label %215

215:                                              ; preds = %209, %195
  br label %222

216:                                              ; preds = %177
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %216, %215
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  store i64 0, i64* %224, align 8
  %225 = load %struct.pcap_linux*, %struct.pcap_linux** %4, align 8
  %226 = getelementptr inbounds %struct.pcap_linux, %struct.pcap_linux* %225, i32 0, i32 1
  store i32 -1, i32* %226, align 4
  store i32 1, i32* %2, align 4
  br label %227

227:                                              ; preds = %222, %193, %157, %144, %126, %100, %86, %73, %56, %46, %44
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i32, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @iface_bind_old(i32, i8*, i32) #1

declare dso_local i32 @iface_get_arptype(i32, i8*, i32) #1

declare dso_local i32 @map_arphrd_to_dlt(%struct.TYPE_8__*, i32, i32, i8*, i32) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @pcap_do_addexit(%struct.TYPE_8__*) #1

declare dso_local i32 @pcap_add_to_pcaps_to_close(%struct.TYPE_8__*) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @iface_get_mtu(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
