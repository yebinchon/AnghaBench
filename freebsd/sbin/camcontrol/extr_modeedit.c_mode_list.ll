; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_mode_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_mode_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.scsi_mode_page_header = type { i32, i64 }
%struct.scsi_mode_page_header_sp = type { i32, i32, i32 }
%struct.pagename = type { i8* }
%struct.scsi_mode_header_6 = type { i32, i32 }
%struct.scsi_mode_header_10 = type { i32, i32 }

@MAX_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"SCSI_MODES\00", align 1
@DEFAULT_SCSI_MODE_DB = common dso_local global i8* null, align 8
@verbose = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot open modepage database \22%s\22\00", align 1
@SMS_ALL_PAGES_PAGE = common dso_local global i32 0, align 4
@SMS_SUBPAGE_ALL = common dso_local global i32 0, align 4
@SMPH_SPF = common dso_local global i32 0, align 4
@SMS_PAGE_CODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"0x%02x\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"0x%02x,0x%02x\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_list(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.scsi_mode_page_header*, align 8
  %20 = alloca %struct.scsi_mode_page_header_sp*, align 8
  %21 = alloca %struct.pagename*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.scsi_mode_header_6*, align 8
  %28 = alloca %struct.scsi_mode_header_10*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %29 = load i32, i32* @MAX_DATA_SIZE, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %17, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %18, align 8
  %33 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %22, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %8
  %36 = load i8*, i8** @DEFAULT_SCSI_MODE_DB, align 8
  store i8* %36, i8** %22, align 8
  br label %37

37:                                               ; preds = %35, %8
  %38 = load i8*, i8** %22, align 8
  %39 = call i64 @load_format(i8* %38, i32 0, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i64, i64* @verbose, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @ENOENT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %22, align 8
  %50 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %44, %41, %37
  %52 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @SMS_ALL_PAGES_PAGE, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @SMS_SUBPAGE_ALL, align 4
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = mul nuw i64 4, %30
  %67 = trunc i64 %66 to i32
  %68 = call i32 @mode_sense(%struct.cam_device* %52, i32* %10, i32 %53, i32 0, i32 %54, i32 %55, i32 %62, i32 %63, i32 %64, i32 %65, i32* %32, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 6
  br i1 %70, label %71, label %82

71:                                               ; preds = %61
  %72 = bitcast i32* %32 to %struct.scsi_mode_header_6*
  store %struct.scsi_mode_header_6* %72, %struct.scsi_mode_header_6** %27, align 8
  %73 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %27, align 8
  %74 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %23, align 4
  %76 = load %struct.scsi_mode_header_6*, %struct.scsi_mode_header_6** %27, align 8
  %77 = getelementptr inbounds %struct.scsi_mode_header_6, %struct.scsi_mode_header_6* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 8, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %24, align 4
  br label %95

82:                                               ; preds = %61
  %83 = bitcast i32* %32 to %struct.scsi_mode_header_10*
  store %struct.scsi_mode_header_10* %83, %struct.scsi_mode_header_10** %28, align 8
  %84 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %28, align 8
  %85 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @scsi_2btoul(i32 %86)
  store i32 %87, i32* %23, align 4
  %88 = load %struct.scsi_mode_header_10*, %struct.scsi_mode_header_10** %28, align 8
  %89 = getelementptr inbounds %struct.scsi_mode_header_10, %struct.scsi_mode_header_10* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @scsi_2btoul(i32 %90)
  %92 = sext i32 %91 to i64
  %93 = add i64 8, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %24, align 4
  br label %95

95:                                               ; preds = %82, %71
  br label %96

96:                                               ; preds = %177, %95
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %23, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %178

100:                                              ; preds = %96
  %101 = load i32, i32* %24, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %32, i64 %102
  %104 = bitcast i32* %103 to %struct.scsi_mode_page_header*
  store %struct.scsi_mode_page_header* %104, %struct.scsi_mode_page_header** %19, align 8
  %105 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %19, align 8
  %106 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @SMPH_SPF, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %125

111:                                              ; preds = %100
  %112 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %19, align 8
  %113 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @SMS_PAGE_CODE, align 4
  %116 = and i32 %114, %115
  store i32 %116, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %117 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %19, align 8
  %118 = getelementptr inbounds %struct.scsi_mode_page_header, %struct.scsi_mode_page_header* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 16, %119
  %121 = load i32, i32* %24, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %24, align 4
  br label %146

125:                                              ; preds = %100
  %126 = load %struct.scsi_mode_page_header*, %struct.scsi_mode_page_header** %19, align 8
  %127 = bitcast %struct.scsi_mode_page_header* %126 to %struct.scsi_mode_page_header_sp*
  store %struct.scsi_mode_page_header_sp* %127, %struct.scsi_mode_page_header_sp** %20, align 8
  %128 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %20, align 8
  %129 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @SMS_PAGE_CODE, align 4
  %132 = and i32 %130, %131
  store i32 %132, i32* %25, align 4
  %133 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %20, align 8
  %134 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %26, align 4
  %136 = load %struct.scsi_mode_page_header_sp*, %struct.scsi_mode_page_header_sp** %20, align 8
  %137 = getelementptr inbounds %struct.scsi_mode_page_header_sp, %struct.scsi_mode_page_header_sp* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @scsi_2btoul(i32 %138)
  %140 = sext i32 %139 to i64
  %141 = add i64 12, %140
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %143, %141
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %24, align 4
  br label %146

146:                                              ; preds = %125, %111
  %147 = load i32, i32* %25, align 4
  %148 = load i32, i32* %26, align 4
  %149 = call %struct.pagename* @nameentry_lookup(i32 %147, i32 %148)
  store %struct.pagename* %149, %struct.pagename** %21, align 8
  %150 = load i32, i32* %26, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %146
  %153 = load i32, i32* %25, align 4
  %154 = load %struct.pagename*, %struct.pagename** %21, align 8
  %155 = icmp ne %struct.pagename* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load %struct.pagename*, %struct.pagename** %21, align 8
  %158 = getelementptr inbounds %struct.pagename, %struct.pagename* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  br label %161

160:                                              ; preds = %152
  br label %161

161:                                              ; preds = %160, %156
  %162 = phi i8* [ %159, %156 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %160 ]
  %163 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %153, i8* %162)
  br label %177

164:                                              ; preds = %146
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* %26, align 4
  %167 = load %struct.pagename*, %struct.pagename** %21, align 8
  %168 = icmp ne %struct.pagename* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.pagename*, %struct.pagename** %21, align 8
  %171 = getelementptr inbounds %struct.pagename, %struct.pagename* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  br label %174

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi i8* [ %172, %169 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %173 ]
  %176 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %165, i32 %166, i8* %175)
  br label %177

177:                                              ; preds = %174, %161
  br label %96

178:                                              ; preds = %96
  %179 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %179)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @load_format(i8*, i32, i32) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32 @mode_sense(%struct.cam_device*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @scsi_2btoul(i32) #2

declare dso_local %struct.pagename* @nameentry_lookup(i32, i32) #2

declare dso_local i32 @printf(i8*, i32, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
