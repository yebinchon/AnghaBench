; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_bind_lease.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_bind_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, %struct.option_data* }
%struct.option_data = type { i32, i32 }
%struct.TYPE_8__ = type { i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@DHO_INTERFACE_MTU = common dso_local global i64 0, align 8
@ACTION_SUPERSEDE = common dso_local global i64 0, align 8
@MIN_MTU = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"mtu size %u < %d: ignored\00", align 1
@S_RENEWING = common dso_local global i64 0, align 8
@privfd = common dso_local global i32 0, align 4
@S_REQUESTING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"BOUND\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"RENEW\00", align 1
@S_REBOOTING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"REBOOT\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"REBIND\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"old_\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"new_\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"alias_\00", align 1
@state_bound = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"bound to %s -- renewal in %d seconds.\00", align 1
@cur_time = common dso_local global i64 0, align 8
@S_BOUND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bind_lease(%struct.interface_info* %0) #0 {
  %2 = alloca %struct.interface_info*, align 8
  %3 = alloca %struct.option_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.interface_info* %0, %struct.interface_info** %2, align 8
  %7 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %8 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %13 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store i32 %11, i32* %17, align 4
  %18 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %19 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = load %struct.option_data*, %struct.option_data** %23, align 8
  %25 = load i64, i64* @DHO_INTERFACE_MTU, align 8
  %26 = getelementptr inbounds %struct.option_data, %struct.option_data* %24, i64 %25
  store %struct.option_data* %26, %struct.option_data** %3, align 8
  %27 = load %struct.option_data*, %struct.option_data** %3, align 8
  %28 = getelementptr inbounds %struct.option_data, %struct.option_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp eq i64 %30, 8
  br i1 %31, label %32, label %128

32:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %33 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %34 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @DHO_INTERFACE_MTU, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACTION_SUPERSEDE, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %32
  %49 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %50 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i64, i64* @DHO_INTERFACE_MTU, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @getUShort(i32 %59)
  store i64 %60, i64* %4, align 8
  br label %66

61:                                               ; preds = %32
  %62 = load %struct.option_data*, %struct.option_data** %3, align 8
  %63 = getelementptr inbounds %struct.option_data, %struct.option_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @be16dec(i32 %64)
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %61, %48
  %67 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %68 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = icmp ne %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %75 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  %80 = load %struct.option_data*, %struct.option_data** %79, align 8
  %81 = load i64, i64* @DHO_INTERFACE_MTU, align 8
  %82 = getelementptr inbounds %struct.option_data, %struct.option_data* %80, i64 %81
  store %struct.option_data* %82, %struct.option_data** %3, align 8
  %83 = load %struct.option_data*, %struct.option_data** %3, align 8
  %84 = getelementptr inbounds %struct.option_data, %struct.option_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 8
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.option_data*, %struct.option_data** %3, align 8
  %90 = getelementptr inbounds %struct.option_data, %struct.option_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @be16dec(i32 %91)
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %88, %73
  br label %94

94:                                               ; preds = %93, %66
  %95 = load i64, i64* %4, align 8
  %96 = load i64, i64* @MIN_MTU, align 8
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i64, i64* %4, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101, %98
  %105 = load i64, i64* %4, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i64, i64* @MIN_MTU, align 8
  %108 = call i32 @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %104, %101
  br label %127

110:                                              ; preds = %94
  %111 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %112 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @S_RENEWING, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %122, label %118

118:                                              ; preds = %110
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* %5, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118, %110
  %123 = load i32, i32* @privfd, align 4
  %124 = load i64, i64* %4, align 8
  %125 = call i32 @interface_set_mtu_unpriv(i32 %123, i64 %124)
  br label %126

126:                                              ; preds = %122, %118
  br label %127

127:                                              ; preds = %126, %109
  br label %128

128:                                              ; preds = %127, %1
  %129 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %130 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %131 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = call i32 @write_client_lease(%struct.interface_info* %129, %struct.TYPE_10__* %134, i32 0)
  %136 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %137 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %136, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @S_REQUESTING, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  br label %165

144:                                              ; preds = %128
  %145 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %146 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %145, i32 0, i32 0
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @S_RENEWING, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %144
  br label %163

153:                                              ; preds = %144
  %154 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %155 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @S_REBOOTING, align 8
  %160 = icmp eq i64 %158, %159
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  br label %163

163:                                              ; preds = %153, %152
  %164 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %152 ], [ %162, %153 ]
  br label %165

165:                                              ; preds = %163, %143
  %166 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %143 ], [ %164, %163 ]
  %167 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %168 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @script_init(i8* %166, i32 %173)
  %175 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %176 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %175, i32 0, i32 0
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = icmp ne %struct.TYPE_10__* %179, null
  br i1 %180, label %181, label %196

181:                                              ; preds = %165
  %182 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %183 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %182, i32 0, i32 0
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @S_REBOOTING, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %191 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %190, i32 0, i32 0
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = call i32 @script_write_params(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_10__* %194)
  br label %196

196:                                              ; preds = %189, %181, %165
  %197 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %198 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %197, i32 0, i32 0
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = call i32 @script_write_params(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_10__* %201)
  %203 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %204 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %203, i32 0, i32 0
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %206, align 8
  %208 = icmp ne %struct.TYPE_10__* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %196
  %210 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %211 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %210, i32 0, i32 0
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = call i32 @script_write_params(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_10__* %214)
  br label %216

216:                                              ; preds = %209, %196
  %217 = call i32 (...) @script_go()
  %218 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %219 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %218, i32 0, i32 0
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = icmp ne %struct.TYPE_10__* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %216
  %225 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %226 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %225, i32 0, i32 0
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %228, align 8
  %230 = call i32 @free_client_lease(%struct.TYPE_10__* %229)
  br label %231

231:                                              ; preds = %224, %216
  %232 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %233 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %232, i32 0, i32 0
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %238 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %237, i32 0, i32 0
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 1
  store %struct.TYPE_10__* %236, %struct.TYPE_10__** %240, align 8
  %241 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %242 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %241, i32 0, i32 0
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %244, align 8
  %245 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %246 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %245, i32 0, i32 0
  %247 = load %struct.TYPE_9__*, %struct.TYPE_9__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* @state_bound, align 4
  %253 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %254 = call i32 @add_timeout(i64 %251, i32 %252, %struct.interface_info* %253)
  %255 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %256 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %255, i32 0, i32 0
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @piaddr(i32 %261)
  %263 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %264 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %263, i32 0, i32 0
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @cur_time, align 8
  %271 = sub nsw i64 %269, %270
  %272 = trunc i64 %271 to i32
  %273 = call i32 @note(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %262, i32 %272)
  %274 = load i64, i64* @S_BOUND, align 8
  %275 = load %struct.interface_info*, %struct.interface_info** %2, align 8
  %276 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %275, i32 0, i32 0
  %277 = load %struct.TYPE_9__*, %struct.TYPE_9__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  store i64 %274, i64* %278, align 8
  %279 = call i32 (...) @reinitialize_interfaces()
  %280 = call i32 (...) @go_daemon()
  ret void
}

declare dso_local i64 @getUShort(i32) #1

declare dso_local i64 @be16dec(i32) #1

declare dso_local i32 @warning(i8*, i32, i64) #1

declare dso_local i32 @interface_set_mtu_unpriv(i32, i64) #1

declare dso_local i32 @write_client_lease(%struct.interface_info*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @script_init(i8*, i32) #1

declare dso_local i32 @script_write_params(i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @script_go(...) #1

declare dso_local i32 @free_client_lease(%struct.TYPE_10__*) #1

declare dso_local i32 @add_timeout(i64, i32, %struct.interface_info*) #1

declare dso_local i32 @note(i8*, i32, i32) #1

declare dso_local i32 @piaddr(i32) #1

declare dso_local i32 @reinitialize_interfaces(...) #1

declare dso_local i32 @go_daemon(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
