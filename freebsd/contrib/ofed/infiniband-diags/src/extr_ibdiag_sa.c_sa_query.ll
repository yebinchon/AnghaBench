; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_sa.c_sa_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibdiag_sa.c_sa_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa_handle = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.sa_query_result = type { i32, i8*, i8* }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i64 }

@IB_SA_CLASS = common dso_local global i32 0, align 4
@IB_SA_DATA_OFFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot alloc mem for umad: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@IB_SA_MKEY_F = common dso_local global i32 0, align 4
@ibdebug = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"SA Request:\0A\00", align 1
@ibd_timeout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"umad_send failed: attr 0x%x: %s\0A\00", align 1
@ENOSPC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"umad_recv failed: attr 0x%x: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"SA Response:\0A\00", align 1
@IB_MAD_METHOD_F = common dso_local global i32 0, align 4
@IB_SA_ATTROFFS_F = common dso_local global i32 0, align 4
@IB_MAD_STATUS_F = common dso_local global i32 0, align 4
@IB_SA_MAD_STATUS_SUCCESS = common dso_local global i8* null, align 8
@IB_MAD_METHOD_GET_TABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa_query(%struct.sa_handle* %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i64 %7, %struct.sa_query_result* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sa_handle*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.sa_query_result*, align 8
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_10__*, align 8
  store %struct.sa_handle* %0, %struct.sa_handle** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store %struct.sa_query_result* %8, %struct.sa_query_result** %19, align 8
  store i32 256, i32* %25, align 4
  %27 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 40)
  %28 = load i32, i32* @IB_SA_CLASS, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = load i64, i64* %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %14, align 4
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %15, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* @IB_SA_DATA_OFFS, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load i32, i32* %25, align 4
  %45 = sext i32 %44 to i64
  %46 = call i64 (...) @umad_size()
  %47 = add nsw i64 %45, %46
  %48 = call i8* @calloc(i32 1, i64 %47)
  store i8* %48, i8** %21, align 8
  %49 = load i8*, i8** %21, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %9
  %52 = load i64, i64* @errno, align 8
  %53 = call i32 @strerror(i64 %52)
  %54 = call i32 @IBPANIC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %51, %9
  %56 = load i8*, i8** %21, align 8
  %57 = load %struct.sa_handle*, %struct.sa_handle** %11, align 8
  %58 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %57, i32 0, i32 2
  %59 = load i8*, i8** %17, align 8
  %60 = call i32 @mad_build_pkt(i8* %56, %struct.TYPE_9__* %20, %struct.TYPE_11__* %58, i32* null, i8* %59)
  %61 = load i8*, i8** %21, align 8
  %62 = call i8* @umad_get_mad(i8* %61)
  %63 = load i32, i32* @IB_SA_MKEY_F, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @mad_set_field64(i8* %62, i32 0, i32 %63, i32 %64)
  %66 = load i32, i32* @ibdebug, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load i32, i32* @stdout, align 4
  %70 = load i8*, i8** %21, align 8
  %71 = call i8* @umad_get_mad(i8* %70)
  %72 = load i32, i32* %25, align 4
  %73 = call i32 @xdump(i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %55
  %75 = load %struct.sa_handle*, %struct.sa_handle** %11, align 8
  %76 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load i8*, i8** %21, align 8
  %82 = call %struct.TYPE_10__* @umad_get_mad_addr(i8* %81)
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %26, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 4
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sa_handle*, %struct.sa_handle** %11, align 8
  %95 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @memcpy(i32 %93, i32 %97, i32 16)
  br label %99

99:                                               ; preds = %80, %74
  %100 = load %struct.sa_handle*, %struct.sa_handle** %11, align 8
  %101 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.sa_handle*, %struct.sa_handle** %11, align 8
  %104 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %21, align 8
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* @ibd_timeout, align 4
  %109 = call i32 @umad_send(i32 %102, i32 %105, i8* %106, i32 %107, i32 %108, i32 0)
  store i32 %109, i32* %23, align 4
  %110 = load i32, i32* %23, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %99
  %113 = load i32, i32* %13, align 4
  %114 = load i64, i64* @errno, align 8
  %115 = call i32 @strerror(i64 %114)
  %116 = call i32 @IBWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load i8*, i8** %21, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i32, i32* %23, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %10, align 4
  br label %217

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %135, %121
  %123 = load %struct.sa_handle*, %struct.sa_handle** %11, align 8
  %124 = getelementptr inbounds %struct.sa_handle, %struct.sa_handle* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = load i32, i32* @ibd_timeout, align 4
  %128 = call i32 @umad_recv(i32 %125, i8* %126, i32* %25, i32 %127)
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %122
  %132 = load i64, i64* @errno, align 8
  %133 = load i64, i64* @ENOSPC, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i8*, i8** %21, align 8
  %137 = call i64 (...) @umad_size()
  %138 = load i32, i32* %25, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %137, %139
  %141 = call i8* @realloc(i8* %136, i64 %140)
  store i8* %141, i8** %21, align 8
  br label %122

142:                                              ; preds = %131
  %143 = load i32, i32* %13, align 4
  %144 = load i64, i64* @errno, align 8
  %145 = call i32 @strerror(i64 %144)
  %146 = call i32 @IBWARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %143, i32 %145)
  %147 = load i8*, i8** %21, align 8
  %148 = call i32 @free(i8* %147)
  %149 = load i32, i32* %23, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %10, align 4
  br label %217

151:                                              ; preds = %122
  %152 = load i8*, i8** %21, align 8
  %153 = call i32 @umad_status(i8* %152)
  store i32 %153, i32* %23, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %23, align 4
  store i32 %156, i32* %10, align 4
  br label %217

157:                                              ; preds = %151
  %158 = load i8*, i8** %21, align 8
  %159 = call i8* @umad_get_mad(i8* %158)
  store i8* %159, i8** %22, align 8
  %160 = load i32, i32* @ibdebug, align 4
  %161 = icmp sgt i32 %160, 1
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i32, i32* @stdout, align 4
  %164 = load i8*, i8** %22, align 8
  %165 = load i32, i32* %25, align 4
  %166 = call i32 @xdump(i32 %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %157
  %168 = load i8*, i8** %22, align 8
  %169 = load i32, i32* @IB_MAD_METHOD_F, align 4
  %170 = call i8* @mad_get_field(i8* %168, i32 0, i32 %169)
  %171 = ptrtoint i8* %170 to i64
  store i64 %171, i64* %12, align 8
  %172 = load i8*, i8** %22, align 8
  %173 = load i32, i32* @IB_SA_ATTROFFS_F, align 4
  %174 = call i8* @mad_get_field(i8* %172, i32 0, i32 %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %24, align 4
  %176 = load i8*, i8** %22, align 8
  %177 = load i32, i32* @IB_MAD_STATUS_F, align 4
  %178 = call i8* @mad_get_field(i8* %176, i32 0, i32 %177)
  %179 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %180 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load i8*, i8** %22, align 8
  %182 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %183 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %182, i32 0, i32 2
  store i8* %181, i8** %183, align 8
  %184 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %185 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load i8*, i8** @IB_SA_MAD_STATUS_SUCCESS, align 8
  %188 = icmp ne i8* %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %167
  %190 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %191 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %190, i32 0, i32 0
  store i32 0, i32* %191, align 8
  br label %216

192:                                              ; preds = %167
  %193 = load i64, i64* %12, align 8
  %194 = load i64, i64* @IB_MAD_METHOD_GET_TABLE, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %198 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %215

199:                                              ; preds = %192
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %204 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %203, i32 0, i32 0
  store i32 0, i32* %204, align 8
  br label %214

205:                                              ; preds = %199
  %206 = load i32, i32* %25, align 4
  %207 = load i32, i32* @IB_SA_DATA_OFFS, align 4
  %208 = sub nsw i32 %206, %207
  %209 = load i32, i32* %24, align 4
  %210 = shl i32 %209, 3
  %211 = sdiv i32 %208, %210
  %212 = load %struct.sa_query_result*, %struct.sa_query_result** %19, align 8
  %213 = getelementptr inbounds %struct.sa_query_result, %struct.sa_query_result* %212, i32 0, i32 0
  store i32 %211, i32* %213, align 8
  br label %214

214:                                              ; preds = %205, %202
  br label %215

215:                                              ; preds = %214, %196
  br label %216

216:                                              ; preds = %215, %189
  store i32 0, i32* %10, align 4
  br label %217

217:                                              ; preds = %216, %155, %142, %112
  %218 = load i32, i32* %10, align 4
  ret i32 %218
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @calloc(i32, i64) #1

declare dso_local i64 @umad_size(...) #1

declare dso_local i32 @IBPANIC(i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @mad_build_pkt(i8*, %struct.TYPE_9__*, %struct.TYPE_11__*, i32*, i8*) #1

declare dso_local i32 @mad_set_field64(i8*, i32, i32, i32) #1

declare dso_local i8* @umad_get_mad(i8*) #1

declare dso_local i32 @xdump(i32, i8*, i8*, i32) #1

declare dso_local %struct.TYPE_10__* @umad_get_mad_addr(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @umad_send(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @IBWARN(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @umad_recv(i32, i8*, i32*, i32) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @umad_status(i8*) #1

declare dso_local i8* @mad_get_field(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
