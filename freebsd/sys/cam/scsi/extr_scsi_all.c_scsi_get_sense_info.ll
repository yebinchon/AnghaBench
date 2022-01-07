; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_sense_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_get_sense_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.scsi_sense_data_desc = type { i32 }
%struct.scsi_sense_info = type { i32, i32 }
%struct.scsi_sense_command = type { i32 }
%struct.scsi_sense_fru = type { i32 }
%struct.scsi_sense_data_fixed = type { i32, i32, i32, i32 }

@SSD_INFO_VALID = common dso_local global i32 0, align 4
@SSD_ERRCODE_VALID = common dso_local global i32 0, align 4
@cmd_spec_info = common dso_local global i32* null, align 8
@fru = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_get_sense_info(%struct.scsi_sense_data* %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_sense_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_sense_data_desc*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.scsi_sense_info*, align 8
  %16 = alloca %struct.scsi_sense_command*, align 8
  %17 = alloca %struct.scsi_sense_fru*, align 8
  %18 = alloca %struct.scsi_sense_data_fixed*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.scsi_sense_data* %0, %struct.scsi_sense_data** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %197

24:                                               ; preds = %5
  %25 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %26 = call i32 @scsi_sense_type(%struct.scsi_sense_data* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  switch i32 %27, label %195 [
    i32 129, label %28
    i32 128, label %101
  ]

28:                                               ; preds = %24
  %29 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %30 = bitcast %struct.scsi_sense_data* %29 to %struct.scsi_sense_data_desc*
  store %struct.scsi_sense_data_desc* %30, %struct.scsi_sense_data_desc** %13, align 8
  %31 = load %struct.scsi_sense_data_desc*, %struct.scsi_sense_data_desc** %13, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32* @scsi_find_desc(%struct.scsi_sense_data_desc* %31, i64 %32, i32 %33)
  store i32* %34, i32** %14, align 8
  %35 = load i32*, i32** %14, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %197

38:                                               ; preds = %28
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %99 [
    i32 130, label %40
    i32 132, label %63
    i32 131, label %78
  ]

40:                                               ; preds = %38
  %41 = load i32*, i32** %14, align 8
  %42 = bitcast i32* %41 to %struct.scsi_sense_info*
  store %struct.scsi_sense_info* %42, %struct.scsi_sense_info** %15, align 8
  %43 = load %struct.scsi_sense_info*, %struct.scsi_sense_info** %15, align 8
  %44 = getelementptr inbounds %struct.scsi_sense_info, %struct.scsi_sense_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @SSD_INFO_VALID, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %197

50:                                               ; preds = %40
  %51 = load %struct.scsi_sense_info*, %struct.scsi_sense_info** %15, align 8
  %52 = getelementptr inbounds %struct.scsi_sense_info, %struct.scsi_sense_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @scsi_8btou64(i32 %53)
  %55 = load i32*, i32** %10, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %50
  br label %100

63:                                               ; preds = %38
  %64 = load i32*, i32** %14, align 8
  %65 = bitcast i32* %64 to %struct.scsi_sense_command*
  store %struct.scsi_sense_command* %65, %struct.scsi_sense_command** %16, align 8
  %66 = load %struct.scsi_sense_command*, %struct.scsi_sense_command** %16, align 8
  %67 = getelementptr inbounds %struct.scsi_sense_command, %struct.scsi_sense_command* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @scsi_8btou64(i32 %68)
  %70 = load i32*, i32** %10, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %63
  br label %100

78:                                               ; preds = %38
  %79 = load i32*, i32** %14, align 8
  %80 = bitcast i32* %79 to %struct.scsi_sense_fru*
  store %struct.scsi_sense_fru* %80, %struct.scsi_sense_fru** %17, align 8
  %81 = load %struct.scsi_sense_fru*, %struct.scsi_sense_fru** %17, align 8
  %82 = getelementptr inbounds %struct.scsi_sense_fru, %struct.scsi_sense_fru* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %197

86:                                               ; preds = %78
  %87 = load %struct.scsi_sense_fru*, %struct.scsi_sense_fru** %17, align 8
  %88 = getelementptr inbounds %struct.scsi_sense_fru, %struct.scsi_sense_fru* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load %struct.scsi_sense_fru*, %struct.scsi_sense_fru** %17, align 8
  %95 = getelementptr inbounds %struct.scsi_sense_fru, %struct.scsi_sense_fru* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %93, %86
  br label %100

99:                                               ; preds = %38
  br label %197

100:                                              ; preds = %98, %77, %62
  br label %196

101:                                              ; preds = %24
  %102 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %7, align 8
  %103 = bitcast %struct.scsi_sense_data* %102 to %struct.scsi_sense_data_fixed*
  store %struct.scsi_sense_data_fixed* %103, %struct.scsi_sense_data_fixed** %18, align 8
  %104 = load i32, i32* %9, align 4
  switch i32 %104, label %193 [
    i32 130, label %105
    i32 132, label %133
    i32 131, label %162
  ]

105:                                              ; preds = %101
  %106 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %107 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SSD_ERRCODE_VALID, align 4
  %110 = and i32 %108, %109
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %197

113:                                              ; preds = %105
  %114 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %114, i64 %115, i32* %116)
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %197

120:                                              ; preds = %113
  %121 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %122 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @scsi_4btoul(i32 %123)
  store i32 %124, i32* %19, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i32*, i32** %10, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load i32, i32* %19, align 4
  %131 = load i32*, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %120
  br label %194

133:                                              ; preds = %101
  %134 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %135 = load i64, i64* %8, align 8
  %136 = load i32*, i32** @cmd_spec_info, align 8
  %137 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %134, i64 %135, i32* %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %133
  %140 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %141 = load i32*, i32** @cmd_spec_info, align 8
  %142 = call i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed* %140, i32* %141)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139, %133
  br label %197

145:                                              ; preds = %139
  %146 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %147 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @scsi_4btoul(i32 %148)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %197

153:                                              ; preds = %145
  %154 = load i32, i32* %20, align 4
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i32, i32* %20, align 4
  %160 = load i32*, i32** %11, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %158, %153
  br label %194

162:                                              ; preds = %101
  %163 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %164 = load i64, i64* %8, align 8
  %165 = load i32*, i32** @fru, align 8
  %166 = call i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed* %163, i64 %164, i32* %165)
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %170 = load i32*, i32** @fru, align 8
  %171 = call i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed* %169, i32* %170)
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %162
  br label %197

174:                                              ; preds = %168
  %175 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %176 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %197

180:                                              ; preds = %174
  %181 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %182 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %10, align 8
  store i32 %183, i32* %184, align 4
  %185 = load i32*, i32** %11, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load %struct.scsi_sense_data_fixed*, %struct.scsi_sense_data_fixed** %18, align 8
  %189 = getelementptr inbounds %struct.scsi_sense_data_fixed, %struct.scsi_sense_data_fixed* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %11, align 8
  store i32 %190, i32* %191, align 4
  br label %192

192:                                              ; preds = %187, %180
  br label %194

193:                                              ; preds = %101
  br label %197

194:                                              ; preds = %192, %161, %132
  br label %196

195:                                              ; preds = %24
  br label %197

196:                                              ; preds = %194, %100
  store i32 0, i32* %6, align 4
  br label %198

197:                                              ; preds = %195, %193, %179, %173, %152, %144, %119, %112, %99, %85, %49, %37, %23
  store i32 1, i32* %6, align 4
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @scsi_sense_type(%struct.scsi_sense_data*) #1

declare dso_local i32* @scsi_find_desc(%struct.scsi_sense_data_desc*, i64, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

declare dso_local i32 @SSD_FIXED_IS_PRESENT(%struct.scsi_sense_data_fixed*, i64, i32*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @SSD_FIXED_IS_FILLED(%struct.scsi_sense_data_fixed*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
