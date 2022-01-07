; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_host.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_infra_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.infra_cache = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.lruhash_entry = type { i32, i64, i32 }
%struct.infra_data = type { i64, i32, i64, %struct.TYPE_3__, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@USEFUL_SERVER_TOP_TIMEOUT = common dso_local global i32 0, align 4
@PROBE_MAXRTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @infra_host(%struct.infra_cache* %0, %struct.sockaddr_storage* %1, i32 %2, i8** %3, i64 %4, i64 %5, i32* %6, i8** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.infra_cache*, align 8
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.lruhash_entry*, align 8
  %21 = alloca %struct.infra_data*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store %struct.infra_cache* %0, %struct.infra_cache** %11, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8** %3, i8*** %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i32* %6, i32** %17, align 8
  store i8** %7, i8*** %18, align 8
  store i32* %8, i32** %19, align 8
  %27 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %28 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i8**, i8*** %14, align 8
  %31 = load i64, i64* %15, align 8
  %32 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %27, %struct.sockaddr_storage* %28, i32 %29, i8** %30, i64 %31, i32 0)
  store %struct.lruhash_entry* %32, %struct.lruhash_entry** %20, align 8
  store i32 0, i32* %22, align 4
  %33 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %34 = icmp ne %struct.lruhash_entry* %33, null
  br i1 %34, label %35, label %117

35:                                               ; preds = %9
  %36 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %37 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.infra_data*
  %40 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %16, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %117

44:                                               ; preds = %35
  %45 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %46 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.infra_data*
  %49 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %23, align 4
  %52 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %53 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.infra_data*
  %56 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %55, i32 0, i32 7
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %24, align 8
  %58 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %59 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.infra_data*
  %62 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %61, i32 0, i32 6
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %25, align 8
  %64 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %65 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.infra_data*
  %68 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %26, align 8
  %70 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %71 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %70, i32 0, i32 0
  %72 = call i32 @lock_rw_unlock(i32* %71)
  %73 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %74 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8**, i8*** %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %73, %struct.sockaddr_storage* %74, i32 %75, i8** %76, i64 %77, i32 1)
  store %struct.lruhash_entry* %78, %struct.lruhash_entry** %20, align 8
  %79 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %80 = icmp ne %struct.lruhash_entry* %79, null
  br i1 %80, label %81, label %116

81:                                               ; preds = %44
  %82 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %83 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @data_entry_init(%struct.infra_cache* %82, %struct.lruhash_entry* %83, i64 %84)
  store i32 1, i32* %22, align 4
  %86 = load i32, i32* %23, align 4
  %87 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %115

89:                                               ; preds = %81
  %90 = load i32, i32* @USEFUL_SERVER_TOP_TIMEOUT, align 4
  %91 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %92 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.infra_data*
  %95 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  store i32 %90, i32* %96, align 8
  %97 = load i8*, i8** %24, align 8
  %98 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %99 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.infra_data*
  %102 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %101, i32 0, i32 7
  store i8* %97, i8** %102, align 8
  %103 = load i8*, i8** %25, align 8
  %104 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %105 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.infra_data*
  %108 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %107, i32 0, i32 6
  store i8* %103, i8** %108, align 8
  %109 = load i8*, i8** %26, align 8
  %110 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %111 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to %struct.infra_data*
  %114 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %113, i32 0, i32 5
  store i8* %109, i8** %114, align 8
  br label %115

115:                                              ; preds = %89, %81
  br label %116

116:                                              ; preds = %115, %44
  br label %117

117:                                              ; preds = %116, %35, %9
  %118 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %119 = icmp ne %struct.lruhash_entry* %118, null
  br i1 %119, label %156, label %120

120:                                              ; preds = %117
  %121 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %122 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i8**, i8*** %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %16, align 8
  %127 = call %struct.lruhash_entry* @new_entry(%struct.infra_cache* %121, %struct.sockaddr_storage* %122, i32 %123, i8** %124, i64 %125, i64 %126)
  store %struct.lruhash_entry* %127, %struct.lruhash_entry** %20, align 8
  %128 = icmp ne %struct.lruhash_entry* %127, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %120
  store i32 0, i32* %10, align 4
  br label %220

130:                                              ; preds = %120
  %131 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %132 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.infra_data*
  store %struct.infra_data* %134, %struct.infra_data** %21, align 8
  %135 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %136 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %17, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %140 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %139, i32 0, i32 4
  %141 = load i8*, i8** %140, align 8
  %142 = load i8**, i8*** %18, align 8
  store i8* %141, i8** %142, align 8
  %143 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %144 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %143, i32 0, i32 3
  %145 = call i32 @rtt_timeout(%struct.TYPE_3__* %144)
  %146 = load i32*, i32** %19, align 8
  store i32 %145, i32* %146, align 4
  %147 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %148 = getelementptr inbounds %struct.infra_cache, %struct.infra_cache* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %151 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %154 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %155 = call i32 @slabhash_insert(i32 %149, i32 %152, %struct.lruhash_entry* %153, %struct.infra_data* %154, i32* null)
  store i32 1, i32* %10, align 4
  br label %220

156:                                              ; preds = %117
  %157 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %158 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to %struct.infra_data*
  store %struct.infra_data* %160, %struct.infra_data** %21, align 8
  %161 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %162 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32*, i32** %17, align 8
  store i32 %163, i32* %164, align 4
  %165 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %166 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %165, i32 0, i32 4
  %167 = load i8*, i8** %166, align 8
  %168 = load i8**, i8*** %18, align 8
  store i8* %167, i8** %168, align 8
  %169 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %170 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %169, i32 0, i32 3
  %171 = call i32 @rtt_timeout(%struct.TYPE_3__* %170)
  %172 = load i32*, i32** %19, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32*, i32** %19, align 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @PROBE_MAXRTO, align 4
  %176 = icmp sge i32 %174, %175
  br i1 %176, label %177, label %216

177:                                              ; preds = %156
  %178 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %179 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %178, i32 0, i32 3
  %180 = call i32 @rtt_notimeout(%struct.TYPE_3__* %179)
  %181 = mul nsw i32 %180, 4
  %182 = load i32*, i32** %19, align 8
  %183 = load i32, i32* %182, align 4
  %184 = icmp sle i32 %181, %183
  br i1 %184, label %185, label %216

185:                                              ; preds = %177
  %186 = load i32, i32* %22, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %206, label %188

188:                                              ; preds = %185
  %189 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %190 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %189, i32 0, i32 0
  %191 = call i32 @lock_rw_unlock(i32* %190)
  %192 = load %struct.infra_cache*, %struct.infra_cache** %11, align 8
  %193 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %194 = load i32, i32* %13, align 4
  %195 = load i8**, i8*** %14, align 8
  %196 = load i64, i64* %15, align 8
  %197 = call %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache* %192, %struct.sockaddr_storage* %193, i32 %194, i8** %195, i64 %196, i32 1)
  store %struct.lruhash_entry* %197, %struct.lruhash_entry** %20, align 8
  %198 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %199 = icmp ne %struct.lruhash_entry* %198, null
  br i1 %199, label %201, label %200

200:                                              ; preds = %188
  store i32 1, i32* %10, align 4
  br label %220

201:                                              ; preds = %188
  %202 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %203 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to %struct.infra_data*
  store %struct.infra_data* %205, %struct.infra_data** %21, align 8
  br label %206

206:                                              ; preds = %201, %185
  %207 = load i64, i64* %16, align 8
  %208 = load i32*, i32** %19, align 8
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1999
  %211 = sdiv i32 %210, 1000
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %207, %212
  %214 = load %struct.infra_data*, %struct.infra_data** %21, align 8
  %215 = getelementptr inbounds %struct.infra_data, %struct.infra_data* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %206, %177, %156
  %217 = load %struct.lruhash_entry*, %struct.lruhash_entry** %20, align 8
  %218 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %217, i32 0, i32 0
  %219 = call i32 @lock_rw_unlock(i32* %218)
  store i32 1, i32* %10, align 4
  br label %220

220:                                              ; preds = %216, %200, %130, %129
  %221 = load i32, i32* %10, align 4
  ret i32 %221
}

declare dso_local %struct.lruhash_entry* @infra_lookup_nottl(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i8**, i64, i32) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @data_entry_init(%struct.infra_cache*, %struct.lruhash_entry*, i64) #1

declare dso_local %struct.lruhash_entry* @new_entry(%struct.infra_cache*, %struct.sockaddr_storage*, i32, i8**, i64, i64) #1

declare dso_local i32 @rtt_timeout(%struct.TYPE_3__*) #1

declare dso_local i32 @slabhash_insert(i32, i32, %struct.lruhash_entry*, %struct.infra_data*, i32*) #1

declare dso_local i32 @rtt_notimeout(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
