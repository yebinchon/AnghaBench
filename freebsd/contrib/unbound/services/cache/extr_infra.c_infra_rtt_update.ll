; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_rtt_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_rtt_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.lruhash_entry = type { i32, i64, i32 }
%struct.infra_data = type { i64, i64, i64, %struct.TYPE_5__, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@TIMEOUT_COUNT_MAX = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@USEFUL_SERVER_TOP_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_rtt_update(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i32* %3, i64 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.infra_cache*, align 8
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.lruhash_entry*, align 8
  %21 = alloca %struct.infra_data*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.infra_cache* %0, %struct.infra_cache** %11, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %24 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %25 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i64, i64* %15, align 8
  %29 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %24, %struct.sockaddr_storage* %25, i32 %26, i32* %27, i64 %28, i32 1)
  store %struct.lruhash_entry* %29, %struct.lruhash_entry** %20, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %30 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %31 = icmp ne %struct.lruhash_entry* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %9
  %33 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %34 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = load i32, i32* %19, align 4
  %39 = call %struct.lruhash_entry* @new_entry(%struct.infra_cache* %33, %struct.sockaddr_storage* %34, i32 %35, i32* %36, i64 %37, i32 %38)
  store %struct.lruhash_entry* %39, %struct.lruhash_entry** %20, align 8
  %40 = icmp ne %struct.lruhash_entry* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %182

42:                                               ; preds = %32
  store i32 1, i32* %22, align 4
  br label %58

43:                                               ; preds = %9
  %44 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %45 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.infra_data*
  %48 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %19, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %54 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @data_entry_init(%struct.infra_cache* %53, %struct.lruhash_entry* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %43
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %60 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.infra_data*
  store %struct.infra_data* %62, %struct.infra_data** %21, align 8
  %63 = load i32, i32* %17, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %115

65:                                               ; preds = %58
  %66 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %67 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %66, i32 0, i32 3
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @rtt_lost(%struct.TYPE_5__* %67, i32 %68)
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %75 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TIMEOUT_COUNT_MAX, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %81 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %79, %73
  br label %114

85:                                               ; preds = %65
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %91 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TIMEOUT_COUNT_MAX, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %97 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %95, %89
  br label %113

101:                                              ; preds = %85
  %102 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %103 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @TIMEOUT_COUNT_MAX, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %109 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %107, %101
  br label %113

113:                                              ; preds = %112, %100
  br label %114

114:                                              ; preds = %113, %84
  br label %150

115:                                              ; preds = %58
  %116 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %117 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %116, i32 0, i32 3
  %118 = call i64 @rtt_unclamped(%struct.TYPE_5__* %117)
  %119 = load i64, i64* @USEFUL_SERVER_TOP_TIMEOUT, align 8
  %120 = icmp sge i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %123 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %122, i32 0, i32 3
  %124 = call i32 @rtt_init(%struct.TYPE_5__* %123)
  br label %125

125:                                              ; preds = %121, %115
  %126 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %127 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %126, i32 0, i32 3
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @rtt_update(%struct.TYPE_5__* %127, i32 %128)
  %130 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %131 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %125
  %136 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %137 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  br label %149

138:                                              ; preds = %125
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %144 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %143, i32 0, i32 1
  store i64 0, i64* %144, align 8
  br label %148

145:                                              ; preds = %138
  %146 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %147 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  br label %149

149:                                              ; preds = %148, %135
  br label %150

150:                                              ; preds = %149, %114
  %151 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %152 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %158 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %23, align 4
  br label %161

161:                                              ; preds = %156, %150
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %166 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %169 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %172 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %173 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @slabhash_insert(i32 %167, i32 %170, %struct.lruhash_entry* %171, i64 %174, i32* null)
  br label %180

176:                                              ; preds = %161
  %177 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %178 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %177, i32 0, i32 0
  %179 = call i32 @lock_rw_unlock(i32* %178)
  br label %180

180:                                              ; preds = %176, %164
  %181 = load i32, i32* %23, align 4
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %180, %41
  %183 = load i32, i32* %10, align 4
  ret i32 %183
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local %struct.lruhash_entry* @new_entry(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i32*, i64, i32) #1

declare dso_local i32 @data_entry_init(%struct.infra_cache*, %struct.lruhash_entry*, i32) #1

declare dso_local i32 @rtt_lost(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @rtt_unclamped(%struct.TYPE_5__*) #1

declare dso_local i32 @rtt_init(%struct.TYPE_5__*) #1

declare dso_local i32 @rtt_update(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.lruhash_entry*, i64, i32*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
