; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_synth_cname_rrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_scrub.c_synth_cname_rrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.msg_parse = type { i32, i32, %struct.rrset_parse*, %struct.rrset_parse* }
%struct.rrset_parse = type { i64, i32, i32, i32, i32*, %struct.rrset_parse*, %struct.rrset_parse*, i32, i32, i32*, i32, i32, %struct.rrset_parse* }
%struct.rr_parse = type { i64, i32, i32, i32, i32*, %struct.rr_parse*, %struct.rr_parse*, i32, i32, i32*, i32, i32, %struct.rr_parse* }

@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rrset_parse* (i32**, i64*, i32*, i64, %struct.regional*, %struct.msg_parse*, %struct.rrset_parse*, %struct.rrset_parse*, %struct.rrset_parse*, i32*)* @synth_cname_rrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rrset_parse* @synth_cname_rrset(i32** %0, i64* %1, i32* %2, i64 %3, %struct.regional* %4, %struct.msg_parse* %5, %struct.rrset_parse* %6, %struct.rrset_parse* %7, %struct.rrset_parse* %8, i32* %9) #0 {
  %11 = alloca %struct.rrset_parse*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.regional*, align 8
  %17 = alloca %struct.msg_parse*, align 8
  %18 = alloca %struct.rrset_parse*, align 8
  %19 = alloca %struct.rrset_parse*, align 8
  %20 = alloca %struct.rrset_parse*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.rrset_parse*, align 8
  store i32** %0, i32*** %12, align 8
  store i64* %1, i64** %13, align 8
  store i32* %2, i32** %14, align 8
  store i64 %3, i64* %15, align 8
  store %struct.regional* %4, %struct.regional** %16, align 8
  store %struct.msg_parse* %5, %struct.msg_parse** %17, align 8
  store %struct.rrset_parse* %6, %struct.rrset_parse** %18, align 8
  store %struct.rrset_parse* %7, %struct.rrset_parse** %19, align 8
  store %struct.rrset_parse* %8, %struct.rrset_parse** %20, align 8
  store i32* %9, i32** %21, align 8
  %23 = load %struct.regional*, %struct.regional** %16, align 8
  %24 = call i64 @regional_alloc(%struct.regional* %23, i32 80)
  %25 = inttoptr i64 %24 to %struct.rrset_parse*
  store %struct.rrset_parse* %25, %struct.rrset_parse** %22, align 8
  %26 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %27 = icmp ne %struct.rrset_parse* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %10
  store %struct.rrset_parse* null, %struct.rrset_parse** %11, align 8
  br label %203

29:                                               ; preds = %10
  %30 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %31 = call i32 @memset(%struct.rrset_parse* %30, i32 0, i32 80)
  %32 = load %struct.regional*, %struct.regional** %16, align 8
  %33 = call i64 @regional_alloc(%struct.regional* %32, i32 80)
  %34 = inttoptr i64 %33 to %struct.rr_parse*
  %35 = bitcast %struct.rr_parse* %34 to %struct.rrset_parse*
  %36 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %37 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %36, i32 0, i32 5
  store %struct.rrset_parse* %35, %struct.rrset_parse** %37, align 8
  %38 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %39 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %38, i32 0, i32 5
  %40 = load %struct.rrset_parse*, %struct.rrset_parse** %39, align 8
  %41 = icmp ne %struct.rrset_parse* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %29
  store %struct.rrset_parse* null, %struct.rrset_parse** %11, align 8
  br label %203

43:                                               ; preds = %29
  %44 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %45 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %44, i32 0, i32 5
  %46 = load %struct.rrset_parse*, %struct.rrset_parse** %45, align 8
  %47 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %48 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %47, i32 0, i32 12
  store %struct.rrset_parse* %46, %struct.rrset_parse** %48, align 8
  %49 = load %struct.regional*, %struct.regional** %16, align 8
  %50 = load i64*, i64** %13, align 8
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64 @regional_alloc(%struct.regional* %49, i32 %52)
  %54 = inttoptr i64 %53 to i32*
  %55 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %56 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %55, i32 0, i32 9
  store i32* %54, i32** %56, align 8
  %57 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %58 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %57, i32 0, i32 9
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %43
  store %struct.rrset_parse* null, %struct.rrset_parse** %11, align 8
  br label %203

62:                                               ; preds = %43
  %63 = load i32*, i32** %21, align 8
  %64 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %65 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %64, i32 0, i32 9
  %66 = load i32*, i32** %65, align 8
  %67 = load i32**, i32*** %12, align 8
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @dname_pkt_copy(i32* %63, i32* %66, i32* %68)
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %73 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %75 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %76 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 4
  %77 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %78 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %77, i32 0, i32 11
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %81 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %80, i32 0, i32 11
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rrset_parse*, %struct.rrset_parse** %18, align 8
  %83 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %86 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %88 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %93 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %21, align 8
  %95 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %96 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %95, i32 0, i32 9
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %99 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %102 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pkt_hash_rrset(i32* %94, i32* %97, i32 %100, i32 %103, i32 0)
  %105 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %106 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 8
  %107 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %108 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %107, i32 0, i32 5
  %109 = load %struct.rrset_parse*, %struct.rrset_parse** %108, align 8
  %110 = call i32 @memset(%struct.rrset_parse* %109, i32 0, i32 80)
  %111 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %112 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %111, i32 0, i32 5
  %113 = load %struct.rrset_parse*, %struct.rrset_parse** %112, align 8
  %114 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %113, i32 0, i32 3
  store i32 1, i32* %114, align 8
  %115 = load %struct.regional*, %struct.regional** %16, align 8
  %116 = load i64, i64* %15, align 8
  %117 = add i64 8, %116
  %118 = trunc i64 %117 to i32
  %119 = call i64 @regional_alloc(%struct.regional* %115, i32 %118)
  %120 = inttoptr i64 %119 to i32*
  %121 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %122 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %121, i32 0, i32 5
  %123 = load %struct.rrset_parse*, %struct.rrset_parse** %122, align 8
  %124 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %123, i32 0, i32 4
  store i32* %120, i32** %124, align 8
  %125 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %126 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %125, i32 0, i32 5
  %127 = load %struct.rrset_parse*, %struct.rrset_parse** %126, align 8
  %128 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %62
  store %struct.rrset_parse* null, %struct.rrset_parse** %11, align 8
  br label %203

132:                                              ; preds = %62
  %133 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %134 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %133, i32 0, i32 5
  %135 = load %struct.rrset_parse*, %struct.rrset_parse** %134, align 8
  %136 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = call i32 @sldns_write_uint32(i32* %137, i32 0)
  %139 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %140 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %139, i32 0, i32 5
  %141 = load %struct.rrset_parse*, %struct.rrset_parse** %140, align 8
  %142 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i64, i64* %15, align 8
  %146 = call i32 @sldns_write_uint16(i32* %144, i64 %145)
  %147 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %148 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %147, i32 0, i32 5
  %149 = load %struct.rrset_parse*, %struct.rrset_parse** %148, align 8
  %150 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = load i32*, i32** %14, align 8
  %154 = load i64, i64* %15, align 8
  %155 = call i32 @memmove(i32* %152, i32* %153, i64 %154)
  %156 = load i64, i64* %15, align 8
  %157 = add i64 4, %156
  %158 = trunc i64 %157 to i32
  %159 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %160 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %159, i32 0, i32 5
  %161 = load %struct.rrset_parse*, %struct.rrset_parse** %160, align 8
  %162 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %161, i32 0, i32 2
  store i32 %158, i32* %162, align 4
  %163 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %164 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %165 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %164, i32 0, i32 6
  store %struct.rrset_parse* %163, %struct.rrset_parse** %165, align 8
  %166 = load %struct.rrset_parse*, %struct.rrset_parse** %19, align 8
  %167 = icmp ne %struct.rrset_parse* %166, null
  br i1 %167, label %168, label %172

168:                                              ; preds = %132
  %169 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %170 = load %struct.rrset_parse*, %struct.rrset_parse** %19, align 8
  %171 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %170, i32 0, i32 6
  store %struct.rrset_parse* %169, %struct.rrset_parse** %171, align 8
  br label %176

172:                                              ; preds = %132
  %173 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %174 = load %struct.msg_parse*, %struct.msg_parse** %17, align 8
  %175 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %174, i32 0, i32 3
  store %struct.rrset_parse* %173, %struct.rrset_parse** %175, align 8
  br label %176

176:                                              ; preds = %172, %168
  %177 = load %struct.rrset_parse*, %struct.rrset_parse** %20, align 8
  %178 = icmp eq %struct.rrset_parse* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %181 = load %struct.msg_parse*, %struct.msg_parse** %17, align 8
  %182 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %181, i32 0, i32 2
  store %struct.rrset_parse* %180, %struct.rrset_parse** %182, align 8
  br label %183

183:                                              ; preds = %179, %176
  %184 = load %struct.msg_parse*, %struct.msg_parse** %17, align 8
  %185 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.msg_parse*, %struct.msg_parse** %17, align 8
  %189 = getelementptr inbounds %struct.msg_parse, %struct.msg_parse* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  %192 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  %193 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %192, i32 0, i32 5
  %194 = load %struct.rrset_parse*, %struct.rrset_parse** %193, align 8
  %195 = getelementptr inbounds %struct.rrset_parse, %struct.rrset_parse* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 4
  %198 = getelementptr inbounds i32, i32* %197, i64 4
  %199 = load i32**, i32*** %12, align 8
  store i32* %198, i32** %199, align 8
  %200 = load i64, i64* %15, align 8
  %201 = load i64*, i64** %13, align 8
  store i64 %200, i64* %201, align 8
  %202 = load %struct.rrset_parse*, %struct.rrset_parse** %22, align 8
  store %struct.rrset_parse* %202, %struct.rrset_parse** %11, align 8
  br label %203

203:                                              ; preds = %183, %131, %61, %42, %28
  %204 = load %struct.rrset_parse*, %struct.rrset_parse** %11, align 8
  ret %struct.rrset_parse* %204
}

declare dso_local i64 @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @memset(%struct.rrset_parse*, i32, i32) #1

declare dso_local i32 @dname_pkt_copy(i32*, i32*, i32*) #1

declare dso_local i32 @pkt_hash_rrset(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @sldns_write_uint32(i32*, i32) #1

declare dso_local i32 @sldns_write_uint16(i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
