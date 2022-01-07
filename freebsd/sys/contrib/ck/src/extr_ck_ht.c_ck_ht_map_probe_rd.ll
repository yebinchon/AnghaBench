; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_probe_rd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_ht.c_ck_ht_map_probe_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_ht_entry = type { i32, i32, i32, i32 }
%struct.ck_ht_map = type { i64, i64, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i32, i8* }
%struct.TYPE_9__ = type { i64 }

@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HT_BUCKET_LENGTH = common dso_local global i64 0, align 8
@CK_HT_KEY_TOMBSTONE = common dso_local global i64 0, align 8
@CK_HT_KEY_EMPTY = common dso_local global i64 0, align 8
@CK_HT_MODE_BYTESTRING = common dso_local global i32 0, align 4
@CK_HT_KEY_MASK = common dso_local global i32 0, align 4
@CK_MD_VMA_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ck_ht_entry* (%struct.ck_ht_map*, i64, %struct.TYPE_10__*, i8*, i32)* @ck_ht_map_probe_rd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ck_ht_entry* @ck_ht_map_probe_rd(%struct.ck_ht_map* %0, i64 %1, %struct.TYPE_10__* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ck_ht_entry*, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.ck_ht_map*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ck_ht_entry*, align 8
  %13 = alloca %struct.ck_ht_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  store i64 %1, i64* %23, align 8
  store %struct.ck_ht_map* %0, %struct.ck_ht_map** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  br label %24

24:                                               ; preds = %151, %5
  %25 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @ck_ht_map_bound_get(%struct.ck_ht_map* %25, i64 %27)
  store i64 %28, i64* %18, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %32 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %30, %33
  store i64 %34, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %35

35:                                               ; preds = %173, %24
  %36 = load i64, i64* %15, align 8
  %37 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %38 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %176

41:                                               ; preds = %35
  %42 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %43 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %14, align 8
  %46 = add i64 %44, %45
  %47 = load i32, i32* @CK_MD_CACHELINE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = and i64 %46, %50
  %52 = inttoptr i64 %51 to i8*
  %53 = bitcast i8* %52 to %struct.ck_ht_entry*
  store %struct.ck_ht_entry* %53, %struct.ck_ht_entry** %12, align 8
  store i64 0, i64* %16, align 8
  br label %54

54:                                               ; preds = %163, %41
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %166

58:                                               ; preds = %54
  %59 = load i64, i64* %17, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %17, align 8
  %61 = load i64, i64* %18, align 8
  %62 = icmp sgt i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store %struct.ck_ht_entry* null, %struct.ck_ht_entry** %6, align 8
  br label %179

64:                                               ; preds = %58
  %65 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %12, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %66, %67
  %69 = load i64, i64* @CK_HT_BUCKET_LENGTH, align 8
  %70 = sub i64 %69, 1
  %71 = and i64 %68, %70
  %72 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %65, i64 %71
  store %struct.ck_ht_entry* %72, %struct.ck_ht_entry** %13, align 8
  %73 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %74 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %73, i32 0, i32 3
  %75 = call i8* @CK_HT_TYPE_LOAD(i32* %74)
  %76 = ptrtoint i8* %75 to i64
  store i64 %76, i64* %19, align 8
  %77 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %78 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %77, i32 0, i32 3
  %79 = call i64 @ck_pr_load_ptr(i32* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = call i32 (...) @ck_pr_fence_load()
  %83 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %84 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %83, i32 0, i32 2
  %85 = call i8* @CK_HT_TYPE_LOAD(i32* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %89 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %88, i32 0, i32 1
  %90 = call i8* @CK_HT_TYPE_LOAD(i32* %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  %95 = getelementptr inbounds %struct.ck_ht_entry, %struct.ck_ht_entry* %94, i32 0, i32 0
  %96 = call i64 @ck_pr_load_ptr(i32* %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @CK_HT_KEY_TOMBSTONE, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %64
  br label %163

105:                                              ; preds = %64
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @CK_HT_KEY_EMPTY, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %177

112:                                              ; preds = %105
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = icmp eq i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %177

120:                                              ; preds = %112
  %121 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %122 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @CK_HT_MODE_BYTESTRING, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %162

127:                                              ; preds = %120
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %129 = call i32 @ck_ht_entry_key_length(%struct.TYPE_10__* %128)
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  br label %163

134:                                              ; preds = %127
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %163

143:                                              ; preds = %134
  %144 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %145 = getelementptr inbounds %struct.ck_ht_map, %struct.ck_ht_map* %144, i32 0, i32 3
  %146 = call i8* @CK_HT_TYPE_LOAD(i32* %145)
  %147 = ptrtoint i8* %146 to i64
  store i64 %147, i64* %20, align 8
  %148 = load i64, i64* %19, align 8
  %149 = load i64, i64* %20, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %24

152:                                              ; preds = %143
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %154 = call i8* @ck_ht_entry_key(%struct.TYPE_10__* %153)
  store i8* %154, i8** %22, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = load i8*, i8** %10, align 8
  %157 = load i32, i32* %11, align 4
  %158 = call i64 @memcmp(i8* %155, i8* %156, i32 %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %177

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %120
  br label %163

163:                                              ; preds = %162, %142, %133, %104
  %164 = load i64, i64* %16, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %16, align 8
  br label %54

166:                                              ; preds = %54
  %167 = load %struct.ck_ht_map*, %struct.ck_ht_map** %8, align 8
  %168 = load i64, i64* %14, align 8
  %169 = load i64, i64* %17, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @ck_ht_map_probe_next(%struct.ck_ht_map* %167, i64 %168, i64 %171, i64 %169)
  store i64 %172, i64* %14, align 8
  br label %173

173:                                              ; preds = %166
  %174 = load i64, i64* %15, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %15, align 8
  br label %35

176:                                              ; preds = %35
  store %struct.ck_ht_entry* null, %struct.ck_ht_entry** %6, align 8
  br label %179

177:                                              ; preds = %160, %119, %111
  %178 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %13, align 8
  store %struct.ck_ht_entry* %178, %struct.ck_ht_entry** %6, align 8
  br label %179

179:                                              ; preds = %177, %176, %63
  %180 = load %struct.ck_ht_entry*, %struct.ck_ht_entry** %6, align 8
  ret %struct.ck_ht_entry* %180
}

declare dso_local i64 @ck_ht_map_bound_get(%struct.ck_ht_map*, i64) #1

declare dso_local i8* @CK_HT_TYPE_LOAD(i32*) #1

declare dso_local i64 @ck_pr_load_ptr(i32*) #1

declare dso_local i32 @ck_pr_fence_load(...) #1

declare dso_local i32 @ck_ht_entry_key_length(%struct.TYPE_10__*) #1

declare dso_local i8* @ck_ht_entry_key(%struct.TYPE_10__*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @ck_ht_map_probe_next(%struct.ck_ht_map*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
