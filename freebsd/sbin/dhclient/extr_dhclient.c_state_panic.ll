; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_panic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_state_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i8*, %struct.client_lease*, %struct.client_lease*, %struct.client_lease* }
%struct.TYPE_3__ = type { i64 }
%struct.client_lease = type { i64, i64, %struct.client_lease*, i32*, i32 }

@.str = private unnamed_addr constant [24 x i8] c"No DHCPOFFERS received.\00", align 1
@cur_time = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Trying recorded lease %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"TIMEOUT\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"new_\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"alias_\00", align 1
@S_BOUND = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"bound: renewal in %d seconds.\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"bound: immediate renewal.\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"No working leases in persistent database - sleeping.\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@S_INIT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @state_panic(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.interface_info*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca %struct.client_lease*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.interface_info*
  store %struct.interface_info* %7, %struct.interface_info** %3, align 8
  %8 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %9 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load %struct.client_lease*, %struct.client_lease** %11, align 8
  store %struct.client_lease* %12, %struct.client_lease** %4, align 8
  %13 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %15 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  %18 = load %struct.client_lease*, %struct.client_lease** %17, align 8
  %19 = icmp ne %struct.client_lease* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %22 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  %25 = load %struct.client_lease*, %struct.client_lease** %24, align 8
  %26 = icmp ne %struct.client_lease* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %157

28:                                               ; preds = %20, %1
  br label %29

29:                                               ; preds = %229, %28
  %30 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %31 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load %struct.client_lease*, %struct.client_lease** %33, align 8
  %35 = icmp ne %struct.client_lease* %34, null
  br i1 %35, label %36, label %230

36:                                               ; preds = %29
  %37 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %38 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = load %struct.client_lease*, %struct.client_lease** %40, align 8
  %42 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @cur_time, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %36
  %47 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %48 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load %struct.client_lease*, %struct.client_lease** %50, align 8
  %52 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @piaddr(i32 %53)
  %55 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %57 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load %struct.client_lease*, %struct.client_lease** %59, align 8
  %61 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @script_init(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %62)
  %64 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %65 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load %struct.client_lease*, %struct.client_lease** %67, align 8
  %69 = call i32 @script_write_params(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.client_lease* %68)
  %70 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %71 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load %struct.client_lease*, %struct.client_lease** %73, align 8
  %75 = icmp ne %struct.client_lease* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %46
  %77 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %78 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load %struct.client_lease*, %struct.client_lease** %80, align 8
  %82 = call i32 @script_write_params(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.client_lease* %81)
  br label %83

83:                                               ; preds = %76, %46
  %84 = call i32 (...) @script_go()
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %134, label %86

86:                                               ; preds = %83
  %87 = load i64, i64* @cur_time, align 8
  %88 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %89 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load %struct.client_lease*, %struct.client_lease** %91, align 8
  %93 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %87, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %86
  %97 = load i8*, i8** @S_BOUND, align 8
  %98 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %99 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i8* %97, i8** %101, align 8
  %102 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %103 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 3
  %106 = load %struct.client_lease*, %struct.client_lease** %105, align 8
  %107 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @cur_time, align 8
  %110 = sub nsw i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %111)
  %113 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %114 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  %117 = load %struct.client_lease*, %struct.client_lease** %116, align 8
  %118 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %121 = call i32 @add_timeout(i64 %119, i32 (%struct.interface_info*)* @state_bound, %struct.interface_info* %120)
  br label %131

122:                                              ; preds = %86
  %123 = load i8*, i8** @S_BOUND, align 8
  %124 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %125 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %123, i8** %127, align 8
  %128 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %129 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %130 = call i32 @state_bound(%struct.interface_info* %129)
  br label %131

131:                                              ; preds = %122, %96
  %132 = call i32 (...) @reinitialize_interfaces()
  %133 = call i32 (...) @go_daemon()
  br label %265

134:                                              ; preds = %83
  br label %135

135:                                              ; preds = %134, %36
  %136 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %137 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 4
  %140 = load %struct.client_lease*, %struct.client_lease** %139, align 8
  %141 = icmp ne %struct.client_lease* %140, null
  br i1 %141, label %156, label %142

142:                                              ; preds = %135
  %143 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %144 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 3
  %147 = load %struct.client_lease*, %struct.client_lease** %146, align 8
  %148 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %149 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 4
  store %struct.client_lease* %147, %struct.client_lease** %151, align 8
  %152 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %153 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %152, i32 0, i32 0
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  store %struct.client_lease* null, %struct.client_lease** %155, align 8
  br label %230

156:                                              ; preds = %135
  br label %157

157:                                              ; preds = %156, %27
  %158 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %159 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 4
  %162 = load %struct.client_lease*, %struct.client_lease** %161, align 8
  store %struct.client_lease* %162, %struct.client_lease** %5, align 8
  br label %163

163:                                              ; preds = %169, %157
  %164 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %165 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %164, i32 0, i32 2
  %166 = load %struct.client_lease*, %struct.client_lease** %165, align 8
  %167 = icmp ne %struct.client_lease* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %171 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %170, i32 0, i32 2
  %172 = load %struct.client_lease*, %struct.client_lease** %171, align 8
  store %struct.client_lease* %172, %struct.client_lease** %5, align 8
  br label %163

173:                                              ; preds = %163
  %174 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %175 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load %struct.client_lease*, %struct.client_lease** %177, align 8
  %179 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %180 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %179, i32 0, i32 2
  store %struct.client_lease* %178, %struct.client_lease** %180, align 8
  %181 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %182 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %181, i32 0, i32 2
  %183 = load %struct.client_lease*, %struct.client_lease** %182, align 8
  %184 = icmp ne %struct.client_lease* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %173
  %186 = load %struct.client_lease*, %struct.client_lease** %5, align 8
  %187 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %186, i32 0, i32 2
  %188 = load %struct.client_lease*, %struct.client_lease** %187, align 8
  %189 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %188, i32 0, i32 2
  store %struct.client_lease* null, %struct.client_lease** %189, align 8
  br label %190

190:                                              ; preds = %185, %173
  %191 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %192 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 4
  %195 = load %struct.client_lease*, %struct.client_lease** %194, align 8
  %196 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %197 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %196, i32 0, i32 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  store %struct.client_lease* %195, %struct.client_lease** %199, align 8
  %200 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %201 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %200, i32 0, i32 0
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 4
  %204 = load %struct.client_lease*, %struct.client_lease** %203, align 8
  %205 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %204, i32 0, i32 2
  %206 = load %struct.client_lease*, %struct.client_lease** %205, align 8
  %207 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %208 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %207, i32 0, i32 0
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 4
  store %struct.client_lease* %206, %struct.client_lease** %210, align 8
  %211 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %212 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %211, i32 0, i32 0
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 3
  %215 = load %struct.client_lease*, %struct.client_lease** %214, align 8
  %216 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %217 = icmp eq %struct.client_lease* %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %190
  br label %230

219:                                              ; preds = %190
  %220 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %221 = icmp ne %struct.client_lease* %220, null
  br i1 %221, label %228, label %222

222:                                              ; preds = %219
  %223 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %224 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %223, i32 0, i32 0
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 3
  %227 = load %struct.client_lease*, %struct.client_lease** %226, align 8
  store %struct.client_lease* %227, %struct.client_lease** %4, align 8
  br label %228

228:                                              ; preds = %222, %219
  br label %229

229:                                              ; preds = %228
  br label %29

230:                                              ; preds = %218, %142, %29
  %231 = call i32 (i8*, ...) @note(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %232 = call i32 @script_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32* null)
  %233 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %234 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %233, i32 0, i32 0
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 2
  %237 = load %struct.client_lease*, %struct.client_lease** %236, align 8
  %238 = icmp ne %struct.client_lease* %237, null
  br i1 %238, label %239, label %246

239:                                              ; preds = %230
  %240 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %241 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %240, i32 0, i32 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 2
  %244 = load %struct.client_lease*, %struct.client_lease** %243, align 8
  %245 = call i32 @script_write_params(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct.client_lease* %244)
  br label %246

246:                                              ; preds = %239, %230
  %247 = call i32 (...) @script_go()
  %248 = load i8*, i8** @S_INIT, align 8
  %249 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %250 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %249, i32 0, i32 0
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  store i8* %248, i8** %252, align 8
  %253 = load i64, i64* @cur_time, align 8
  %254 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %255 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_3__*, %struct.TYPE_3__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %253, %260
  %262 = load %struct.interface_info*, %struct.interface_info** %3, align 8
  %263 = call i32 @add_timeout(i64 %261, i32 (%struct.interface_info*)* @state_init, %struct.interface_info* %262)
  %264 = call i32 (...) @go_daemon()
  br label %265

265:                                              ; preds = %246, %131
  ret void
}

declare dso_local i32 @note(i8*, ...) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i32 @script_init(i8*, i32*) #1

declare dso_local i32 @script_write_params(i8*, %struct.client_lease*) #1

declare dso_local i32 @script_go(...) #1

declare dso_local i32 @add_timeout(i64, i32 (%struct.interface_info*)*, %struct.interface_info*) #1

declare dso_local i32 @state_bound(%struct.interface_info*) #1

declare dso_local i32 @reinitialize_interfaces(...) #1

declare dso_local i32 @go_daemon(...) #1

declare dso_local i32 @state_init(%struct.interface_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
