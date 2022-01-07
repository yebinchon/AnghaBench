; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editlist_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_editlist_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i64 }
%struct.scsi_mode_page_header = type { i32, i64 }
%struct.scsi_mode_page_header_sp = type { i32 }
%struct.scsi_mode_header_6 = type { i64, i32, i64 }
%struct.scsi_mode_header_10 = type { i64, i32, i64 }

@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@editlist_changed = common dso_local global i32 0, align 4
@T_SEQUENTIAL = common dso_local global i64 0, align 8
@SMPH_SPF = common dso_local global i32 0, align 4
@format = common dso_local global i32 0, align 4
@editentry_save = common dso_local global i32 0, align 4
@SMPH_PS = common dso_local global i32 0, align 4
@PAGE_CTRL_SHIFT = common dso_local global i64 0, align 8
@SMS_PAGE_CTRL_SAVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32)* @editlist_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @editlist_save(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.cam_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.scsi_mode_page_header*, align 8
  %23 = alloca %struct.scsi_mode_page_header_sp*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.scsi_mode_header_6*, align 8
  %29 = alloca %struct.scsi_mode_header_10*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %30 = load i32, i32* @MAX_DATA_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %19, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %20, align 8
  %34 = load i32, i32* @editlist_changed, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %9
  store i32 1, i32* %27, align 4
  br label %211

37:                                               ; preds = %9
  %38 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %18, align 4
  %46 = mul nuw i64 4, %31
  %47 = trunc i64 %46 to i32
  %48 = call i32 @mode_sense(%struct.cam_device* %38, i32* %11, i32 %39, i32 0, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32* %33, i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %91

51:                                               ; preds = %37
  %52 = bitcast i32* %33 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %52, %struct.scsi_mode_header_6** %28, align 8
  store i64 24, i64* %25, align 8
  %53 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %54 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %51
  %58 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %59 = call %struct.scsi_mode_page_header* @find_mode_page_6(%struct.scsi_mode_header_6* %58)
  %60 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %61 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %60, i64 1
  %62 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %63 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %25, align 8
  %68 = sub i64 %66, %67
  %69 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %70 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32 @bcopy(%struct.scsi_mode_page_header* %59, %struct.scsi_mode_header_6* %61, i32 %73)
  %75 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %76 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %75, i32 0, i32 0
  store i64 0, i64* %76, align 8
  br label %77

77:                                               ; preds = %57, %51
  %78 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %79 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  %80 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %81 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @T_SEQUENTIAL, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %87 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %28, align 8
  %90 = call %struct.scsi_mode_page_header* @find_mode_page_6(%struct.scsi_mode_header_6* %89)
  store %struct.scsi_mode_page_header* %90, %struct.scsi_mode_page_header** %22, align 8
  br label %145

91:                                               ; preds = %37
  %92 = bitcast i32* %33 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %92, %struct.scsi_mode_header_10** %29, align 8
  store i64 24, i64* %25, align 8
  %93 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %94 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @scsi_2btoul(i32 %96)
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %128

99:                                               ; preds = %91
  %100 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %101 = bitcast %struct.scsi_mode_header_10* %100 to %struct.scsi_mode_header_6*
  %102 = call %struct.scsi_mode_page_header* @find_mode_page_10(%struct.scsi_mode_header_6* %101)
  %103 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %104 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %103, i64 1
  %105 = bitcast %struct.scsi_mode_header_10* %104 to %struct.scsi_mode_header_6*
  %106 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %107 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @scsi_2btoul(i32 %108)
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %25, align 8
  %113 = sub i64 %111, %112
  %114 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %115 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @scsi_2btoul(i32 %117)
  %119 = sext i32 %118 to i64
  %120 = sub i64 %113, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @bcopy(%struct.scsi_mode_page_header* %102, %struct.scsi_mode_header_6* %105, i32 %121)
  %123 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %124 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 @scsi_ulto2b(i32 0, i32 %126)
  br label %128

128:                                              ; preds = %99, %91
  %129 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %130 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @scsi_ulto2b(i32 0, i32 %131)
  %133 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %134 = getelementptr inbounds %struct.cam_device, %struct.cam_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @T_SEQUENTIAL, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %140 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  br label %141

141:                                              ; preds = %138, %128
  %142 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %29, align 8
  %143 = bitcast %struct.scsi_mode_header_10* %142 to %struct.scsi_mode_header_6*
  %144 = call %struct.scsi_mode_page_header* @find_mode_page_10(%struct.scsi_mode_header_6* %143)
  store %struct.scsi_mode_page_header* %144, %struct.scsi_mode_page_header** %22, align 8
  br label %145

145:                                              ; preds = %141, %88
  %146 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %147 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @SMPH_SPF, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  store i64 16, i64* %26, align 8
  %153 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %154 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %153, i64 1
  %155 = bitcast %struct.scsi_mode_page_header* %154 to i32*
  store i32* %155, i32** %21, align 8
  %156 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %157 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %24, align 8
  br label %170

159:                                              ; preds = %145
  %160 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %161 = bitcast %struct.scsi_mode_page_header* %160 to %struct.scsi_mode_page_header_sp*
  store %struct.scsi_mode_page_header_sp* %161, %struct.scsi_mode_page_header_sp** %23, align 8
  store i64 4, i64* %26, align 8
  %162 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %23, align 8
  %163 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %162, i64 1
  %164 = bitcast %struct.scsi_mode_page_header_sp* %163 to i32*
  store i32* %164, i32** %21, align 8
  %165 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %23, align 8
  %166 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @scsi_2btoul(i32 %167)
  %169 = sext i32 %168 to i64
  store i64 %169, i64* %24, align 8
  br label %170

170:                                              ; preds = %159, %152
  %171 = load i64, i64* %24, align 8
  %172 = mul nuw i64 4, %31
  %173 = load i32*, i32** %21, align 8
  %174 = ptrtoint i32* %173 to i64
  %175 = ptrtoint i32* %33 to i64
  %176 = sub i64 %174, %175
  %177 = sdiv exact i64 %176, 4
  %178 = sub i64 %172, %177
  %179 = trunc i64 %178 to i32
  %180 = call i64 @MIN(i64 %171, i32 %179)
  store i64 %180, i64* %24, align 8
  %181 = load i32*, i32** %21, align 8
  %182 = load i64, i64* %24, align 8
  %183 = load i32, i32* @format, align 4
  %184 = load i32, i32* @editentry_save, align 4
  %185 = call i32 @buff_encode_visit(i32* %181, i64 %182, i32 %183, i32 %184, i32 0)
  %186 = load i32, i32* @SMPH_PS, align 4
  %187 = xor i32 %186, -1
  %188 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %22, align 8
  %189 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, %187
  store i32 %191, i32* %189, align 8
  %192 = load %struct.cam_device*, %struct.cam_device** %10, align 8
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %13, align 4
  %195 = load i64, i64* @PAGE_CTRL_SHIFT, align 8
  %196 = trunc i64 %195 to i32
  %197 = shl i32 %194, %196
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* @SMS_PAGE_CTRL_SAVED, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i32, i32* %16, align 4
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* %18, align 4
  %205 = load i64, i64* %25, align 8
  %206 = load i64, i64* %26, align 8
  %207 = add i64 %205, %206
  %208 = load i64, i64* %24, align 8
  %209 = add i64 %207, %208
  %210 = call i32 @mode_select(%struct.cam_device* %192, i32 %193, i32 %201, i32 %202, i32 %203, i32 %204, i32* %33, i64 %209)
  store i32 0, i32* %27, align 4
  br label %211

211:                                              ; preds = %170, %36
  %212 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %212)
  %213 = load i32, i32* %27, align 4
  switch i32 %213, label %215 [
    i32 0, label %214
    i32 1, label %214
  ]

214:                                              ; preds = %211, %211
  ret void

215:                                              ; preds = %211
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mode_sense(%struct.cam_device*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @bcopy(%struct.scsi_mode_page_header*, %struct.scsi_mode_header_6*, i32) #2

declare dso_local %struct.scsi_mode_page_header* @find_mode_page_6(%struct.scsi_mode_header_6*) #2

declare dso_local i32 @scsi_2btoul(i32) #2

declare dso_local %struct.scsi_mode_page_header* @find_mode_page_10(%struct.scsi_mode_header_6*) #2

declare dso_local i32 @scsi_ulto2b(i32, i32) #2

declare dso_local i64 @MIN(i64, i32) #2

declare dso_local i32 @buff_encode_visit(i32*, i64, i32, i32, i32) #2

declare dso_local i32 @mode_select(%struct.cam_device*, i32, i32, i32, i32, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
