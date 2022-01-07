; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_set_addr_dynamic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_nat.c_set_addr_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.nat44_cfg_nat = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.if_msghdr = type { i64, i64, i32, i32 }
%struct.ifa_msghdr = type { i64, i64, i32, i32 }
%struct.sockaddr_dl = type { i64, i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.sockaddr = type { i32 }

@CTL_NET = common dso_local global i32 0, align 4
@PF_ROUTE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NET_RT_IFLIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"iflist-sysctl-estimate\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"iflist-sysctl-get\00", align 1
@RTM_VERSION = common dso_local global i64 0, align 8
@co = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"routing message version %d not understood\00", align 1
@RTM_IFINFO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown interface name %s\00", align 1
@RTM_NEWADDR = common dso_local global i64 0, align 8
@RTA_IFA = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IF_NAMESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.nat44_cfg_nat*)* @set_addr_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_addr_dynamic(i8* %0, %struct.nat44_cfg_nat* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nat44_cfg_nat*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [6 x i32], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.if_msghdr*, align 8
  %11 = alloca %struct.ifa_msghdr*, align 8
  %12 = alloca %struct.sockaddr_dl*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.nat44_cfg_nat* %1, %struct.nat44_cfg_nat** %4, align 8
  %17 = load i32, i32* @CTL_NET, align 4
  %18 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* @PF_ROUTE, align 4
  %20 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %21, align 8
  %22 = load i32, i32* @AF_INET, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @NET_RT_IFLIST, align 4
  %25 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 4
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 5
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %28 = call i32 @sysctl(i32* %27, i32 6, i8* null, i64* %5, i32* null, i32 0)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i64, i64* %5, align 8
  %34 = call i8* @safe_calloc(i32 1, i64 %33)
  store i8* %34, i8** %7, align 8
  %35 = getelementptr inbounds [6 x i32], [6 x i32]* %6, i64 0, i64 0
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @sysctl(i32* %35, i32 6, i8* %36, i64* %5, i32* null, i32 0)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %8, align 8
  store i32 0, i32* %14, align 4
  %45 = load i8*, i8** %7, align 8
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %104, %72, %41
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %105

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = bitcast i8* %51 to %struct.if_msghdr*
  store %struct.if_msghdr* %52, %struct.if_msghdr** %10, align 8
  %53 = load %struct.if_msghdr*, %struct.if_msghdr** %10, align 8
  %54 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %9, align 8
  %59 = load %struct.if_msghdr*, %struct.if_msghdr** %10, align 8
  %60 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @RTM_VERSION, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %50
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 0), align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load %struct.if_msghdr*, %struct.if_msghdr** %10, align 8
  %69 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %46

73:                                               ; preds = %50
  %74 = load %struct.if_msghdr*, %struct.if_msghdr** %10, align 8
  %75 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RTM_IFINFO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %73
  %80 = load %struct.if_msghdr*, %struct.if_msghdr** %10, align 8
  %81 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %80, i64 1
  %82 = bitcast %struct.if_msghdr* %81 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %82, %struct.sockaddr_dl** %12, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %12, align 8
  %86 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %79
  %90 = load i8*, i8** %3, align 8
  %91 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %12, align 8
  %92 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %12, align 8
  %95 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @strncmp(i8* %90, i32 %93, i64 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load %struct.if_msghdr*, %struct.if_msghdr** %10, align 8
  %101 = getelementptr inbounds %struct.if_msghdr, %struct.if_msghdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %14, align 4
  br label %105

103:                                              ; preds = %89, %79
  br label %104

104:                                              ; preds = %103, %73
  br label %46

105:                                              ; preds = %99, %46
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i8*, i8** %3, align 8
  %110 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %108, %105
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %13, align 8
  br label %112

112:                                              ; preds = %190, %138, %111
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = icmp ult i8* %113, %114
  br i1 %115, label %116, label %191

116:                                              ; preds = %112
  %117 = load i8*, i8** %9, align 8
  %118 = bitcast i8* %117 to %struct.ifa_msghdr*
  store %struct.ifa_msghdr* %118, %struct.ifa_msghdr** %11, align 8
  %119 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %120 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %9, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  store i8* %124, i8** %9, align 8
  %125 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %126 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @RTM_VERSION, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %116
  %131 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @co, i32 0, i32 0), align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %135 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %136)
  br label %138

138:                                              ; preds = %133, %130
  br label %112

139:                                              ; preds = %116
  %140 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %141 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @RTM_NEWADDR, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %191

146:                                              ; preds = %139
  %147 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %148 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @RTA_IFA, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %190

153:                                              ; preds = %146
  %154 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %155 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %154, i64 1
  %156 = bitcast %struct.ifa_msghdr* %155 to i8*
  store i8* %156, i8** %16, align 8
  store i32 1, i32* %15, align 4
  br label %157

157:                                              ; preds = %176, %153
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @RTA_IFA, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  %162 = load %struct.ifa_msghdr*, %struct.ifa_msghdr** %11, align 8
  %163 = getelementptr inbounds %struct.ifa_msghdr, %struct.ifa_msghdr* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load i8*, i8** %16, align 8
  %170 = bitcast i8* %169 to %struct.sockaddr*
  %171 = call i32 @SA_SIZE(%struct.sockaddr* %170)
  %172 = load i8*, i8** %16, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i8, i8* %172, i64 %173
  store i8* %174, i8** %16, align 8
  br label %175

175:                                              ; preds = %168, %161
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = shl i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %157

179:                                              ; preds = %157
  %180 = load i8*, i8** %16, align 8
  %181 = bitcast i8* %180 to %struct.sockaddr*
  %182 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @AF_INET, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %179
  %187 = load i8*, i8** %16, align 8
  %188 = bitcast i8* %187 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %188, %struct.sockaddr_in** %13, align 8
  br label %191

189:                                              ; preds = %179
  br label %190

190:                                              ; preds = %189, %146
  br label %112

191:                                              ; preds = %186, %145, %112
  %192 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %193 = icmp eq %struct.sockaddr_in* %192, null
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, i32* @INADDR_ANY, align 4
  %196 = call i32 @htonl(i32 %195)
  %197 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %198 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 4
  br label %207

200:                                              ; preds = %191
  %201 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %202 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %201, i32 0, i32 1
  %203 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %204 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %203, i32 0, i32 0
  %205 = bitcast %struct.TYPE_3__* %202 to i8*
  %206 = bitcast %struct.TYPE_3__* %204 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %205, i8* align 4 %206, i64 4, i1 false)
  br label %207

207:                                              ; preds = %200, %194
  %208 = load %struct.nat44_cfg_nat*, %struct.nat44_cfg_nat** %4, align 8
  %209 = getelementptr inbounds %struct.nat44_cfg_nat, %struct.nat44_cfg_nat* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i8*, i8** %3, align 8
  %212 = load i32, i32* @IF_NAMESIZE, align 4
  %213 = call i32 @strncpy(i32 %210, i8* %211, i32 %212)
  %214 = load i8*, i8** %7, align 8
  %215 = call i32 @free(i8* %214)
  ret void
}

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @safe_calloc(i32, i64) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @SA_SIZE(%struct.sockaddr*) #1

declare dso_local i32 @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
