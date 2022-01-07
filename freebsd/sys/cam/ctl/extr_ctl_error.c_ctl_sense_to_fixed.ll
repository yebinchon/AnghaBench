; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_sense_to_fixed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_error.c_ctl_sense_to_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data_desc = type { i32, i32, i32*, i32, i32, i32 }
%struct.scsi_sense_data_fixed = type { i32 }
%struct.scsi_sense_desc_header = type { i32 }
%struct.scsi_sense_info = type { i32, i32* }
%struct.scsi_sense_command = type { i32, i32* }
%struct.scsi_sense_fru = type { i32, i32 }
%struct.scsi_sense_sks = type { i32, i32* }
%struct.scsi_sense_stream = type { i32, i32 }
%struct.scsi_sense_data = type { i32 }

@SSD_ERRCODE = common dso_local global i32 0, align 4
@SSD_DESC_CURRENT_ERROR = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@SSD_TYPE_FIXED = common dso_local global i32 0, align 4
@SSD_KEY = common dso_local global i32 0, align 4
@SSD_ELEM_INFO = common dso_local global i32 0, align 4
@SSD_ELEM_SKIP = common dso_local global i32 0, align 4
@SSD_ELEM_COMMAND = common dso_local global i32 0, align 4
@SSD_ELEM_FRU = common dso_local global i32 0, align 4
@SSD_ELEM_SKS = common dso_local global i32 0, align 4
@SSD_ELEM_STREAM = common dso_local global i32 0, align 4
@SSD_ELEM_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_sense_to_fixed(%struct.scsi_sense_data_desc* %0, %struct.scsi_sense_data_fixed* %1) #0 {
  %3 = alloca %struct.scsi_sense_data_desc*, align 8
  %4 = alloca %struct.scsi_sense_data_fixed*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.scsi_sense_desc_header*, align 8
  %19 = alloca %struct.scsi_sense_info*, align 8
  %20 = alloca %struct.scsi_sense_command*, align 8
  %21 = alloca %struct.scsi_sense_fru*, align 8
  %22 = alloca %struct.scsi_sense_sks*, align 8
  %23 = alloca %struct.scsi_sense_stream*, align 8
  store %struct.scsi_sense_data_desc* %0, %struct.scsi_sense_data_desc** %3, align 8
  store %struct.scsi_sense_data_fixed* %1, %struct.scsi_sense_data_fixed** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SSD_ERRCODE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @SSD_DESC_CURRENT_ERROR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %33

32:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %32, %31
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %147, %33
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %37 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %148

41:                                               ; preds = %34
  %42 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to %struct.scsi_sense_desc_header*
  store %struct.scsi_sense_desc_header* %48, %struct.scsi_sense_desc_header** %18, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %51 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, 4
  %56 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %41
  br label %148

62:                                               ; preds = %41
  %63 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %16, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %137 [
    i32 130, label %70
    i32 132, label %85
    i32 131, label %100
    i32 129, label %114
    i32 128, label %126
  ]

70:                                               ; preds = %62
  %71 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %72 = bitcast %struct.scsi_sense_desc_header* %71 to %struct.scsi_sense_info*
  store %struct.scsi_sense_info* %72, %struct.scsi_sense_info** %19, align 8
  %73 = load %struct.scsi_sense_info*, %struct.scsi_sense_info** %19, align 8
  %74 = getelementptr inbounds %struct.scsi_sense_info, %struct.scsi_sense_info* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %6, align 8
  store i32 8, i32* %11, align 4
  %76 = load %struct.scsi_sense_info*, %struct.scsi_sense_info** %19, align 8
  %77 = getelementptr inbounds %struct.scsi_sense_info, %struct.scsi_sense_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 4
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %16, align 4
  br label %147

85:                                               ; preds = %62
  %86 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %87 = bitcast %struct.scsi_sense_desc_header* %86 to %struct.scsi_sense_command*
  store %struct.scsi_sense_command* %87, %struct.scsi_sense_command** %20, align 8
  %88 = load %struct.scsi_sense_command*, %struct.scsi_sense_command** %20, align 8
  %89 = getelementptr inbounds %struct.scsi_sense_command, %struct.scsi_sense_command* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  store i32* %90, i32** %7, align 8
  store i32 8, i32* %12, align 4
  %91 = load %struct.scsi_sense_command*, %struct.scsi_sense_command** %20, align 8
  %92 = getelementptr inbounds %struct.scsi_sense_command, %struct.scsi_sense_command* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add i64 %94, 4
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %16, align 4
  br label %147

100:                                              ; preds = %62
  %101 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %102 = bitcast %struct.scsi_sense_desc_header* %101 to %struct.scsi_sense_fru*
  store %struct.scsi_sense_fru* %102, %struct.scsi_sense_fru** %21, align 8
  %103 = load %struct.scsi_sense_fru*, %struct.scsi_sense_fru** %21, align 8
  %104 = getelementptr inbounds %struct.scsi_sense_fru, %struct.scsi_sense_fru* %103, i32 0, i32 1
  store i32* %104, i32** %8, align 8
  store i32 4, i32* %13, align 4
  %105 = load %struct.scsi_sense_fru*, %struct.scsi_sense_fru** %21, align 8
  %106 = getelementptr inbounds %struct.scsi_sense_fru, %struct.scsi_sense_fru* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %108, 4
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, %109
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %16, align 4
  br label %147

114:                                              ; preds = %62
  %115 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %116 = bitcast %struct.scsi_sense_desc_header* %115 to %struct.scsi_sense_sks*
  store %struct.scsi_sense_sks* %116, %struct.scsi_sense_sks** %22, align 8
  %117 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %22, align 8
  %118 = getelementptr inbounds %struct.scsi_sense_sks, %struct.scsi_sense_sks* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  store i32* %119, i32** %9, align 8
  store i32 8, i32* %14, align 4
  %120 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %22, align 8
  %121 = getelementptr inbounds %struct.scsi_sense_sks, %struct.scsi_sense_sks* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = add i64 %123, 4
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %16, align 4
  br label %147

126:                                              ; preds = %62
  %127 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %128 = bitcast %struct.scsi_sense_desc_header* %127 to %struct.scsi_sense_stream*
  store %struct.scsi_sense_stream* %128, %struct.scsi_sense_stream** %23, align 8
  %129 = load %struct.scsi_sense_stream*, %struct.scsi_sense_stream** %23, align 8
  %130 = getelementptr inbounds %struct.scsi_sense_stream, %struct.scsi_sense_stream* %129, i32 0, i32 1
  store i32* %130, i32** %10, align 8
  store i32 4, i32* %15, align 4
  %131 = load %struct.scsi_sense_stream*, %struct.scsi_sense_stream** %23, align 8
  %132 = getelementptr inbounds %struct.scsi_sense_stream, %struct.scsi_sense_stream* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %134, 4
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %16, align 4
  br label %147

137:                                              ; preds = %62
  %138 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %18, align 8
  %139 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 4, %141
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = add i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %16, align 4
  br label %147

147:                                              ; preds = %137, %126, %114, %100, %85, %70
  br label %34

148:                                              ; preds = %61, %34
  %149 = load i32, i32* @SSD_FULL_SIZE, align 4
  store i32 %149, i32* %17, align 4
  %150 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %4, align 8
  %151 = bitcast %struct.scsi_sense_data_fixed* %150 to %struct.scsi_sense_data*
  %152 = load i32, i32* @SSD_TYPE_FIXED, align 4
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %155 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @SSD_KEY, align 4
  %158 = and i32 %156, %157
  %159 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %160 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %3, align 8
  %163 = getelementptr inbounds %struct.scsi_sense_data_desc, %struct.scsi_sense_data_desc* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %6, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %148
  %168 = load i32, i32* @SSD_ELEM_INFO, align 4
  br label %171

169:                                              ; preds = %148
  %170 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = load i32, i32* %11, align 4
  %174 = load i32*, i32** %6, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %171
  %178 = load i32, i32* @SSD_ELEM_COMMAND, align 4
  br label %181

179:                                              ; preds = %171
  %180 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %181

181:                                              ; preds = %179, %177
  %182 = phi i32 [ %178, %177 ], [ %180, %179 ]
  %183 = load i32, i32* %12, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* @SSD_ELEM_FRU, align 4
  br label %191

189:                                              ; preds = %181
  %190 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %191

191:                                              ; preds = %189, %187
  %192 = phi i32 [ %188, %187 ], [ %190, %189 ]
  %193 = load i32, i32* %13, align 4
  %194 = load i32*, i32** %8, align 8
  %195 = load i32*, i32** %9, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = load i32, i32* @SSD_ELEM_SKS, align 4
  br label %201

199:                                              ; preds = %191
  %200 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi i32 [ %198, %197 ], [ %200, %199 ]
  %203 = load i32, i32* %14, align 4
  %204 = load i32*, i32** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load i32, i32* @SSD_ELEM_STREAM, align 4
  br label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @SSD_ELEM_SKIP, align 4
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i32 [ %208, %207 ], [ %210, %209 ]
  %213 = load i32, i32* %15, align 4
  %214 = load i32*, i32** %10, align 8
  %215 = load i32, i32* @SSD_ELEM_NONE, align 4
  %216 = call i32 @ctl_set_sense_data(%struct.scsi_sense_data* %151, i32* %17, i32* null, i32 %152, i32 %153, i32 %158, i32 %161, i32 %164, i32 %172, i32 %173, i32* %174, i32 %182, i32 %183, i32* %184, i32 %192, i32 %193, i32* %194, i32 %202, i32 %203, i32* %204, i32 %212, i32 %213, i32* %214, i32 %215)
  ret void
}

declare dso_local i32 @ctl_set_sense_data(%struct.scsi_sense_data*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
