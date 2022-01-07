; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_cd9660.c_cd9660_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.dirent = type { i64, i64, i64*, i32, i32 }
%struct.file = type { i32, i32, i32, i32 }
%struct.iso_directory_record = type { i8*, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@ISO_DEFAULT_BLOCK_SIZE = common dso_local global i32 0, align 4
@F_RR = common dso_local global i32 0, align 4
@F_ROOTDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@MAXNAMLEN = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.dirent*)* @cd9660_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cd9660_readdir(%struct.open_file* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.iso_directory_record*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %16 = load %struct.open_file*, %struct.open_file** %4, align 8
  %17 = getelementptr inbounds %struct.open_file, %struct.open_file* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.file*
  store %struct.file* %19, %struct.file** %6, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %45, %2
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %3, align 4
  br label %183

30:                                               ; preds = %20
  %31 = load %struct.open_file*, %struct.open_file** %4, align 8
  %32 = call i32 @buf_read_file(%struct.open_file* %31, i8** %13, i64* %8)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %3, align 4
  br label %183

37:                                               ; preds = %30
  %38 = load i8*, i8** %13, align 8
  %39 = bitcast i8* %38 to %struct.iso_directory_record*
  store %struct.iso_directory_record* %39, %struct.iso_directory_record** %7, align 8
  %40 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %41 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @isonum_711(i32 %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct.file*, %struct.file** %6, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ISO_DEFAULT_BLOCK_SIZE, align 4
  %50 = sdiv i32 %48, %49
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* @ISO_DEFAULT_BLOCK_SIZE, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load %struct.file*, %struct.file** %6, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %20

57:                                               ; preds = %37
  %58 = load %struct.file*, %struct.file** %6, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @F_RR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %57
  %65 = load %struct.file*, %struct.file** %6, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @F_ROOTDIR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.file*, %struct.file** %6, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %81

77:                                               ; preds = %71, %64
  %78 = load %struct.file*, %struct.file** %6, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = load %struct.open_file*, %struct.open_file** %4, align 8
  %83 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i8* @rrip_lookup_name(%struct.open_file* %82, %struct.iso_directory_record* %83, i32 %84, i64* %10)
  store i8* %85, i8** %14, align 8
  br label %87

86:                                               ; preds = %57
  store i8* null, i8** %14, align 8
  br label %87

87:                                               ; preds = %86, %81
  %88 = load i8*, i8** %14, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %122

90:                                               ; preds = %87
  %91 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %92 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @isonum_711(i32 %93)
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %10, align 8
  %96 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %97 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp eq i64 %99, 1
  br i1 %100, label %101, label %121

101:                                              ; preds = %90
  %102 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %103 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  br label %120

110:                                              ; preds = %101
  %111 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %112 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i64 2, i64* %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %119

119:                                              ; preds = %118, %110
  br label %120

120:                                              ; preds = %119, %109
  br label %121

121:                                              ; preds = %120, %90
  br label %122

122:                                              ; preds = %121, %87
  %123 = load i32, i32* @MAXNAMLEN, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = sub i64 32, %125
  %127 = load i64, i64* %10, align 8
  %128 = add i64 %126, %127
  %129 = add i64 %128, 1
  store i64 %129, i64* %9, align 8
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, 3
  %132 = and i64 %131, -4
  store i64 %132, i64* %9, align 8
  %133 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %134 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @isonum_733(i32 %135)
  %137 = load %struct.dirent*, %struct.dirent** %5, align 8
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.dirent*, %struct.dirent** %5, align 8
  %141 = getelementptr inbounds %struct.dirent, %struct.dirent* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %143 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @isonum_711(i32 %144)
  %146 = and i32 %145, 2
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %122
  %149 = load i32, i32* @DT_DIR, align 4
  %150 = load %struct.dirent*, %struct.dirent** %5, align 8
  %151 = getelementptr inbounds %struct.dirent, %struct.dirent* %150, i32 0, i32 3
  store i32 %149, i32* %151, align 8
  br label %156

152:                                              ; preds = %122
  %153 = load i32, i32* @DT_REG, align 4
  %154 = load %struct.dirent*, %struct.dirent** %5, align 8
  %155 = getelementptr inbounds %struct.dirent, %struct.dirent* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i64, i64* %10, align 8
  %158 = load %struct.dirent*, %struct.dirent** %5, align 8
  %159 = getelementptr inbounds %struct.dirent, %struct.dirent* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  %160 = load i8*, i8** %14, align 8
  %161 = load %struct.dirent*, %struct.dirent** %5, align 8
  %162 = getelementptr inbounds %struct.dirent, %struct.dirent* %161, i32 0, i32 2
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.dirent*, %struct.dirent** %5, align 8
  %165 = getelementptr inbounds %struct.dirent, %struct.dirent* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @bcopy(i8* %160, i64* %163, i64 %166)
  %168 = load %struct.dirent*, %struct.dirent** %5, align 8
  %169 = getelementptr inbounds %struct.dirent, %struct.dirent* %168, i32 0, i32 2
  %170 = load i64*, i64** %169, align 8
  %171 = load %struct.dirent*, %struct.dirent** %5, align 8
  %172 = getelementptr inbounds %struct.dirent, %struct.dirent* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i64, i64* %170, i64 %173
  store i64 0, i64* %174, align 8
  %175 = load %struct.iso_directory_record*, %struct.iso_directory_record** %7, align 8
  %176 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @isonum_711(i32 %177)
  %179 = load %struct.file*, %struct.file** %6, align 8
  %180 = getelementptr inbounds %struct.file, %struct.file* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, %178
  store i32 %182, i32* %180, align 4
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %156, %35, %28
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @buf_read_file(%struct.open_file*, i8**, i64*) #1

declare dso_local i32 @isonum_711(i32) #1

declare dso_local i8* @rrip_lookup_name(%struct.open_file*, %struct.iso_directory_record*, i32, i64*) #1

declare dso_local i32 @isonum_733(i32) #1

declare dso_local i32 @bcopy(i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
