; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_create_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i32, i32 }
%struct.stat = type { i32 }
%struct.fixup_entry = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_NO_OVERWRITE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't create directory '%s'\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Can't create directory '%s': Conflicting file cannot be removed\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Can't test directory '%s'\00", align 1
@DEFAULT_DIR_MODE = common dso_local global i32 0, align 4
@MINIMUM_DIR_MODE = common dso_local global i32 0, align 4
@MAXIMUM_DIR_MODE = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@TODO_MODE_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to create dir '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*, i8*)* @create_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_dir(%struct.archive_write_disk* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write_disk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.fixup_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @strrchr(i8* %13, i8 signext 47)
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %9, align 8
  br label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %9, align 8
  br label %22

22:                                               ; preds = %19, %17
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %58, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %9, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %34, %28
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %52, %34, %22
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  store i8 0, i8* %62, align 1
  %63 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @create_dir(%struct.archive_write_disk* %63, i8* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i8*, i8** %8, align 8
  store i8 47, i8* %66, align 1
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %3, align 4
  br label %198

68:                                               ; preds = %58
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %69, i32* %3, align 4
  br label %198

70:                                               ; preds = %52, %46, %40
  %71 = load i8*, i8** %5, align 8
  %72 = call i64 @la_stat(i8* %71, %struct.stat* %6)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @S_ISDIR(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %80, i32* %3, align 4
  br label %198

81:                                               ; preds = %74
  %82 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %83 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ARCHIVE_EXTRACT_NO_OVERWRITE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %90 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %89, i32 0, i32 2
  %91 = load i64, i64* @EEXIST, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @archive_set_error(i32* %90, i64 %91, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %94, i32* %3, align 4
  br label %198

95:                                               ; preds = %81
  %96 = load i8*, i8** %5, align 8
  %97 = call i64 @unlink(i8* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %101 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %100, i32 0, i32 2
  %102 = load i64, i64* @errno, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @archive_set_error(i32* %101, i64 %102, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %103)
  %105 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %105, i32* %3, align 4
  br label %198

106:                                              ; preds = %95
  br label %139

107:                                              ; preds = %70
  %108 = load i64, i64* @errno, align 8
  %109 = load i64, i64* @ENOENT, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i64, i64* @errno, align 8
  %113 = load i64, i64* @ENOTDIR, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %117 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %116, i32 0, i32 2
  %118 = load i64, i64* @errno, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @archive_set_error(i32* %117, i64 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %119)
  %121 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %121, i32* %3, align 4
  br label %198

122:                                              ; preds = %111, %107
  %123 = load i8*, i8** %8, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i8*, i8** %8, align 8
  store i8 0, i8* %126, align 1
  %127 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @create_dir(%struct.archive_write_disk* %127, i8* %128)
  store i32 %129, i32* %12, align 4
  %130 = load i8*, i8** %8, align 8
  store i8 47, i8* %130, align 1
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @ARCHIVE_OK, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %125
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %3, align 4
  br label %198

136:                                              ; preds = %125
  br label %137

137:                                              ; preds = %136, %122
  br label %138

138:                                              ; preds = %137
  br label %139

139:                                              ; preds = %138, %106
  %140 = load i32, i32* @DEFAULT_DIR_MODE, align 4
  %141 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %142 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %140, %144
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* @MINIMUM_DIR_MODE, align 4
  %148 = load i32, i32* %11, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* @MAXIMUM_DIR_MODE, align 4
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %11, align 4
  %153 = load i8*, i8** %5, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i64 @mkdir(i8* %153, i32 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %180

157:                                              ; preds = %139
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %163 = load i8*, i8** %5, align 8
  %164 = call %struct.fixup_entry* @new_fixup(%struct.archive_write_disk* %162, i8* %163)
  store %struct.fixup_entry* %164, %struct.fixup_entry** %7, align 8
  %165 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %166 = icmp eq %struct.fixup_entry* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %168, i32* %3, align 4
  br label %198

169:                                              ; preds = %161
  %170 = load i32, i32* @TODO_MODE_BASE, align 4
  %171 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %172 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.fixup_entry*, %struct.fixup_entry** %7, align 8
  %177 = getelementptr inbounds %struct.fixup_entry, %struct.fixup_entry* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %169, %157
  %179 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %179, i32* %3, align 4
  br label %198

180:                                              ; preds = %139
  %181 = load i8*, i8** %5, align 8
  %182 = call i64 @la_stat(i8* %181, %struct.stat* %6)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @S_ISDIR(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %190, i32* %3, align 4
  br label %198

191:                                              ; preds = %184, %180
  %192 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %193 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %192, i32 0, i32 2
  %194 = load i64, i64* @errno, align 8
  %195 = load i8*, i8** %5, align 8
  %196 = call i32 @archive_set_error(i32* %193, i64 %194, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %195)
  %197 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %191, %189, %178, %167, %134, %115, %99, %88, %79, %68, %61
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @la_stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, i8*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local %struct.fixup_entry* @new_fixup(%struct.archive_write_disk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
