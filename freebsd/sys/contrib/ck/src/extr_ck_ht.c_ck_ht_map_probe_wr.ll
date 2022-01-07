; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_probe_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_probe_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht_map = type { i64, i64, i32, i64 }
%struct.ck_ht_entry = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@CK_HT_TYPE_MAX = common dso_local global i64 0, align 8
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HT_BUCKET_LENGTH = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8
@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_KEY_MASK = common dso_local global i32 0, align 4
@CK_MD_VMA_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ck_ht_entry* (%struct.ck_ht_map*, i64, %struct.ck_ht_entry*, %struct.ck_ht_entry**, i8*, i32, i64*, i64*)* @ck_ht_map_probe_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ck_ht_entry* @ck_ht_map_probe_wr(%struct.ck_ht_map* %0, i64 %1, %struct.ck_ht_entry* %2, %struct.ck_ht_entry** %3, i8* %4, i32 %5, i64* %6, i64* %7) #0 {
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.ck_ht_map*, align 8
  %11 = alloca %struct.ck_ht_entry*, align 8
  %12 = alloca %struct.ck_ht_entry**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.ck_ht_entry*, align 8
  %18 = alloca %struct.ck_ht_entry*, align 8
  %19 = alloca %struct.ck_ht_entry*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i64 %1, i64* %27, align 8
  store %struct.ck_ht_map* %0, %struct.ck_ht_map** %10, align 8
  store %struct.ck_ht_entry* %2, %struct.ck_ht_entry** %11, align 8
  store %struct.ck_ht_entry** %3, %struct.ck_ht_entry*** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  store %struct.ck_ht_entry* null, %struct.ck_ht_entry** %19, align 8
  store i64 0, i64* %23, align 8
  %28 = load i64*, i64** %15, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %8
  %31 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @ck_ht_map_bound_get(%struct.ck_ht_map* %31, i64 %33)
  store i64 %34, i64* %24, align 8
  br label %37

35:                                               ; preds = %8
  %36 = load i64, i64* @CK_HT_TYPE_MAX, align 8
  store i64 %36, i64* %24, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %41 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = and i64 %39, %42
  store i64 %43, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %44

44:                                               ; preds = %154, %37
  %45 = load i64, i64* %21, align 8
  %46 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %47 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %157

50:                                               ; preds = %44
  %51 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %52 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %20, align 8
  %55 = add i64 %53, %54
  %56 = load i32, i32* @CK_MD_CACHELINE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = and i64 %55, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = bitcast i8* %61 to %struct.ck_ht_entry*
  store %struct.ck_ht_entry* %62, %struct.ck_ht_entry** %17, align 8
  store i64 0, i64* %22, align 8
  br label %63

63:                                               ; preds = %144, %50
  %64 = load i64, i64* %22, align 8
  %65 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %147

67:                                               ; preds = %63
  %68 = load i64, i64* %23, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %23, align 8
  %70 = load i64, i64* %24, align 8
  %71 = icmp sgt i64 %68, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %147

73:                                               ; preds = %67
  %74 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %17, align 8
  %75 = load i64, i64* %22, align 8
  %76 = load i64, i64* %20, align 8
  %77 = add i64 %75, %76
  %78 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %79 = sub i64 %78, 1
  %80 = and i64 %77, %79
  %81 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %74, i64 %80
  store %struct.ck_ht_entry* %81, %struct.ck_ht_entry** %18, align 8
  %82 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %83 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %73
  %88 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %19, align 8
  %89 = icmp eq %struct.ck_ht_entry* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  store %struct.ck_ht_entry* %91, %struct.ck_ht_entry** %19, align 8
  %92 = load i64, i64* %23, align 8
  %93 = load i64*, i64** %16, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %90, %87
  br label %144

95:                                               ; preds = %73
  %96 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %97 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %158

102:                                              ; preds = %95
  %103 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %104 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = ptrtoint i8* %106 to i64
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  br label %158

110:                                              ; preds = %102
  %111 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %112 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %110
  %118 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %119 = call i32 @ck_ht_entry_key_length(%struct.ck_ht_entry* %118)
  store i32 %119, i32* %25, align 4
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %144

124:                                              ; preds = %117
  %125 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %126 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  br label %144

133:                                              ; preds = %124
  %134 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %135 = call i8* @ck_ht_entry_key(%struct.ck_ht_entry* %134)
  store i8* %135, i8** %26, align 8
  %136 = load i8*, i8** %26, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %14, align 4
  %139 = call i64 @memcmp(i8* %136, i8* %137, i32 %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %158

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %110
  br label %144

144:                                              ; preds = %143, %132, %123, %94
  %145 = load i64, i64* %22, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %22, align 8
  br label %63

147:                                              ; preds = %72, %63
  %148 = load %struct.ck_ht_map*, %struct.ck_ht_map** %10, align 8
  %149 = load i64, i64* %20, align 8
  %150 = load i64, i64* %23, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @ck_ht_map_probe_next(%struct.ck_ht_map* %148, i64 %149, i64 %152, i64 %150)
  store i64 %153, i64* %20, align 8
  br label %154

154:                                              ; preds = %147
  %155 = load i64, i64* %21, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %21, align 8
  br label %44

157:                                              ; preds = %44
  store %struct.ck_ht_entry* null, %struct.ck_ht_entry** %18, align 8
  br label %158

158:                                              ; preds = %157, %141, %109, %101
  %159 = load i64*, i64** %15, align 8
  %160 = icmp ne i64* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i64, i64* %23, align 8
  %163 = load i64*, i64** %15, align 8
  store i64 %162, i64* %163, align 8
  br label %171

164:                                              ; preds = %158
  %165 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %19, align 8
  %166 = icmp eq %struct.ck_ht_entry* %165, null
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load i64, i64* %23, align 8
  %169 = load i64*, i64** %16, align 8
  store i64 %168, i64* %169, align 8
  br label %170

170:                                              ; preds = %167, %164
  br label %171

171:                                              ; preds = %170, %161
  %172 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %19, align 8
  %173 = load %struct.ck_ht_entry**, %struct.ck_ht_entry*** %12, align 8
  store %struct.ck_ht_entry* %172, %struct.ck_ht_entry** %173, align 8
  %174 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %175 = icmp ne %struct.ck_ht_entry* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %171
  %177 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %11, align 8
  %178 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  %179 = bitcast %struct.ck_ht_entry* %177 to i8*
  %180 = bitcast %struct.ck_ht_entry* %178 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %179, i8* align 8 %180, i64 16, i1 false)
  br label %181

181:                                              ; preds = %176, %171
  %182 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %18, align 8
  ret %struct.ck_ht_entry* %182
}

declare dso_local i64 @ck_ht_map_bound_get(%struct.ck_ht_map*, i64) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.ck_ht_entry*) #1

declare dso_local i8* @ck_ht_entry_key(%struct.ck_ht_entry*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @ck_ht_map_probe_next(%struct.ck_ht_map*, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
