; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_apply_http.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_apply_http.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { i32, %struct.TYPE_4__*, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.auth_chunk* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.auth_chunk = type { i32, i32 }
%struct.auth_zone = type { i32 }
%struct.sldns_buffer = type { i32 }
%struct.sldns_file_parse_state = type { i32, i32, i8*, i32 }

@verbosity = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"http download %s of size %d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"auth zone http downloaded content preview: %s\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"http download %s/%s does not contain a zonefile, but got '%s'\00", align 1
@auth_data_del = common dso_local global i32 0, align 4
@auth_data_cmp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"error parsing line [%s:%d] %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, %struct.auth_zone*, %struct.sldns_buffer*)* @apply_http to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_http(%struct.auth_xfer* %0, %struct.auth_zone* %1, %struct.sldns_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_xfer*, align 8
  %6 = alloca %struct.auth_zone*, align 8
  %7 = alloca %struct.sldns_buffer*, align 8
  %8 = alloca %struct.sldns_file_parse_state, align 8
  %9 = alloca %struct.auth_chunk*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1024 x i8], align 16
  store %struct.auth_xfer* %0, %struct.auth_xfer** %5, align 8
  store %struct.auth_zone* %1, %struct.auth_zone** %6, align 8
  store %struct.sldns_buffer* %2, %struct.sldns_buffer** %7, align 8
  %12 = call i32 @memset(%struct.sldns_file_parse_state* %8, i32 0, i32 24)
  %13 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 0
  store i32 3600, i32* %13, align 8
  %14 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %15 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %21 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %27 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %30 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @memmove(i8* %25, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %19, %3
  %34 = load i64, i64* @verbosity, align 8
  %35 = load i64, i64* @VERB_ALGO, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i64, i64* @VERB_ALGO, align 8
  %39 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %40 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %47 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.auth_chunk*, %struct.auth_chunk** %49, align 8
  %51 = call i64 @chunklist_sum(%struct.auth_chunk* %50)
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i64, i8*, i32, i32, ...) @verbose(i64 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %37, %33
  %55 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %56 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load %struct.auth_chunk*, %struct.auth_chunk** %58, align 8
  %60 = icmp ne %struct.auth_chunk* %59, null
  br i1 %60, label %61, label %116

61:                                               ; preds = %54
  %62 = load i64, i64* @verbosity, align 8
  %63 = load i64, i64* @VERB_ALGO, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %116

65:                                               ; preds = %61
  %66 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %67 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load %struct.auth_chunk*, %struct.auth_chunk** %69, align 8
  %71 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = icmp ugt i64 %74, 1024
  br i1 %75, label %76, label %87

76:                                               ; preds = %65
  %77 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %78 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %79 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load %struct.auth_chunk*, %struct.auth_chunk** %81, align 8
  %83 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @memmove(i8* %77, i32 %84, i32 1023)
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 1023
  store i8 0, i8* %86, align 1
  br label %113

87:                                               ; preds = %65
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %89 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %90 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.auth_chunk*, %struct.auth_chunk** %92, align 8
  %94 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %97 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.auth_chunk*, %struct.auth_chunk** %99, align 8
  %101 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @memmove(i8* %88, i32 %95, i32 %102)
  %104 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %105 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.auth_chunk*, %struct.auth_chunk** %107, align 8
  %109 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %111
  store i8 0, i8* %112, align 1
  br label %113

113:                                              ; preds = %87, %76
  %114 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %115 = call i32 @log_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %113, %61, %54
  %117 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %118 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %119 = call i32 @http_zonefile_syntax_check(%struct.auth_xfer* %117, %struct.sldns_buffer* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %139, label %121

121:                                              ; preds = %116
  %122 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %123 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %130 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %137 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %136)
  %138 = call i32 @log_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %128, i32 %135, i32 %137)
  store i32 0, i32* %4, align 4
  br label %203

139:                                              ; preds = %116
  %140 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %141 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %140, i32 0, i32 0
  %142 = load i32, i32* @auth_data_del, align 4
  %143 = call i32 @traverse_postorder(i32* %141, i32 %142, i32* null)
  %144 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %145 = getelementptr inbounds %struct.auth_zone, %struct.auth_zone* %144, i32 0, i32 0
  %146 = call i32 @rbtree_init(i32* %145, i32* @auth_data_cmp)
  %147 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %148 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %147, i32 0, i32 3
  store i64 0, i64* %148, align 8
  %149 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %150 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %152 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.auth_chunk*, %struct.auth_chunk** %154, align 8
  store %struct.auth_chunk* %155, %struct.auth_chunk** %9, align 8
  store i64 0, i64* %10, align 8
  %156 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 3
  store i32 0, i32* %156, align 8
  br label %157

157:                                              ; preds = %201, %180, %175, %170, %139
  %158 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %159 = call i64 @chunkline_get_line_collated(%struct.auth_chunk** %9, i64* %10, %struct.sldns_buffer* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %202

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %166 = call i32 @chunkline_newline_removal(%struct.sldns_buffer* %165)
  %167 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %168 = call i64 @chunkline_is_comment_line_or_empty(%struct.sldns_buffer* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %157

171:                                              ; preds = %161
  %172 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %173 = call i64 @http_parse_origin(%struct.sldns_buffer* %172, %struct.sldns_file_parse_state* %8)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %157

176:                                              ; preds = %171
  %177 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %178 = call i64 @http_parse_ttl(%struct.sldns_buffer* %177, %struct.sldns_file_parse_state* %8)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %157

181:                                              ; preds = %176
  %182 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %183 = load %struct.auth_zone*, %struct.auth_zone** %6, align 8
  %184 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %185 = call i32 @http_parse_add_rr(%struct.auth_xfer* %182, %struct.auth_zone* %183, %struct.sldns_buffer* %184, %struct.sldns_file_parse_state* %8)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %201, label %187

187:                                              ; preds = %181
  %188 = load i64, i64* @VERB_ALGO, align 8
  %189 = load %struct.auth_xfer*, %struct.auth_xfer** %5, align 8
  %190 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %189, i32 0, i32 1
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = getelementptr inbounds %struct.sldns_file_parse_state, %struct.sldns_file_parse_state* %8, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.sldns_buffer*, %struct.sldns_buffer** %7, align 8
  %199 = call i32 @sldns_buffer_begin(%struct.sldns_buffer* %198)
  %200 = call i32 (i64, i8*, i32, i32, ...) @verbose(i64 %188, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %195, i32 %197, i32 %199)
  store i32 0, i32* %4, align 4
  br label %203

201:                                              ; preds = %181
  br label %157

202:                                              ; preds = %157
  store i32 1, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %187, %121
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @memset(%struct.sldns_file_parse_state*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i32, i32) #1

declare dso_local i32 @verbose(i64, i8*, i32, i32, ...) #1

declare dso_local i64 @chunklist_sum(%struct.auth_chunk*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i32 @http_zonefile_syntax_check(%struct.auth_xfer*, %struct.sldns_buffer*) #1

declare dso_local i32 @log_err(i8*, i32, i32, i32) #1

declare dso_local i32 @sldns_buffer_begin(%struct.sldns_buffer*) #1

declare dso_local i32 @traverse_postorder(i32*, i32, i32*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

declare dso_local i64 @chunkline_get_line_collated(%struct.auth_chunk**, i64*, %struct.sldns_buffer*) #1

declare dso_local i32 @chunkline_newline_removal(%struct.sldns_buffer*) #1

declare dso_local i64 @chunkline_is_comment_line_or_empty(%struct.sldns_buffer*) #1

declare dso_local i64 @http_parse_origin(%struct.sldns_buffer*, %struct.sldns_file_parse_state*) #1

declare dso_local i64 @http_parse_ttl(%struct.sldns_buffer*, %struct.sldns_file_parse_state*) #1

declare dso_local i32 @http_parse_add_rr(%struct.auth_xfer*, %struct.auth_zone*, %struct.sldns_buffer*, %struct.sldns_file_parse_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
