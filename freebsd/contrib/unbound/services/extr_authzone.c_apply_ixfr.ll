; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_apply_ixfr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_apply_ixfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i64 }
%struct.auth_zone = type { i32 }
%struct.sldns_buffer = type { i32 }
%struct.auth_chunk = type { i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"apply ixfr\00", align 1
@LDNS_RR_TYPE_SOA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"IXFR error nonexistent RR\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"IXFR error duplicate RR\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"IXFR did not apply cleanly, fetching full zone\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.auth_zone*, %struct.sldns_buffer*)* @apply_ixfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_ixfr(%struct.auth_xfer* %0, %struct.auth_zone* %1, %struct.sldns_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.sldns_buffer*, align 8
  %8 = alloca %struct.auth_chunk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.auth_zone* %1, %struct.auth_zone** %6, align 8
  store %struct.sldns_buffer* %2, %struct.sldns_buffer** %7, align 8
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %27 = call i32 @chunk_rrlist_start(%struct.auth_xfer* %26, %struct.auth_chunk** %8, i32* %9, i64* %10)
  br label %28

28:                                               ; preds = %210, %3
  %29 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @chunk_rrlist_end(%struct.auth_chunk* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %215

34:                                               ; preds = %28
  %35 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @chunk_rrlist_get_current(%struct.auth_chunk* %35, i32 %36, i64 %37, i32** %11, i64* %13, i64* %14, i64* %16, i64* %15, i32** %12, i64* %17)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %222

41:                                               ; preds = %34
  %42 = load i32, i32* @verbosity, align 4
  %43 = icmp sge i32 %42, 7
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %20, align 8
  %49 = call i32 @log_rrlist_position(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.auth_chunk* %45, i32* %46, i64 %47, i64 %48)
  br label %50

50:                                               ; preds = %44, %41
  %51 = load i64, i64* %20, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %222

58:                                               ; preds = %53, %50
  %59 = load i64, i64* %20, align 8
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %4, align 4
  br label %222

66:                                               ; preds = %61, %58
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* @LDNS_RR_TYPE_SOA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %126

70:                                               ; preds = %66
  %71 = load i64, i64* %15, align 8
  %72 = icmp slt i64 %71, 22
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %222

74:                                               ; preds = %70
  %75 = load i32*, i32** %12, align 8
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = getelementptr inbounds i32, i32* %77, i64 -20
  %79 = call i64 @sldns_read_uint32(i32* %78)
  store i64 %79, i64* %23, align 8
  %80 = load i32, i32* %18, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %74
  store i32 1, i32* %18, align 4
  %83 = load i64, i64* %23, align 8
  store i64 %83, i64* %19, align 8
  store i32 1, i32* %21, align 4
  %84 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i64, i64* %10, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %96 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @ixfr_start_serial(%struct.auth_chunk* %84, i32 %85, i64 %86, i32* %87, i64 %88, i64 %89, i64 %90, i64 %91, i32* %92, i64 %93, i64 %94, i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %82
  store i32 0, i32* %4, align 4
  br label %222

101:                                              ; preds = %82
  br label %121

102:                                              ; preds = %74
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %23, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %18, align 4
  %109 = load i64, i64* %20, align 8
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %222

112:                                              ; preds = %106
  %113 = load i32, i32* %18, align 4
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i64, i64* %19, align 8
  %117 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %118 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  br label %215

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119, %102
  br label %121

121:                                              ; preds = %120, %101
  %122 = load i32, i32* %21, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %21, align 4
  br label %126

126:                                              ; preds = %121, %66
  %127 = load i32, i32* @verbosity, align 4
  %128 = icmp sge i32 %127, 7
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %134 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %20, align 8
  %138 = call i32 @log_rrlist_position(i8* %133, %struct.auth_chunk* %134, i32* %135, i64 %136, i64 %137)
  br label %139

139:                                              ; preds = %129, %126
  %140 = load i32, i32* %21, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %174

142:                                              ; preds = %139
  store i32 0, i32* %24, align 4
  %143 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %144 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %145 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %148 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %151 = load i32*, i32** %11, align 8
  %152 = load i64, i64* %13, align 8
  %153 = load i64, i64* %14, align 8
  %154 = load i64, i64* %16, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = load i64, i64* %15, align 8
  %157 = call i32 @az_remove_rr_decompress(%struct.auth_zone* %143, i32 %146, i32 %149, %struct.sldns_buffer* %150, i32* %151, i64 %152, i64 %153, i64 %154, i32* %155, i64 %156, i32* %24)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %142
  store i32 0, i32* %4, align 4
  br label %222

160:                                              ; preds = %142
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load i32, i32* @verbosity, align 4
  %165 = icmp sge i32 %164, 4
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %168 = load i32*, i32** %11, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %20, align 8
  %171 = call i32 @log_rrlist_position(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.auth_chunk* %167, i32* %168, i64 %169, i64 %170)
  br label %172

172:                                              ; preds = %166, %163
  store i32 1, i32* %22, align 4
  br label %173

173:                                              ; preds = %172, %160
  br label %210

174:                                              ; preds = %139
  %175 = load i64, i64* %20, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %209

177:                                              ; preds = %174
  store i32 0, i32* %25, align 4
  %178 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %179 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %180 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %183 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = load i64, i64* %13, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* %16, align 8
  %190 = load i32*, i32** %12, align 8
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @az_insert_rr_decompress(%struct.auth_zone* %178, i32 %181, i32 %184, %struct.sldns_buffer* %185, i32* %186, i64 %187, i64 %188, i64 %189, i32* %190, i64 %191, i32* %25)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %222

195:                                              ; preds = %177
  %196 = load i32, i32* %25, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %195
  %199 = load i32, i32* @verbosity, align 4
  %200 = icmp sge i32 %199, 4
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load %struct.auth_chunk*, %struct.auth_chunk** %8, align 8
  %203 = load i32*, i32** %11, align 8
  %204 = load i64, i64* %13, align 8
  %205 = load i64, i64* %20, align 8
  %206 = call i32 @log_rrlist_position(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.auth_chunk* %202, i32* %203, i64 %204, i64 %205)
  br label %207

207:                                              ; preds = %201, %198
  store i32 1, i32* %22, align 4
  br label %208

208:                                              ; preds = %207, %195
  br label %209

209:                                              ; preds = %208, %174
  br label %210

210:                                              ; preds = %209, %173
  %211 = load i64, i64* %20, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %20, align 8
  %213 = load i64, i64* %17, align 8
  %214 = call i32 @chunk_rrlist_gonext(%struct.auth_chunk** %8, i32* %9, i64* %10, i64 %213)
  br label %28

215:                                              ; preds = %115, %28
  %216 = load i32, i32* %22, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* @VERB_ALGO, align 4
  %220 = call i32 @verbose(i32 %219, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %222

221:                                              ; preds = %215
  store i32 1, i32* %4, align 4
  br label %222

222:                                              ; preds = %221, %218, %194, %159, %111, %100, %73, %65, %57, %40
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i32 @chunk_rrlist_start(%struct.auth_xfer*, %struct.auth_chunk**, i32*, i64*) #1

declare dso_local i32 @chunk_rrlist_end(%struct.auth_chunk*, i32) #1

declare dso_local i32 @chunk_rrlist_get_current(%struct.auth_chunk*, i32, i64, i32**, i64*, i64*, i64*, i64*, i32**, i64*) #1

declare dso_local i32 @log_rrlist_position(i8*, %struct.auth_chunk*, i32*, i64, i64) #1

declare dso_local i64 @sldns_read_uint32(i32*) #1

declare dso_local i32 @ixfr_start_serial(%struct.auth_chunk*, i32, i64, i32*, i64, i64, i64, i64, i32*, i64, i64, i64) #1

declare dso_local i32 @az_remove_rr_decompress(%struct.auth_zone*, i32, i32, %struct.sldns_buffer*, i32*, i64, i64, i64, i32*, i64, i32*) #1

declare dso_local i32 @az_insert_rr_decompress(%struct.auth_zone*, i32, i32, %struct.sldns_buffer*, i32*, i64, i64, i64, i32*, i64, i32*) #1

declare dso_local i32 @chunk_rrlist_gonext(%struct.auth_chunk**, i32*, i64*, i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
