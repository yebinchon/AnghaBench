; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_remote = type { i32 }
%struct.worker = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"reload\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"stats_noreset\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"dump_cache\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"load_cache\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"list_forwards\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"list_stubs\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"list_insecure\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"list_local_zones\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"list_local_data\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"view_list_local_zones\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"view_list_local_data\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ratelimit_list\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"ip_ratelimit_list\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"list_auth_zones\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"auth_zone_reload\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"auth_zone_transfer\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"stub_add\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"stub_remove\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"forward_add\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"forward_remove\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"insecure_add\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"insecure_remove\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"flush_stats\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"flush_requestlist\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"lookup\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"local_zone_remove\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"local_zones_remove\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"local_zone\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"local_zones\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"local_data_remove\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"local_datas_remove\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"local_data\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"local_datas\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"view_local_zone_remove\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"view_local_zone\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"view_local_data_remove\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"view_local_data\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"view_local_datas\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"flush_zone\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"flush_type\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"flush_infra\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"dump_requestlist\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"dump_infra\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"log_reopen\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"set_option\00", align 1
@.str.51 = private unnamed_addr constant [11 x i8] c"get_option\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"flush_bogus\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"flush_negative\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"error unknown command '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.daemon_remote*, i32*, i8*, %struct.worker*)* @execute_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_cmd(%struct.daemon_remote* %0, i32* %1, i8* %2, %struct.worker* %3) #0 {
  %5 = alloca %struct.daemon_remote*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.worker*, align 8
  %9 = alloca i8*, align 8
  store %struct.daemon_remote* %0, %struct.daemon_remote** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.worker* %3, %struct.worker** %8, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i8* @skipwhite(i8* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = call i64 @cmdcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %18 = call i32 @do_stop(i32* %16, %struct.daemon_remote* %17)
  br label %707

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = call i64 @cmdcmp(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %26 = call i32 @do_reload(i32* %24, %struct.daemon_remote* %25)
  br label %707

27:                                               ; preds = %19
  %28 = load i8*, i8** %9, align 8
  %29 = call i64 @cmdcmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 13)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %34 = call i32 @do_stats(i32* %32, %struct.daemon_remote* %33, i32 0)
  br label %707

35:                                               ; preds = %27
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @cmdcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %42 = call i32 @do_stats(i32* %40, %struct.daemon_remote* %41, i32 1)
  br label %707

43:                                               ; preds = %35
  %44 = load i8*, i8** %9, align 8
  %45 = call i64 @cmdcmp(i8* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.worker*, %struct.worker** %8, align 8
  %50 = call i32 @do_status(i32* %48, %struct.worker* %49)
  br label %707

51:                                               ; preds = %43
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @cmdcmp(i8* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 10)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load %struct.worker*, %struct.worker** %8, align 8
  %58 = call i32 @dump_cache(i32* %56, %struct.worker* %57)
  br label %707

59:                                               ; preds = %51
  %60 = load i8*, i8** %9, align 8
  %61 = call i64 @cmdcmp(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.worker*, %struct.worker** %8, align 8
  %66 = call i64 @load_cache(i32* %64, %struct.worker* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @send_ok(i32* %69)
  br label %71

71:                                               ; preds = %68, %63
  br label %707

72:                                               ; preds = %59
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @cmdcmp(i8* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 13)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.worker*, %struct.worker** %8, align 8
  %79 = call i32 @do_list_forwards(i32* %77, %struct.worker* %78)
  br label %707

80:                                               ; preds = %72
  %81 = load i8*, i8** %9, align 8
  %82 = call i64 @cmdcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 10)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.worker*, %struct.worker** %8, align 8
  %87 = call i32 @do_list_stubs(i32* %85, %struct.worker* %86)
  br label %707

88:                                               ; preds = %80
  %89 = load i8*, i8** %9, align 8
  %90 = call i64 @cmdcmp(i8* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 13)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.worker*, %struct.worker** %8, align 8
  %95 = call i32 @do_insecure_list(i32* %93, %struct.worker* %94)
  br label %707

96:                                               ; preds = %88
  %97 = load i8*, i8** %9, align 8
  %98 = call i64 @cmdcmp(i8* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 16)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.worker*, %struct.worker** %8, align 8
  %103 = getelementptr inbounds %struct.worker, %struct.worker* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @do_list_local_zones(i32* %101, i32 %106)
  br label %707

108:                                              ; preds = %96
  %109 = load i8*, i8** %9, align 8
  %110 = call i64 @cmdcmp(i8* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 15)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.worker*, %struct.worker** %8, align 8
  %115 = load %struct.worker*, %struct.worker** %8, align 8
  %116 = getelementptr inbounds %struct.worker, %struct.worker* %115, i32 0, i32 0
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @do_list_local_data(i32* %113, %struct.worker* %114, i32 %119)
  br label %707

121:                                              ; preds = %108
  %122 = load i8*, i8** %9, align 8
  %123 = call i64 @cmdcmp(i8* %122, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 21)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %121
  %126 = load i32*, i32** %6, align 8
  %127 = load %struct.worker*, %struct.worker** %8, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 21
  %130 = call i8* @skipwhite(i8* %129)
  %131 = call i32 @do_view_list_local_zones(i32* %126, %struct.worker* %127, i8* %130)
  br label %707

132:                                              ; preds = %121
  %133 = load i8*, i8** %9, align 8
  %134 = call i64 @cmdcmp(i8* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 20)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32*, i32** %6, align 8
  %138 = load %struct.worker*, %struct.worker** %8, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 20
  %141 = call i8* @skipwhite(i8* %140)
  %142 = call i32 @do_view_list_local_data(i32* %137, %struct.worker* %138, i8* %141)
  br label %707

143:                                              ; preds = %132
  %144 = load i8*, i8** %9, align 8
  %145 = call i64 @cmdcmp(i8* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 14)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32*, i32** %6, align 8
  %149 = load %struct.worker*, %struct.worker** %8, align 8
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 14
  %152 = call i32 @do_ratelimit_list(i32* %148, %struct.worker* %149, i8* %151)
  br label %707

153:                                              ; preds = %143
  %154 = load i8*, i8** %9, align 8
  %155 = call i64 @cmdcmp(i8* %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 17)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load i32*, i32** %6, align 8
  %159 = load %struct.worker*, %struct.worker** %8, align 8
  %160 = load i8*, i8** %9, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 17
  %162 = call i32 @do_ip_ratelimit_list(i32* %158, %struct.worker* %159, i8* %161)
  br label %707

163:                                              ; preds = %153
  %164 = load i8*, i8** %9, align 8
  %165 = call i64 @cmdcmp(i8* %164, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 15)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %163
  %168 = load i32*, i32** %6, align 8
  %169 = load %struct.worker*, %struct.worker** %8, align 8
  %170 = getelementptr inbounds %struct.worker, %struct.worker* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @do_list_auth_zones(i32* %168, i32 %172)
  br label %707

174:                                              ; preds = %163
  %175 = load i8*, i8** %9, align 8
  %176 = call i64 @cmdcmp(i8* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 16)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %174
  %179 = load i32*, i32** %6, align 8
  %180 = load %struct.worker*, %struct.worker** %8, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 16
  %183 = call i8* @skipwhite(i8* %182)
  %184 = call i32 @do_auth_zone_reload(i32* %179, %struct.worker* %180, i8* %183)
  br label %707

185:                                              ; preds = %174
  %186 = load i8*, i8** %9, align 8
  %187 = call i64 @cmdcmp(i8* %186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 18)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i32*, i32** %6, align 8
  %191 = load %struct.worker*, %struct.worker** %8, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 18
  %194 = call i8* @skipwhite(i8* %193)
  %195 = call i32 @do_auth_zone_transfer(i32* %190, %struct.worker* %191, i8* %194)
  br label %707

196:                                              ; preds = %185
  %197 = load i8*, i8** %9, align 8
  %198 = call i64 @cmdcmp(i8* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 8)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %196
  %201 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %202 = icmp ne %struct.daemon_remote* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %205 = load i32*, i32** %6, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @distribute_cmd(%struct.daemon_remote* %204, i32* %205, i8* %206)
  br label %208

208:                                              ; preds = %203, %200
  %209 = load i32*, i32** %6, align 8
  %210 = load %struct.worker*, %struct.worker** %8, align 8
  %211 = load i8*, i8** %9, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 8
  %213 = call i8* @skipwhite(i8* %212)
  %214 = call i32 @do_stub_add(i32* %209, %struct.worker* %210, i8* %213)
  br label %707

215:                                              ; preds = %196
  %216 = load i8*, i8** %9, align 8
  %217 = call i64 @cmdcmp(i8* %216, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 11)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %234

219:                                              ; preds = %215
  %220 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %221 = icmp ne %struct.daemon_remote* %220, null
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %224 = load i32*, i32** %6, align 8
  %225 = load i8*, i8** %7, align 8
  %226 = call i32 @distribute_cmd(%struct.daemon_remote* %223, i32* %224, i8* %225)
  br label %227

227:                                              ; preds = %222, %219
  %228 = load i32*, i32** %6, align 8
  %229 = load %struct.worker*, %struct.worker** %8, align 8
  %230 = load i8*, i8** %9, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 11
  %232 = call i8* @skipwhite(i8* %231)
  %233 = call i32 @do_stub_remove(i32* %228, %struct.worker* %229, i8* %232)
  br label %707

234:                                              ; preds = %215
  %235 = load i8*, i8** %9, align 8
  %236 = call i64 @cmdcmp(i8* %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i64 0, i64 0), i32 11)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %234
  %239 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %240 = icmp ne %struct.daemon_remote* %239, null
  br i1 %240, label %241, label %246

241:                                              ; preds = %238
  %242 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %243 = load i32*, i32** %6, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = call i32 @distribute_cmd(%struct.daemon_remote* %242, i32* %243, i8* %244)
  br label %246

246:                                              ; preds = %241, %238
  %247 = load i32*, i32** %6, align 8
  %248 = load %struct.worker*, %struct.worker** %8, align 8
  %249 = load i8*, i8** %9, align 8
  %250 = getelementptr inbounds i8, i8* %249, i64 11
  %251 = call i8* @skipwhite(i8* %250)
  %252 = call i32 @do_forward_add(i32* %247, %struct.worker* %248, i8* %251)
  br label %707

253:                                              ; preds = %234
  %254 = load i8*, i8** %9, align 8
  %255 = call i64 @cmdcmp(i8* %254, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i32 14)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %272

257:                                              ; preds = %253
  %258 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %259 = icmp ne %struct.daemon_remote* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %262 = load i32*, i32** %6, align 8
  %263 = load i8*, i8** %7, align 8
  %264 = call i32 @distribute_cmd(%struct.daemon_remote* %261, i32* %262, i8* %263)
  br label %265

265:                                              ; preds = %260, %257
  %266 = load i32*, i32** %6, align 8
  %267 = load %struct.worker*, %struct.worker** %8, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 14
  %270 = call i8* @skipwhite(i8* %269)
  %271 = call i32 @do_forward_remove(i32* %266, %struct.worker* %267, i8* %270)
  br label %707

272:                                              ; preds = %253
  %273 = load i8*, i8** %9, align 8
  %274 = call i64 @cmdcmp(i8* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 12)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %291

276:                                              ; preds = %272
  %277 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %278 = icmp ne %struct.daemon_remote* %277, null
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  %280 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %281 = load i32*, i32** %6, align 8
  %282 = load i8*, i8** %7, align 8
  %283 = call i32 @distribute_cmd(%struct.daemon_remote* %280, i32* %281, i8* %282)
  br label %284

284:                                              ; preds = %279, %276
  %285 = load i32*, i32** %6, align 8
  %286 = load %struct.worker*, %struct.worker** %8, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 12
  %289 = call i8* @skipwhite(i8* %288)
  %290 = call i32 @do_insecure_add(i32* %285, %struct.worker* %286, i8* %289)
  br label %707

291:                                              ; preds = %272
  %292 = load i8*, i8** %9, align 8
  %293 = call i64 @cmdcmp(i8* %292, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i32 15)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %310

295:                                              ; preds = %291
  %296 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %297 = icmp ne %struct.daemon_remote* %296, null
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %300 = load i32*, i32** %6, align 8
  %301 = load i8*, i8** %7, align 8
  %302 = call i32 @distribute_cmd(%struct.daemon_remote* %299, i32* %300, i8* %301)
  br label %303

303:                                              ; preds = %298, %295
  %304 = load i32*, i32** %6, align 8
  %305 = load %struct.worker*, %struct.worker** %8, align 8
  %306 = load i8*, i8** %9, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 15
  %308 = call i8* @skipwhite(i8* %307)
  %309 = call i32 @do_insecure_remove(i32* %304, %struct.worker* %305, i8* %308)
  br label %707

310:                                              ; preds = %291
  %311 = load i8*, i8** %9, align 8
  %312 = call i64 @cmdcmp(i8* %311, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i32 7)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %329

314:                                              ; preds = %310
  %315 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %316 = icmp ne %struct.daemon_remote* %315, null
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %319 = load i32*, i32** %6, align 8
  %320 = load i8*, i8** %7, align 8
  %321 = call i32 @distribute_cmd(%struct.daemon_remote* %318, i32* %319, i8* %320)
  br label %322

322:                                              ; preds = %317, %314
  %323 = load i32*, i32** %6, align 8
  %324 = load %struct.worker*, %struct.worker** %8, align 8
  %325 = load i8*, i8** %9, align 8
  %326 = getelementptr inbounds i8, i8* %325, i64 7
  %327 = call i8* @skipwhite(i8* %326)
  %328 = call i32 @do_forward(i32* %323, %struct.worker* %324, i8* %327)
  br label %707

329:                                              ; preds = %310
  %330 = load i8*, i8** %9, align 8
  %331 = call i64 @cmdcmp(i8* %330, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i32 11)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %345

333:                                              ; preds = %329
  %334 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %335 = icmp ne %struct.daemon_remote* %334, null
  br i1 %335, label %336, label %341

336:                                              ; preds = %333
  %337 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %338 = load i32*, i32** %6, align 8
  %339 = load i8*, i8** %7, align 8
  %340 = call i32 @distribute_cmd(%struct.daemon_remote* %337, i32* %338, i8* %339)
  br label %341

341:                                              ; preds = %336, %333
  %342 = load i32*, i32** %6, align 8
  %343 = load %struct.worker*, %struct.worker** %8, align 8
  %344 = call i32 @do_flush_stats(i32* %342, %struct.worker* %343)
  br label %707

345:                                              ; preds = %329
  %346 = load i8*, i8** %9, align 8
  %347 = call i64 @cmdcmp(i8* %346, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 17)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %345
  %350 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %351 = icmp ne %struct.daemon_remote* %350, null
  br i1 %351, label %352, label %357

352:                                              ; preds = %349
  %353 = load %struct.daemon_remote*, %struct.daemon_remote** %5, align 8
  %354 = load i32*, i32** %6, align 8
  %355 = load i8*, i8** %7, align 8
  %356 = call i32 @distribute_cmd(%struct.daemon_remote* %353, i32* %354, i8* %355)
  br label %357

357:                                              ; preds = %352, %349
  %358 = load i32*, i32** %6, align 8
  %359 = load %struct.worker*, %struct.worker** %8, align 8
  %360 = call i32 @do_flush_requestlist(i32* %358, %struct.worker* %359)
  br label %707

361:                                              ; preds = %345
  %362 = load i8*, i8** %9, align 8
  %363 = call i64 @cmdcmp(i8* %362, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i32 6)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %372

365:                                              ; preds = %361
  %366 = load i32*, i32** %6, align 8
  %367 = load %struct.worker*, %struct.worker** %8, align 8
  %368 = load i8*, i8** %9, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 6
  %370 = call i8* @skipwhite(i8* %369)
  %371 = call i32 @do_lookup(i32* %366, %struct.worker* %367, i8* %370)
  br label %707

372:                                              ; preds = %361
  br label %373

373:                                              ; preds = %372
  br label %374

374:                                              ; preds = %373
  br label %375

375:                                              ; preds = %374
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376
  br label %378

378:                                              ; preds = %377
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  br label %381

381:                                              ; preds = %380
  br label %382

382:                                              ; preds = %381
  br label %383

383:                                              ; preds = %382
  br label %384

384:                                              ; preds = %383
  br label %385

385:                                              ; preds = %384
  br label %386

386:                                              ; preds = %385
  br label %387

387:                                              ; preds = %386
  br label %388

388:                                              ; preds = %387
  br label %389

389:                                              ; preds = %388
  br label %390

390:                                              ; preds = %389
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392
  br label %394

394:                                              ; preds = %393
  br label %395

395:                                              ; preds = %394
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  br label %398

398:                                              ; preds = %397
  br label %399

399:                                              ; preds = %398
  br label %400

400:                                              ; preds = %399
  %401 = load i8*, i8** %9, align 8
  %402 = call i64 @cmdcmp(i8* %401, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 9)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %400
  %405 = load i32*, i32** %6, align 8
  %406 = load i8*, i8** %9, align 8
  %407 = getelementptr inbounds i8, i8* %406, i64 9
  %408 = call i8* @skipwhite(i8* %407)
  %409 = call i32 @do_verbosity(i32* %405, i8* %408)
  br label %707

410:                                              ; preds = %400
  %411 = load i8*, i8** %9, align 8
  %412 = call i64 @cmdcmp(i8* %411, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0), i32 17)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %425

414:                                              ; preds = %410
  %415 = load i32*, i32** %6, align 8
  %416 = load %struct.worker*, %struct.worker** %8, align 8
  %417 = getelementptr inbounds %struct.worker, %struct.worker* %416, i32 0, i32 0
  %418 = load %struct.TYPE_4__*, %struct.TYPE_4__** %417, align 8
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = load i8*, i8** %9, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 17
  %423 = call i8* @skipwhite(i8* %422)
  %424 = call i32 @do_zone_remove(i32* %415, i32 %420, i8* %423)
  br label %706

425:                                              ; preds = %410
  %426 = load i8*, i8** %9, align 8
  %427 = call i64 @cmdcmp(i8* %426, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 18)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %437

429:                                              ; preds = %425
  %430 = load i32*, i32** %6, align 8
  %431 = load %struct.worker*, %struct.worker** %8, align 8
  %432 = getelementptr inbounds %struct.worker, %struct.worker* %431, i32 0, i32 0
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @do_zones_remove(i32* %430, i32 %435)
  br label %705

437:                                              ; preds = %425
  %438 = load i8*, i8** %9, align 8
  %439 = call i64 @cmdcmp(i8* %438, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 10)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %437
  %442 = load i32*, i32** %6, align 8
  %443 = load %struct.worker*, %struct.worker** %8, align 8
  %444 = getelementptr inbounds %struct.worker, %struct.worker* %443, i32 0, i32 0
  %445 = load %struct.TYPE_4__*, %struct.TYPE_4__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load i8*, i8** %9, align 8
  %449 = getelementptr inbounds i8, i8* %448, i64 10
  %450 = call i8* @skipwhite(i8* %449)
  %451 = call i32 @do_zone_add(i32* %442, i32 %447, i8* %450)
  br label %704

452:                                              ; preds = %437
  %453 = load i8*, i8** %9, align 8
  %454 = call i64 @cmdcmp(i8* %453, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 11)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %464

456:                                              ; preds = %452
  %457 = load i32*, i32** %6, align 8
  %458 = load %struct.worker*, %struct.worker** %8, align 8
  %459 = getelementptr inbounds %struct.worker, %struct.worker* %458, i32 0, i32 0
  %460 = load %struct.TYPE_4__*, %struct.TYPE_4__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @do_zones_add(i32* %457, i32 %462)
  br label %703

464:                                              ; preds = %452
  %465 = load i8*, i8** %9, align 8
  %466 = call i64 @cmdcmp(i8* %465, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0), i32 17)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %464
  %469 = load i32*, i32** %6, align 8
  %470 = load %struct.worker*, %struct.worker** %8, align 8
  %471 = getelementptr inbounds %struct.worker, %struct.worker* %470, i32 0, i32 0
  %472 = load %struct.TYPE_4__*, %struct.TYPE_4__** %471, align 8
  %473 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load i8*, i8** %9, align 8
  %476 = getelementptr inbounds i8, i8* %475, i64 17
  %477 = call i8* @skipwhite(i8* %476)
  %478 = call i32 @do_data_remove(i32* %469, i32 %474, i8* %477)
  br label %702

479:                                              ; preds = %464
  %480 = load i8*, i8** %9, align 8
  %481 = call i64 @cmdcmp(i8* %480, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 18)
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %491

483:                                              ; preds = %479
  %484 = load i32*, i32** %6, align 8
  %485 = load %struct.worker*, %struct.worker** %8, align 8
  %486 = getelementptr inbounds %struct.worker, %struct.worker* %485, i32 0, i32 0
  %487 = load %struct.TYPE_4__*, %struct.TYPE_4__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @do_datas_remove(i32* %484, i32 %489)
  br label %701

491:                                              ; preds = %479
  %492 = load i8*, i8** %9, align 8
  %493 = call i64 @cmdcmp(i8* %492, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i32 10)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %506

495:                                              ; preds = %491
  %496 = load i32*, i32** %6, align 8
  %497 = load %struct.worker*, %struct.worker** %8, align 8
  %498 = getelementptr inbounds %struct.worker, %struct.worker* %497, i32 0, i32 0
  %499 = load %struct.TYPE_4__*, %struct.TYPE_4__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i8*, i8** %9, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 10
  %504 = call i8* @skipwhite(i8* %503)
  %505 = call i32 @do_data_add(i32* %496, i32 %501, i8* %504)
  br label %700

506:                                              ; preds = %491
  %507 = load i8*, i8** %9, align 8
  %508 = call i64 @cmdcmp(i8* %507, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 11)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %518

510:                                              ; preds = %506
  %511 = load i32*, i32** %6, align 8
  %512 = load %struct.worker*, %struct.worker** %8, align 8
  %513 = getelementptr inbounds %struct.worker, %struct.worker* %512, i32 0, i32 0
  %514 = load %struct.TYPE_4__*, %struct.TYPE_4__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @do_datas_add(i32* %511, i32 %516)
  br label %699

518:                                              ; preds = %506
  %519 = load i8*, i8** %9, align 8
  %520 = call i64 @cmdcmp(i8* %519, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 22)
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %529

522:                                              ; preds = %518
  %523 = load i32*, i32** %6, align 8
  %524 = load %struct.worker*, %struct.worker** %8, align 8
  %525 = load i8*, i8** %9, align 8
  %526 = getelementptr inbounds i8, i8* %525, i64 22
  %527 = call i8* @skipwhite(i8* %526)
  %528 = call i32 @do_view_zone_remove(i32* %523, %struct.worker* %524, i8* %527)
  br label %698

529:                                              ; preds = %518
  %530 = load i8*, i8** %9, align 8
  %531 = call i64 @cmdcmp(i8* %530, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i32 15)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %540

533:                                              ; preds = %529
  %534 = load i32*, i32** %6, align 8
  %535 = load %struct.worker*, %struct.worker** %8, align 8
  %536 = load i8*, i8** %9, align 8
  %537 = getelementptr inbounds i8, i8* %536, i64 15
  %538 = call i8* @skipwhite(i8* %537)
  %539 = call i32 @do_view_zone_add(i32* %534, %struct.worker* %535, i8* %538)
  br label %697

540:                                              ; preds = %529
  %541 = load i8*, i8** %9, align 8
  %542 = call i64 @cmdcmp(i8* %541, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 22)
  %543 = icmp ne i64 %542, 0
  br i1 %543, label %544, label %551

544:                                              ; preds = %540
  %545 = load i32*, i32** %6, align 8
  %546 = load %struct.worker*, %struct.worker** %8, align 8
  %547 = load i8*, i8** %9, align 8
  %548 = getelementptr inbounds i8, i8* %547, i64 22
  %549 = call i8* @skipwhite(i8* %548)
  %550 = call i32 @do_view_data_remove(i32* %545, %struct.worker* %546, i8* %549)
  br label %696

551:                                              ; preds = %540
  %552 = load i8*, i8** %9, align 8
  %553 = call i64 @cmdcmp(i8* %552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i64 0, i64 0), i32 15)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %562

555:                                              ; preds = %551
  %556 = load i32*, i32** %6, align 8
  %557 = load %struct.worker*, %struct.worker** %8, align 8
  %558 = load i8*, i8** %9, align 8
  %559 = getelementptr inbounds i8, i8* %558, i64 15
  %560 = call i8* @skipwhite(i8* %559)
  %561 = call i32 @do_view_data_add(i32* %556, %struct.worker* %557, i8* %560)
  br label %695

562:                                              ; preds = %551
  %563 = load i8*, i8** %9, align 8
  %564 = call i64 @cmdcmp(i8* %563, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i32 16)
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %573

566:                                              ; preds = %562
  %567 = load i32*, i32** %6, align 8
  %568 = load %struct.worker*, %struct.worker** %8, align 8
  %569 = load i8*, i8** %9, align 8
  %570 = getelementptr inbounds i8, i8* %569, i64 16
  %571 = call i8* @skipwhite(i8* %570)
  %572 = call i32 @do_view_datas_add(i32* %567, %struct.worker* %568, i8* %571)
  br label %694

573:                                              ; preds = %562
  %574 = load i8*, i8** %9, align 8
  %575 = call i64 @cmdcmp(i8* %574, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i32 10)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %584

577:                                              ; preds = %573
  %578 = load i32*, i32** %6, align 8
  %579 = load %struct.worker*, %struct.worker** %8, align 8
  %580 = load i8*, i8** %9, align 8
  %581 = getelementptr inbounds i8, i8* %580, i64 10
  %582 = call i8* @skipwhite(i8* %581)
  %583 = call i32 @do_flush_zone(i32* %578, %struct.worker* %579, i8* %582)
  br label %693

584:                                              ; preds = %573
  %585 = load i8*, i8** %9, align 8
  %586 = call i64 @cmdcmp(i8* %585, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i32 10)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %595

588:                                              ; preds = %584
  %589 = load i32*, i32** %6, align 8
  %590 = load %struct.worker*, %struct.worker** %8, align 8
  %591 = load i8*, i8** %9, align 8
  %592 = getelementptr inbounds i8, i8* %591, i64 10
  %593 = call i8* @skipwhite(i8* %592)
  %594 = call i32 @do_flush_type(i32* %589, %struct.worker* %590, i8* %593)
  br label %692

595:                                              ; preds = %584
  %596 = load i8*, i8** %9, align 8
  %597 = call i64 @cmdcmp(i8* %596, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 11)
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %606

599:                                              ; preds = %595
  %600 = load i32*, i32** %6, align 8
  %601 = load %struct.worker*, %struct.worker** %8, align 8
  %602 = load i8*, i8** %9, align 8
  %603 = getelementptr inbounds i8, i8* %602, i64 11
  %604 = call i8* @skipwhite(i8* %603)
  %605 = call i32 @do_flush_infra(i32* %600, %struct.worker* %601, i8* %604)
  br label %691

606:                                              ; preds = %595
  %607 = load i8*, i8** %9, align 8
  %608 = call i64 @cmdcmp(i8* %607, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 5)
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %617

610:                                              ; preds = %606
  %611 = load i32*, i32** %6, align 8
  %612 = load %struct.worker*, %struct.worker** %8, align 8
  %613 = load i8*, i8** %9, align 8
  %614 = getelementptr inbounds i8, i8* %613, i64 5
  %615 = call i8* @skipwhite(i8* %614)
  %616 = call i32 @do_flush_name(i32* %611, %struct.worker* %612, i8* %615)
  br label %690

617:                                              ; preds = %606
  %618 = load i8*, i8** %9, align 8
  %619 = call i64 @cmdcmp(i8* %618, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.47, i64 0, i64 0), i32 16)
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %625

621:                                              ; preds = %617
  %622 = load i32*, i32** %6, align 8
  %623 = load %struct.worker*, %struct.worker** %8, align 8
  %624 = call i32 @do_dump_requestlist(i32* %622, %struct.worker* %623)
  br label %689

625:                                              ; preds = %617
  %626 = load i8*, i8** %9, align 8
  %627 = call i64 @cmdcmp(i8* %626, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i64 0, i64 0), i32 10)
  %628 = icmp ne i64 %627, 0
  br i1 %628, label %629, label %633

629:                                              ; preds = %625
  %630 = load i32*, i32** %6, align 8
  %631 = load %struct.worker*, %struct.worker** %8, align 8
  %632 = call i32 @do_dump_infra(i32* %630, %struct.worker* %631)
  br label %688

633:                                              ; preds = %625
  %634 = load i8*, i8** %9, align 8
  %635 = call i64 @cmdcmp(i8* %634, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i64 0, i64 0), i32 10)
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %641

637:                                              ; preds = %633
  %638 = load i32*, i32** %6, align 8
  %639 = load %struct.worker*, %struct.worker** %8, align 8
  %640 = call i32 @do_log_reopen(i32* %638, %struct.worker* %639)
  br label %687

641:                                              ; preds = %633
  %642 = load i8*, i8** %9, align 8
  %643 = call i64 @cmdcmp(i8* %642, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i64 0, i64 0), i32 10)
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %652

645:                                              ; preds = %641
  %646 = load i32*, i32** %6, align 8
  %647 = load %struct.worker*, %struct.worker** %8, align 8
  %648 = load i8*, i8** %9, align 8
  %649 = getelementptr inbounds i8, i8* %648, i64 10
  %650 = call i8* @skipwhite(i8* %649)
  %651 = call i32 @do_set_option(i32* %646, %struct.worker* %647, i8* %650)
  br label %686

652:                                              ; preds = %641
  %653 = load i8*, i8** %9, align 8
  %654 = call i64 @cmdcmp(i8* %653, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.51, i64 0, i64 0), i32 10)
  %655 = icmp ne i64 %654, 0
  br i1 %655, label %656, label %663

656:                                              ; preds = %652
  %657 = load i32*, i32** %6, align 8
  %658 = load %struct.worker*, %struct.worker** %8, align 8
  %659 = load i8*, i8** %9, align 8
  %660 = getelementptr inbounds i8, i8* %659, i64 10
  %661 = call i8* @skipwhite(i8* %660)
  %662 = call i32 @do_get_option(i32* %657, %struct.worker* %658, i8* %661)
  br label %685

663:                                              ; preds = %652
  %664 = load i8*, i8** %9, align 8
  %665 = call i64 @cmdcmp(i8* %664, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i32 11)
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %667, label %671

667:                                              ; preds = %663
  %668 = load i32*, i32** %6, align 8
  %669 = load %struct.worker*, %struct.worker** %8, align 8
  %670 = call i32 @do_flush_bogus(i32* %668, %struct.worker* %669)
  br label %684

671:                                              ; preds = %663
  %672 = load i8*, i8** %9, align 8
  %673 = call i64 @cmdcmp(i8* %672, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i64 0, i64 0), i32 14)
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %679

675:                                              ; preds = %671
  %676 = load i32*, i32** %6, align 8
  %677 = load %struct.worker*, %struct.worker** %8, align 8
  %678 = call i32 @do_flush_negative(i32* %676, %struct.worker* %677)
  br label %683

679:                                              ; preds = %671
  %680 = load i32*, i32** %6, align 8
  %681 = load i8*, i8** %9, align 8
  %682 = call i32 @ssl_printf(i32* %680, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0), i8* %681)
  br label %683

683:                                              ; preds = %679, %675
  br label %684

684:                                              ; preds = %683, %667
  br label %685

685:                                              ; preds = %684, %656
  br label %686

686:                                              ; preds = %685, %645
  br label %687

687:                                              ; preds = %686, %637
  br label %688

688:                                              ; preds = %687, %629
  br label %689

689:                                              ; preds = %688, %621
  br label %690

690:                                              ; preds = %689, %610
  br label %691

691:                                              ; preds = %690, %599
  br label %692

692:                                              ; preds = %691, %588
  br label %693

693:                                              ; preds = %692, %577
  br label %694

694:                                              ; preds = %693, %566
  br label %695

695:                                              ; preds = %694, %555
  br label %696

696:                                              ; preds = %695, %544
  br label %697

697:                                              ; preds = %696, %533
  br label %698

698:                                              ; preds = %697, %522
  br label %699

699:                                              ; preds = %698, %510
  br label %700

700:                                              ; preds = %699, %495
  br label %701

701:                                              ; preds = %700, %483
  br label %702

702:                                              ; preds = %701, %468
  br label %703

703:                                              ; preds = %702, %456
  br label %704

704:                                              ; preds = %703, %441
  br label %705

705:                                              ; preds = %704, %429
  br label %706

706:                                              ; preds = %705, %414
  br label %707

707:                                              ; preds = %15, %23, %31, %39, %47, %55, %71, %76, %84, %92, %100, %112, %125, %136, %147, %157, %167, %178, %189, %208, %227, %246, %265, %284, %303, %322, %341, %357, %365, %706, %404
  ret void
}

declare dso_local i8* @skipwhite(i8*) #1

declare dso_local i64 @cmdcmp(i8*, i8*, i32) #1

declare dso_local i32 @do_stop(i32*, %struct.daemon_remote*) #1

declare dso_local i32 @do_reload(i32*, %struct.daemon_remote*) #1

declare dso_local i32 @do_stats(i32*, %struct.daemon_remote*, i32) #1

declare dso_local i32 @do_status(i32*, %struct.worker*) #1

declare dso_local i32 @dump_cache(i32*, %struct.worker*) #1

declare dso_local i64 @load_cache(i32*, %struct.worker*) #1

declare dso_local i32 @send_ok(i32*) #1

declare dso_local i32 @do_list_forwards(i32*, %struct.worker*) #1

declare dso_local i32 @do_list_stubs(i32*, %struct.worker*) #1

declare dso_local i32 @do_insecure_list(i32*, %struct.worker*) #1

declare dso_local i32 @do_list_local_zones(i32*, i32) #1

declare dso_local i32 @do_list_local_data(i32*, %struct.worker*, i32) #1

declare dso_local i32 @do_view_list_local_zones(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_view_list_local_data(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_ratelimit_list(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_ip_ratelimit_list(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_list_auth_zones(i32*, i32) #1

declare dso_local i32 @do_auth_zone_reload(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_auth_zone_transfer(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @distribute_cmd(%struct.daemon_remote*, i32*, i8*) #1

declare dso_local i32 @do_stub_add(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_stub_remove(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_forward_add(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_forward_remove(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_insecure_add(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_insecure_remove(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_forward(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_flush_stats(i32*, %struct.worker*) #1

declare dso_local i32 @do_flush_requestlist(i32*, %struct.worker*) #1

declare dso_local i32 @do_lookup(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_verbosity(i32*, i8*) #1

declare dso_local i32 @do_zone_remove(i32*, i32, i8*) #1

declare dso_local i32 @do_zones_remove(i32*, i32) #1

declare dso_local i32 @do_zone_add(i32*, i32, i8*) #1

declare dso_local i32 @do_zones_add(i32*, i32) #1

declare dso_local i32 @do_data_remove(i32*, i32, i8*) #1

declare dso_local i32 @do_datas_remove(i32*, i32) #1

declare dso_local i32 @do_data_add(i32*, i32, i8*) #1

declare dso_local i32 @do_datas_add(i32*, i32) #1

declare dso_local i32 @do_view_zone_remove(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_view_zone_add(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_view_data_remove(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_view_data_add(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_view_datas_add(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_flush_zone(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_flush_type(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_flush_infra(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_flush_name(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_dump_requestlist(i32*, %struct.worker*) #1

declare dso_local i32 @do_dump_infra(i32*, %struct.worker*) #1

declare dso_local i32 @do_log_reopen(i32*, %struct.worker*) #1

declare dso_local i32 @do_set_option(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_get_option(i32*, %struct.worker*, i8*) #1

declare dso_local i32 @do_flush_bogus(i32*, %struct.worker*) #1

declare dso_local i32 @do_flush_negative(i32*, %struct.worker*) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
