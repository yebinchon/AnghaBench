; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_input.c_input_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_input.c_input_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_spare = type { i64, i64, i64, i64, i64, i64 }
%struct.netinfo = type { i64 }
%struct.rt_entry = type { i32, %struct.rt_spare* }
%struct.interface = type { i32 }

@IS_BROKE = common dso_local global i32 0, align 4
@IS_PASSIVE = common dso_local global i32 0, align 4
@HOPCNT_INFINITY = common dso_local global i64 0, align 8
@total_routes = common dso_local global i64 0, align 8
@MAX_ROUTES = common dso_local global i64 0, align 8
@NUM_SPARES = common dso_local global i32 0, align 4
@now_stale = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.rt_spare*, %struct.netinfo*)* @input_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @input_route(i64 %0, i64 %1, %struct.rt_spare* %2, %struct.netinfo* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rt_spare*, align 8
  %8 = alloca %struct.netinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rt_entry*, align 8
  %11 = alloca %struct.rt_spare*, align 8
  %12 = alloca %struct.rt_spare*, align 8
  %13 = alloca %struct.interface*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.rt_spare* %2, %struct.rt_spare** %7, align 8
  store %struct.netinfo* %3, %struct.netinfo** %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.interface* @ifwithaddr(i64 %14, i32 1, i32 1)
  store %struct.interface* %15, %struct.interface** %13, align 8
  %16 = load %struct.interface*, %struct.interface** %13, align 8
  %17 = icmp ne %struct.interface* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %4
  %19 = load %struct.interface*, %struct.interface** %13, align 8
  %20 = getelementptr inbounds %struct.interface, %struct.interface* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IS_BROKE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.interface*, %struct.interface** %13, align 8
  %27 = getelementptr inbounds %struct.interface, %struct.interface* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IS_PASSIVE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %18
  br label %243

33:                                               ; preds = %25, %4
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.rt_entry* @rtget(i64 %34, i64 %35)
  store %struct.rt_entry* %36, %struct.rt_entry** %10, align 8
  %37 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %38 = icmp eq %struct.rt_entry* %37, null
  br i1 %38, label %39, label %68

39:                                               ; preds = %33
  %40 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %41 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @HOPCNT_INFINITY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %243

46:                                               ; preds = %39
  %47 = load %struct.netinfo*, %struct.netinfo** %8, align 8
  %48 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.netinfo*, %struct.netinfo** %8, align 8
  %53 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.interface* @ifwithaddr(i64 %54, i32 1, i32 0)
  %56 = icmp ne %struct.interface* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %243

58:                                               ; preds = %51, %46
  %59 = load i64, i64* @total_routes, align 8
  %60 = load i64, i64* @MAX_ROUTES, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %66 = call i32 @rtadd(i64 %63, i64 %64, i32 0, %struct.rt_spare* %65)
  br label %67

67:                                               ; preds = %62, %58
  br label %243

68:                                               ; preds = %33
  %69 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %70 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %69, i32 0, i32 1
  %71 = load %struct.rt_spare*, %struct.rt_spare** %70, align 8
  store %struct.rt_spare* %71, %struct.rt_spare** %12, align 8
  %72 = load %struct.rt_spare*, %struct.rt_spare** %12, align 8
  store %struct.rt_spare* %72, %struct.rt_spare** %11, align 8
  %73 = load i32, i32* @NUM_SPARES, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %101, %68
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %79 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %82 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %106

86:                                               ; preds = %77
  %87 = load %struct.rt_spare*, %struct.rt_spare** %12, align 8
  %88 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %89 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %88, i32 0, i32 1
  %90 = load %struct.rt_spare*, %struct.rt_spare** %89, align 8
  %91 = icmp eq %struct.rt_spare* %87, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %94 = load %struct.rt_spare*, %struct.rt_spare** %12, align 8
  %95 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %96 = call i64 @BETTER_LINK(%struct.rt_entry* %93, %struct.rt_spare* %94, %struct.rt_spare* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %92, %86
  %99 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  store %struct.rt_spare* %99, %struct.rt_spare** %12, align 8
  br label %100

100:                                              ; preds = %98, %92
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  %104 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %105 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %104, i32 1
  store %struct.rt_spare* %105, %struct.rt_spare** %11, align 8
  br label %74

106:                                              ; preds = %85, %74
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %208

109:                                              ; preds = %106
  %110 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %111 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %114 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %112, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load i64, i64* @now_stale, align 8
  %119 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %120 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %118, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %243

124:                                              ; preds = %117, %109
  %125 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %126 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @HOPCNT_INFINITY, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %132 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @HOPCNT_INFINITY, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %138 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %141 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %130, %124
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @NUM_SPARES, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %148 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %149 = getelementptr inbounds %struct.rt_entry, %struct.rt_entry* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %152 = call i32 @rtchange(%struct.rt_entry* %147, i32 %150, %struct.rt_spare* %151, i32 0)
  %153 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %154 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %157 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp sgt i64 %155, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %146
  %161 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %162 = call i32 @rtswitch(%struct.rt_entry* %161, %struct.rt_spare* null)
  br label %163

163:                                              ; preds = %160, %146
  br label %243

164:                                              ; preds = %142
  %165 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %166 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %169 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %167, %170
  br i1 %171, label %172, label %197

172:                                              ; preds = %164
  %173 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %174 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %177 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %172
  %181 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %182 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %185 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %183, %186
  br i1 %187, label %188, label %197

188:                                              ; preds = %180
  %189 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %190 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %191 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %192 = call i32 @trace_upslot(%struct.rt_entry* %189, %struct.rt_spare* %190, %struct.rt_spare* %191)
  %193 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %194 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %195 = bitcast %struct.rt_spare* %193 to i8*
  %196 = bitcast %struct.rt_spare* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 48, i1 false)
  br label %243

197:                                              ; preds = %180, %172, %164
  %198 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %199 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @HOPCNT_INFINITY, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %197
  %204 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %205 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %206 = call i32 @rts_delete(%struct.rt_entry* %204, %struct.rt_spare* %205)
  br label %243

207:                                              ; preds = %197
  br label %231

208:                                              ; preds = %106
  %209 = load %struct.netinfo*, %struct.netinfo** %8, align 8
  %210 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load %struct.netinfo*, %struct.netinfo** %8, align 8
  %215 = getelementptr inbounds %struct.netinfo, %struct.netinfo* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call %struct.interface* @ifwithaddr(i64 %216, i32 1, i32 0)
  %218 = icmp ne %struct.interface* null, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %213
  br label %243

220:                                              ; preds = %213, %208
  %221 = load %struct.rt_spare*, %struct.rt_spare** %12, align 8
  store %struct.rt_spare* %221, %struct.rt_spare** %11, align 8
  %222 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %223 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %226 = getelementptr inbounds %struct.rt_spare, %struct.rt_spare* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = icmp sge i64 %224, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %220
  br label %243

230:                                              ; preds = %220
  br label %231

231:                                              ; preds = %230, %207
  %232 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %233 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %234 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %235 = call i32 @trace_upslot(%struct.rt_entry* %232, %struct.rt_spare* %233, %struct.rt_spare* %234)
  %236 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %237 = load %struct.rt_spare*, %struct.rt_spare** %7, align 8
  %238 = bitcast %struct.rt_spare* %236 to i8*
  %239 = bitcast %struct.rt_spare* %237 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %238, i8* align 8 %239, i64 48, i1 false)
  %240 = load %struct.rt_entry*, %struct.rt_entry** %10, align 8
  %241 = load %struct.rt_spare*, %struct.rt_spare** %11, align 8
  %242 = call i32 @rtswitch(%struct.rt_entry* %240, %struct.rt_spare* %241)
  br label %243

243:                                              ; preds = %231, %229, %219, %203, %188, %163, %123, %67, %57, %45, %32
  ret void
}

declare dso_local %struct.interface* @ifwithaddr(i64, i32, i32) #1

declare dso_local %struct.rt_entry* @rtget(i64, i64) #1

declare dso_local i32 @rtadd(i64, i64, i32, %struct.rt_spare*) #1

declare dso_local i64 @BETTER_LINK(%struct.rt_entry*, %struct.rt_spare*, %struct.rt_spare*) #1

declare dso_local i32 @rtchange(%struct.rt_entry*, i32, %struct.rt_spare*, i32) #1

declare dso_local i32 @rtswitch(%struct.rt_entry*, %struct.rt_spare*) #1

declare dso_local i32 @trace_upslot(%struct.rt_entry*, %struct.rt_spare*, %struct.rt_spare*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rts_delete(%struct.rt_entry*, %struct.rt_spare*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
