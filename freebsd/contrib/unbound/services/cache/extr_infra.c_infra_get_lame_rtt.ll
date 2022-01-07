; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_get_lame_rtt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_get_lame_rtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.infra_data = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lruhash_entry = type { i32, i64 }

@PROBE_MAXRTO = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@TIMEOUT_COUNT_MAX = common dso_local global i64 0, align 8
@USEFUL_SERVER_TOP_TIMEOUT = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_get_lame_rtt(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4, i64 %5, i32* %6, i32* %7, i32* %8, i32* %9, i64 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.infra_cache*, align 8
  %14 = alloca %struct.sockaddr_storage*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.infra_data*, align 8
  %25 = alloca %struct.lruhash_entry*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %13, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i64 %5, i64* %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i64 %10, i64* %23, align 8
  %26 = load %struct.infra_cache*, %struct.infra_cache** %13, align 8
  %27 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32*, i32** %16, align 8
  %30 = load i64, i64* %17, align 8
  %31 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %26, %struct.sockaddr_storage* %27, i32 %28, i32* %29, i64 %30, i32 0)
  store %struct.lruhash_entry* %31, %struct.lruhash_entry** %25, align 8
  %32 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %33 = icmp ne %struct.lruhash_entry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %11
  store i32 0, i32* %12, align 4
  br label %211

35:                                               ; preds = %11
  %36 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %37 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.infra_data*
  store %struct.infra_data* %39, %struct.infra_data** %24, align 8
  %40 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %41 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %40, i32 0, i32 9
  %42 = call i32 @rtt_unclamped(%struct.TYPE_3__* %41)
  %43 = load i32*, i32** %22, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %45 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %44, i32 0, i32 9
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PROBE_MAXRTO, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %118

50:                                               ; preds = %35
  %51 = load i64, i64* %23, align 8
  %52 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %53 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %118

56:                                               ; preds = %50
  %57 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %58 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %57, i32 0, i32 9
  %59 = call i32 @rtt_notimeout(%struct.TYPE_3__* %58)
  %60 = mul nsw i32 %59, 4
  %61 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %62 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sle i32 %60, %64
  br i1 %65, label %66, label %118

66:                                               ; preds = %56
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %72 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TIMEOUT_COUNT_MAX, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %78 = load i32*, i32** %22, align 8
  store i32 %77, i32* %78, align 4
  br label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %81 = sub nsw i32 %80, 1000
  %82 = load i32*, i32** %22, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %76
  br label %117

84:                                               ; preds = %66
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %90 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @TIMEOUT_COUNT_MAX, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %96 = load i32*, i32** %22, align 8
  store i32 %95, i32* %96, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %99 = sub nsw i32 %98, 1000
  %100 = load i32*, i32** %22, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %97, %94
  br label %116

102:                                              ; preds = %84
  %103 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %104 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TIMEOUT_COUNT_MAX, align 8
  %107 = icmp sge i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %110 = load i32*, i32** %22, align 8
  store i32 %109, i32* %110, align 4
  br label %115

111:                                              ; preds = %102
  %112 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %113 = sub nsw i32 %112, 1000
  %114 = load i32*, i32** %22, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %111, %108
  br label %116

116:                                              ; preds = %115, %101
  br label %117

117:                                              ; preds = %116, %83
  br label %118

118:                                              ; preds = %117, %56, %50, %35
  %119 = load i64, i64* %23, align 8
  %120 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %121 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %118
  %125 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %126 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %125, i32 0, i32 9
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %133 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %132, i32 0, i32 0
  %134 = call i32 @lock_rw_unlock(i32* %133)
  %135 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %136 = sub nsw i32 %135, 1000
  %137 = load i32*, i32** %22, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32*, i32** %19, align 8
  store i32 0, i32* %138, align 4
  %139 = load i32*, i32** %20, align 8
  store i32 0, i32* %139, align 4
  %140 = load i32*, i32** %21, align 8
  store i32 0, i32* %140, align 4
  store i32 1, i32* %12, align 4
  br label %211

141:                                              ; preds = %124
  %142 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %143 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %142, i32 0, i32 0
  %144 = call i32 @lock_rw_unlock(i32* %143)
  store i32 0, i32* %12, align 4
  br label %211

145:                                              ; preds = %118
  %146 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %147 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %146, i32 0, i32 8
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %145
  %151 = load i64, i64* %18, align 8
  %152 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %156 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %155, i32 0, i32 0
  %157 = call i32 @lock_rw_unlock(i32* %156)
  %158 = load i32*, i32** %19, align 8
  store i32 1, i32* %158, align 4
  %159 = load i32*, i32** %20, align 8
  store i32 0, i32* %159, align 4
  %160 = load i32*, i32** %21, align 8
  store i32 0, i32* %160, align 4
  store i32 1, i32* %12, align 4
  br label %211

161:                                              ; preds = %150, %145
  %162 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %163 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load i64, i64* %18, align 8
  %168 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %172 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %171, i32 0, i32 0
  %173 = call i32 @lock_rw_unlock(i32* %172)
  %174 = load i32*, i32** %19, align 8
  store i32 1, i32* %174, align 4
  %175 = load i32*, i32** %20, align 8
  store i32 0, i32* %175, align 4
  %176 = load i32*, i32** %21, align 8
  store i32 0, i32* %176, align 4
  store i32 1, i32* %12, align 4
  br label %211

177:                                              ; preds = %166, %161
  %178 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %179 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %184 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %183, i32 0, i32 0
  %185 = call i32 @lock_rw_unlock(i32* %184)
  %186 = load i32*, i32** %19, align 8
  store i32 0, i32* %186, align 4
  %187 = load i32*, i32** %20, align 8
  store i32 1, i32* %187, align 4
  %188 = load i32*, i32** %21, align 8
  store i32 0, i32* %188, align 4
  store i32 1, i32* %12, align 4
  br label %211

189:                                              ; preds = %177
  %190 = load %struct.infra_data*, %struct.infra_data** %24, align 8
  %191 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %189
  %195 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %196 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %195, i32 0, i32 0
  %197 = call i32 @lock_rw_unlock(i32* %196)
  %198 = load i32*, i32** %19, align 8
  store i32 0, i32* %198, align 4
  %199 = load i32*, i32** %20, align 8
  store i32 0, i32* %199, align 4
  %200 = load i32*, i32** %21, align 8
  store i32 1, i32* %200, align 4
  store i32 1, i32* %12, align 4
  br label %211

201:                                              ; preds = %189
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  %205 = load %struct.lruhash_entry*, %struct.lruhash_entry** %25, align 8
  %206 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %205, i32 0, i32 0
  %207 = call i32 @lock_rw_unlock(i32* %206)
  %208 = load i32*, i32** %19, align 8
  store i32 0, i32* %208, align 4
  %209 = load i32*, i32** %20, align 8
  store i32 0, i32* %209, align 4
  %210 = load i32*, i32** %21, align 8
  store i32 0, i32* %210, align 4
  store i32 1, i32* %12, align 4
  br label %211

211:                                              ; preds = %204, %194, %182, %170, %154, %141, %131, %34
  %212 = load i32, i32* %12, align 4
  ret i32 %212
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @rtt_unclamped(%struct.TYPE_3__*) #1

declare dso_local i32 @rtt_notimeout(%struct.TYPE_3__*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
