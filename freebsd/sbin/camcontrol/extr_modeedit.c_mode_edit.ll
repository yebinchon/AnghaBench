; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_mode_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_modeedit.c_mode_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot edit in binary mode.\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"SCSI_MODES\00", align 1
@DEFAULT_SCSI_MODE_DB = common dso_local global i8* null, align 8
@verbose = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"cannot open modepage database \22%s\22\00", align 1
@ESRCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [50 x i8] c"modepage 0x%02x,0x%02x not found in database \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"reverting to binary display only\00", align 1
@EX_OSFILE = common dso_local global i32 0, align 4
@PAGE_CTRL_SHIFT = common dso_local global i64 0, align 8
@SMS_PAGE_CTRL_CURRENT = common dso_local global i64 0, align 8
@SMS_PAGE_CTRL_SAVED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"it only makes sense to edit page 0 (current) or page 3 (saved values)\00", align 1
@editlist = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mode_edit(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12) #0 {
  %14 = alloca %struct.cam_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32 %11, i32* %25, align 4
  store i32 %12, i32* %26, align 4
  %28 = load i32, i32* %23, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %13
  %31 = load i32, i32* %22, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @EX_USAGE, align 4
  %35 = call i32 @errx(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  br label %106

37:                                               ; preds = %13
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %24, align 4
  %48 = load i32, i32* %25, align 4
  %49 = load i32, i32* %26, align 4
  %50 = call i32 @editlist_populate_desc(%struct.cam_device* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  br label %105

51:                                               ; preds = %37
  %52 = call i8* @getenv(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i8* %52, i8** %27, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i8*, i8** @DEFAULT_SCSI_MODE_DB, align 8
  store i8* %55, i8** %27, align 8
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i8*, i8** %27, align 8
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %21, align 4
  %60 = call i64 @load_format(i8* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %56
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* @verbose, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %65, %62
  %69 = load i64, i64* @errno, align 8
  %70 = load i64, i64* @ENOENT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8*, i8** %27, align 8
  %74 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %85

75:                                               ; preds = %68
  %76 = load i64, i64* @errno, align 8
  %77 = load i64, i64* @ESRCH, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i8*, i8** %27, align 8
  %83 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %80, i32 %81, i8* %82)
  br label %84

84:                                               ; preds = %79, %75
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %23, align 4
  br label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EX_OSFILE, align 4
  %92 = call i32 @exit(i32 %91) #3
  unreachable

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %65, %56
  %95 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %19, align 4
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %24, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %26, align 4
  %104 = call i32 @editlist_populate(%struct.cam_device* %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %94, %40
  br label %106

106:                                              ; preds = %105, %36
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %155

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = load i64, i64* @PAGE_CTRL_SHIFT, align 8
  %112 = trunc i64 %111 to i32
  %113 = shl i32 %110, %112
  %114 = sext i32 %113 to i64
  %115 = load i64, i64* @SMS_PAGE_CTRL_CURRENT, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %109
  %118 = load i32, i32* %19, align 4
  %119 = load i64, i64* @PAGE_CTRL_SHIFT, align 8
  %120 = trunc i64 %119 to i32
  %121 = shl i32 %118, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* @SMS_PAGE_CTRL_SAVED, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @EX_USAGE, align 4
  %127 = call i32 @errx(i32 %126, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0))
  br label %128

128:                                              ; preds = %125, %117, %109
  %129 = call i32 (...) @modepage_edit()
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %128
  %133 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* %21, align 4
  %139 = load i32, i32* %24, align 4
  %140 = load i32, i32* %25, align 4
  %141 = load i32, i32* %26, align 4
  %142 = call i32 @editlist_save_desc(%struct.cam_device* %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  br label %154

143:                                              ; preds = %128
  %144 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %20, align 4
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %26, align 4
  %153 = call i32 @editlist_save(%struct.cam_device* %144, i32 %145, i32 %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %143, %132
  br label %191

155:                                              ; preds = %106
  %156 = load i32, i32* %23, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = call i64 @STAILQ_EMPTY(i32* @editlist)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %158, %155
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %166 = load i32, i32* %15, align 4
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %19, align 4
  %169 = load i32, i32* %20, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %26, align 4
  %174 = call i32 @modepage_dump_desc(%struct.cam_device* %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  br label %186

175:                                              ; preds = %161
  %176 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %19, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* %25, align 4
  %184 = load i32, i32* %26, align 4
  %185 = call i32 @modepage_dump(%struct.cam_device* %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %175, %164
  br label %190

187:                                              ; preds = %158
  %188 = load i32, i32* @stdout, align 4
  %189 = call i32 @modepage_write(i32 %188, i32 0)
  br label %190

190:                                              ; preds = %187, %186
  br label %191

191:                                              ; preds = %190, %154
  ret void
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @editlist_populate_desc(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @load_format(i8*, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @editlist_populate(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @modepage_edit(...) #1

declare dso_local i32 @editlist_save_desc(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @editlist_save(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @modepage_dump_desc(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @modepage_dump(%struct.cam_device*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @modepage_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
