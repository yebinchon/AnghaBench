; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_priv_script_write_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_priv_script_write_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.client_lease = type { i8*, i8*, i64, %struct.TYPE_8__*, %struct.iaddr }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.iaddr = type { i8*, i64 }

@ifi = common dso_local global %struct.interface_info* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"ip_address\00", align 1
@DHO_SUBNET_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"network_number\00", align 1
@DHO_BROADCAST_ADDRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"broadcast_address\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"server_name\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"no space to %s %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"prepend option\00", align 1
@dhcp_options = common dso_local global %struct.TYPE_11__* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"append option\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"expiry\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_script_write_params(i8* %0, %struct.client_lease* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.client_lease*, align 8
  %5 = alloca %struct.interface_info*, align 8
  %6 = alloca [1500 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct.iaddr, align 8
  %12 = alloca %struct.iaddr, align 8
  %13 = alloca %struct.iaddr, align 8
  %14 = alloca %struct.iaddr, align 8
  %15 = alloca %struct.iaddr, align 8
  %16 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store %struct.client_lease* %1, %struct.client_lease** %4, align 8
  %17 = load %struct.interface_info*, %struct.interface_info** @ifi, align 8
  store %struct.interface_info* %17, %struct.interface_info** %5, align 8
  store i8* null, i8** %7, align 8
  %18 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %19 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %23 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %22, i32 0, i32 4
  %24 = bitcast %struct.iaddr* %23 to { i8*, i64 }*
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %24, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @piaddr(i8* %26, i64 %28)
  %30 = call i32 @script_set_env(%struct.TYPE_10__* %20, i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %32 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %65

42:                                               ; preds = %2
  %43 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %44 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %7, align 8
  %54 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %55 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %80

65:                                               ; preds = %2
  %66 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %67 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %7, align 8
  %73 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %74 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load i64, i64* @DHO_SUBNET_MASK, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %65, %42
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %174

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = icmp ult i64 %84, 8
  br i1 %85, label %86, label %174

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %11, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @memcpy(i8* %88, i8* %89, i64 %90)
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %11, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %95 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %94, i32 0, i32 4
  %96 = bitcast %struct.iaddr* %95 to { i8*, i64 }*
  %97 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %96, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = bitcast %struct.iaddr* %11 to { i8*, i64 }*
  %102 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %101, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call { i8*, i64 } @subnet_number(i8* %98, i64 %100, i8* %103, i64 %105)
  %107 = bitcast %struct.iaddr* %14 to { i8*, i64 }*
  %108 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %107, i32 0, i32 0
  %109 = extractvalue { i8*, i64 } %106, 0
  store i8* %109, i8** %108, align 8
  %110 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %107, i32 0, i32 1
  %111 = extractvalue { i8*, i64 } %106, 1
  store i64 %111, i64* %110, align 8
  %112 = bitcast %struct.iaddr* %12 to i8*
  %113 = bitcast %struct.iaddr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 16, i1 false)
  %114 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %12, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %173

117:                                              ; preds = %86
  %118 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %119 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %118, i32 0, i32 0
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = load i8*, i8** %3, align 8
  %122 = bitcast %struct.iaddr* %12 to { i8*, i64 }*
  %123 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %122, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @piaddr(i8* %124, i64 %126)
  %128 = call i32 @script_set_env(%struct.TYPE_10__* %120, i8* %121, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  %129 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %130 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %129, i32 0, i32 3
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = load i64, i64* @DHO_BROADCAST_ADDRESS, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %172, label %137

137:                                              ; preds = %117
  %138 = bitcast %struct.iaddr* %12 to { i8*, i64 }*
  %139 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %138, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = bitcast %struct.iaddr* %11 to { i8*, i64 }*
  %144 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %143, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call { i8*, i64 } @broadcast_addr(i8* %140, i64 %142, i8* %145, i64 %147)
  %149 = bitcast %struct.iaddr* %15 to { i8*, i64 }*
  %150 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %149, i32 0, i32 0
  %151 = extractvalue { i8*, i64 } %148, 0
  store i8* %151, i8** %150, align 8
  %152 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %149, i32 0, i32 1
  %153 = extractvalue { i8*, i64 } %148, 1
  store i64 %153, i64* %152, align 8
  %154 = bitcast %struct.iaddr* %13 to i8*
  %155 = bitcast %struct.iaddr* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  %156 = getelementptr inbounds %struct.iaddr, %struct.iaddr* %13, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %137
  %160 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %161 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i8*, i8** %3, align 8
  %164 = bitcast %struct.iaddr* %13 to { i8*, i64 }*
  %165 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %164, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @piaddr(i8* %166, i64 %168)
  %170 = call i32 @script_set_env(%struct.TYPE_10__* %162, i8* %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %159, %137
  br label %172

172:                                              ; preds = %171, %117
  br label %173

173:                                              ; preds = %172, %86
  br label %174

174:                                              ; preds = %173, %83, %80
  %175 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %176 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %181 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %180, i32 0, i32 0
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = load i8*, i8** %3, align 8
  %184 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %185 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @script_set_env(%struct.TYPE_10__* %182, i8* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %186)
  br label %188

188:                                              ; preds = %179, %174
  %189 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %190 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %202

193:                                              ; preds = %188
  %194 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %195 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %194, i32 0, i32 0
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load i8*, i8** %3, align 8
  %198 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %199 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @script_set_env(%struct.TYPE_10__* %196, i8* %197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %193, %188
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %568, %202
  %204 = load i32, i32* %8, align 4
  %205 = icmp slt i32 %204, 256
  br i1 %205, label %206, label %571

206:                                              ; preds = %203
  store i64 0, i64* %9, align 8
  %207 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %208 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %207, i32 0, i32 0
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %515

220:                                              ; preds = %206
  %221 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %222 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %221, i32 0, i32 3
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %489

230:                                              ; preds = %220
  %231 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %232 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %231, i32 0, i32 0
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  switch i32 %241, label %488 [
    i32 130, label %242
    i32 128, label %259
    i32 129, label %285
    i32 131, label %379
  ]

242:                                              ; preds = %230
  %243 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %244 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %243, i32 0, i32 3
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  store i8* %250, i8** %7, align 8
  %251 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %252 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %251, i32 0, i32 3
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %9, align 8
  br label %488

259:                                              ; preds = %230
  br label %260

260:                                              ; preds = %403, %309, %259
  %261 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %262 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %261, i32 0, i32 0
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  store i8* %272, i8** %7, align 8
  %273 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %274 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %273, i32 0, i32 0
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  store i64 %284, i64* %9, align 8
  br label %488

285:                                              ; preds = %230
  %286 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %287 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %286, i32 0, i32 0
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %299 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %298, i32 0, i32 3
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %299, align 8
  %301 = load i32, i32* %8, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %297, %305
  store i64 %306, i64* %9, align 8
  %307 = load i64, i64* %9, align 8
  %308 = icmp uge i64 %307, 1500
  br i1 %308, label %309, label %317

309:                                              ; preds = %285
  %310 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dhcp_options, align 8
  %311 = load i32, i32* %8, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %315)
  br label %260

317:                                              ; preds = %285
  %318 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  store i8* %318, i8** %7, align 8
  %319 = load i8*, i8** %7, align 8
  %320 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %321 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %320, i32 0, i32 0
  %322 = load %struct.TYPE_10__*, %struct.TYPE_10__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_7__*, %struct.TYPE_7__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %324, i32 0, i32 1
  %326 = load %struct.TYPE_9__*, %struct.TYPE_9__** %325, align 8
  %327 = load i32, i32* %8, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %329, i32 0, i32 0
  %331 = load i8*, i8** %330, align 8
  %332 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %333 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %332, i32 0, i32 0
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 0
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 1
  %338 = load %struct.TYPE_9__*, %struct.TYPE_9__** %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = call i32 @memcpy(i8* %319, i8* %331, i64 %343)
  %345 = load i8*, i8** %7, align 8
  %346 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %347 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %346, i32 0, i32 0
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_7__*, %struct.TYPE_7__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 1
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %351, align 8
  %353 = load i32, i32* %8, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = getelementptr inbounds i8, i8* %345, i64 %357
  %359 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %360 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %359, i32 0, i32 3
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %360, align 8
  %362 = load i32, i32* %8, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 %363
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = load i8*, i8** %365, align 8
  %367 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %368 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %367, i32 0, i32 3
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %368, align 8
  %370 = load i32, i32* %8, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i64 %371
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = call i32 @memcpy(i8* %358, i8* %366, i64 %374)
  %376 = load i8*, i8** %7, align 8
  %377 = load i64, i64* %9, align 8
  %378 = getelementptr inbounds i8, i8* %376, i64 %377
  store i8 0, i8* %378, align 1
  br label %488

379:                                              ; preds = %230
  %380 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %381 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %380, i32 0, i32 0
  %382 = load %struct.TYPE_10__*, %struct.TYPE_10__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %382, i32 0, i32 0
  %384 = load %struct.TYPE_7__*, %struct.TYPE_7__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %393 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %392, i32 0, i32 3
  %394 = load %struct.TYPE_8__*, %struct.TYPE_8__** %393, align 8
  %395 = load i32, i32* %8, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = add i64 %391, %399
  store i64 %400, i64* %9, align 8
  %401 = load i64, i64* %9, align 8
  %402 = icmp uge i64 %401, 1500
  br i1 %402, label %403, label %411

403:                                              ; preds = %379
  %404 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dhcp_options, align 8
  %405 = load i32, i32* %8, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %404, i64 %406
  %408 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @warning(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %409)
  br label %260

411:                                              ; preds = %379
  %412 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %413 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %414 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %413, i32 0, i32 3
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = load i32, i32* %8, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %415, i64 %417
  %419 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %418, i32 0, i32 0
  %420 = load i8*, i8** %419, align 8
  %421 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %422 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %421, i32 0, i32 3
  %423 = load %struct.TYPE_8__*, %struct.TYPE_8__** %422, align 8
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i64 %425
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 1
  %428 = load i64, i64* %427, align 8
  %429 = call i32 @memcpy(i8* %412, i8* %420, i64 %428)
  %430 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %431 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %432 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %431, i32 0, i32 3
  %433 = load %struct.TYPE_8__*, %struct.TYPE_8__** %432, align 8
  %434 = load i32, i32* %8, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds i8, i8* %430, i64 %438
  store i8* %439, i8** %7, align 8
  br label %440

440:                                              ; preds = %452, %411
  %441 = load i8*, i8** %7, align 8
  %442 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  %443 = icmp ugt i8* %441, %442
  br i1 %443, label %444, label %457

444:                                              ; preds = %440
  %445 = load i8*, i8** %7, align 8
  %446 = getelementptr inbounds i8, i8* %445, i64 -1
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i32
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %444
  br label %457

451:                                              ; preds = %444
  br label %452

452:                                              ; preds = %451
  %453 = load i8*, i8** %7, align 8
  %454 = getelementptr inbounds i8, i8* %453, i32 -1
  store i8* %454, i8** %7, align 8
  %455 = load i64, i64* %9, align 8
  %456 = add i64 %455, -1
  store i64 %456, i64* %9, align 8
  br label %440

457:                                              ; preds = %450, %440
  %458 = load i8*, i8** %7, align 8
  %459 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %460 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %459, i32 0, i32 0
  %461 = load %struct.TYPE_10__*, %struct.TYPE_10__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %461, i32 0, i32 0
  %463 = load %struct.TYPE_7__*, %struct.TYPE_7__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %464, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %468, i32 0, i32 0
  %470 = load i8*, i8** %469, align 8
  %471 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %472 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %471, i32 0, i32 0
  %473 = load %struct.TYPE_10__*, %struct.TYPE_10__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_7__*, %struct.TYPE_7__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %475, i32 0, i32 1
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %476, align 8
  %478 = load i32, i32* %8, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i64 %479
  %481 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = call i32 @memcpy(i8* %458, i8* %470, i64 %482)
  %484 = getelementptr inbounds [1500 x i8], [1500 x i8]* %6, i64 0, i64 0
  store i8* %484, i8** %7, align 8
  %485 = load i8*, i8** %7, align 8
  %486 = load i64, i64* %9, align 8
  %487 = getelementptr inbounds i8, i8* %485, i64 %486
  store i8 0, i8* %487, align 1
  br label %488

488:                                              ; preds = %457, %230, %317, %260, %242
  br label %514

489:                                              ; preds = %220
  %490 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %491 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %490, i32 0, i32 0
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %491, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_7__*, %struct.TYPE_7__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 1
  %496 = load %struct.TYPE_9__*, %struct.TYPE_9__** %495, align 8
  %497 = load i32, i32* %8, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i64 %498
  %500 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %499, i32 0, i32 0
  %501 = load i8*, i8** %500, align 8
  store i8* %501, i8** %7, align 8
  %502 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %503 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %502, i32 0, i32 0
  %504 = load %struct.TYPE_10__*, %struct.TYPE_10__** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %504, i32 0, i32 0
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 1
  %508 = load %struct.TYPE_9__*, %struct.TYPE_9__** %507, align 8
  %509 = load i32, i32* %8, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %508, i64 %510
  %512 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %511, i32 0, i32 1
  %513 = load i64, i64* %512, align 8
  store i64 %513, i64* %9, align 8
  br label %514

514:                                              ; preds = %489, %488
  br label %544

515:                                              ; preds = %206
  %516 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %517 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %516, i32 0, i32 3
  %518 = load %struct.TYPE_8__*, %struct.TYPE_8__** %517, align 8
  %519 = load i32, i32* %8, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i64 %520
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 1
  %523 = load i64, i64* %522, align 8
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %542

525:                                              ; preds = %515
  %526 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %527 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %526, i32 0, i32 3
  %528 = load %struct.TYPE_8__*, %struct.TYPE_8__** %527, align 8
  %529 = load i32, i32* %8, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %531, i32 0, i32 1
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %9, align 8
  %534 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %535 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %534, i32 0, i32 3
  %536 = load %struct.TYPE_8__*, %struct.TYPE_8__** %535, align 8
  %537 = load i32, i32* %8, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %536, i64 %538
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %539, i32 0, i32 0
  %541 = load i8*, i8** %540, align 8
  store i8* %541, i8** %7, align 8
  br label %543

542:                                              ; preds = %515
  store i64 0, i64* %9, align 8
  br label %543

543:                                              ; preds = %542, %525
  br label %544

544:                                              ; preds = %543, %514
  %545 = load i64, i64* %9, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %567

547:                                              ; preds = %544
  %548 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %549 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dhcp_options, align 8
  %550 = load i32, i32* %8, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %549, i64 %551
  %553 = call i64 @dhcp_option_ev_name(i8* %548, i32 256, %struct.TYPE_11__* %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %566

555:                                              ; preds = %547
  %556 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %557 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %556, i32 0, i32 0
  %558 = load %struct.TYPE_10__*, %struct.TYPE_10__** %557, align 8
  %559 = load i8*, i8** %3, align 8
  %560 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %561 = load i32, i32* %8, align 4
  %562 = load i8*, i8** %7, align 8
  %563 = load i64, i64* %9, align 8
  %564 = call i8* @pretty_print_option(i32 %561, i8* %562, i64 %563, i32 0, i32 0)
  %565 = call i32 @script_set_env(%struct.TYPE_10__* %558, i8* %559, i8* %560, i8* %564)
  br label %566

566:                                              ; preds = %555, %547
  br label %567

567:                                              ; preds = %566, %544
  br label %568

568:                                              ; preds = %567
  %569 = load i32, i32* %8, align 4
  %570 = add nsw i32 %569, 1
  store i32 %570, i32* %8, align 4
  br label %203

571:                                              ; preds = %203
  %572 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %573 = load %struct.client_lease*, %struct.client_lease** %4, align 8
  %574 = getelementptr inbounds %struct.client_lease, %struct.client_lease* %573, i32 0, i32 2
  %575 = load i64, i64* %574, align 8
  %576 = trunc i64 %575 to i32
  %577 = call i32 @snprintf(i8* %572, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %576)
  %578 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %579 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %578, i32 0, i32 0
  %580 = load %struct.TYPE_10__*, %struct.TYPE_10__** %579, align 8
  %581 = load i8*, i8** %3, align 8
  %582 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %583 = call i32 @script_set_env(%struct.TYPE_10__* %580, i8* %581, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %582)
  ret void
}

declare dso_local i32 @script_set_env(%struct.TYPE_10__*, i8*, i8*, i8*) #1

declare dso_local i8* @piaddr(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local { i8*, i64 } @subnet_number(i8*, i64, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local { i8*, i64 } @broadcast_addr(i8*, i64, i8*, i64) #1

declare dso_local i32 @warning(i8*, i8*, i32) #1

declare dso_local i64 @dhcp_option_ev_name(i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i8* @pretty_print_option(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
