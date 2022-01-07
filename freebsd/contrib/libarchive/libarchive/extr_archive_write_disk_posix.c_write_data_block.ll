; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_write_data_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_write_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Attempt to write to an empty file\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_SPARSE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Seek failed\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Write failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*, i8*, i64)* @write_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_data_block(%struct.archive_write_disk* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write_disk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %19, i32* %4, align 4
  br label %220

20:                                               ; preds = %3
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %27 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %20
  %31 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %32 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %31, i32 0, i32 6
  %33 = call i32 @archive_set_error(i32* %32, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %34, i32* %4, align 4
  br label %220

35:                                               ; preds = %25
  %36 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %37 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ARCHIVE_EXTRACT_SPARSE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  store i32 16384, i32* %10, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %45 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %50 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %55 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %60 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %63 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %61, %64
  store i64 %65, i64* %7, align 8
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %58, %48, %43
  br label %67

67:                                               ; preds = %190, %66
  %68 = load i64, i64* %7, align 8
  %69 = icmp ugt i64 %68, 0
  br i1 %69, label %70, label %215

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %145

76:                                               ; preds = %70
  %77 = load i8*, i8** %6, align 8
  store i8* %77, i8** %12, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %13, align 8
  br label %81

81:                                               ; preds = %92, %76
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = icmp ult i8* %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i8*, i8** %12, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %12, align 8
  br label %81

95:                                               ; preds = %90, %81
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %102 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, %100
  store i64 %104, i64* %102, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = load i64, i64* %7, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %7, align 8
  %112 = load i8*, i8** %12, align 8
  store i8* %112, i8** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %95
  br label %215

116:                                              ; preds = %95
  %117 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %118 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = udiv i64 %119, %121
  %123 = add i64 %122, 1
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %123, %125
  store i64 %126, i64* %14, align 8
  %127 = load i64, i64* %7, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %11, align 4
  %129 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %130 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = add i64 %131, %133
  %135 = load i64, i64* %14, align 8
  %136 = icmp ugt i64 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %116
  %138 = load i64, i64* %14, align 8
  %139 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %140 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = sub i64 %138, %141
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %11, align 4
  br label %144

144:                                              ; preds = %137, %116
  br label %145

145:                                              ; preds = %144, %73
  %146 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %147 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %150 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %148, %151
  br i1 %152, label %153, label %175

153:                                              ; preds = %145
  %154 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %155 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %158 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @SEEK_SET, align 4
  %161 = call i64 @lseek(i64 %156, i64 %159, i32 %160)
  %162 = icmp slt i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %165 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %164, i32 0, i32 6
  %166 = load i32, i32* @errno, align 4
  %167 = call i32 @archive_set_error(i32* %165, i32 %166, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %168 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %168, i32* %4, align 4
  br label %220

169:                                              ; preds = %153
  %170 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %171 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %174 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %173, i32 0, i32 4
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %169, %145
  %176 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %177 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i8*, i8** %6, align 8
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @write(i64 %178, i8* %179, i32 %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %175
  %185 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %186 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %185, i32 0, i32 6
  %187 = load i32, i32* @errno, align 4
  %188 = call i32 @archive_set_error(i32* %186, i32 %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %189 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %189, i32* %4, align 4
  br label %220

190:                                              ; preds = %175
  %191 = load i32, i32* %9, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i8, i8* %192, i64 %193
  store i8* %194, i8** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %7, align 8
  %198 = sub i64 %197, %196
  store i64 %198, i64* %7, align 8
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %201 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %207 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = add i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %211 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.archive_write_disk*, %struct.archive_write_disk** %5, align 8
  %214 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %213, i32 0, i32 4
  store i64 %212, i64* %214, align 8
  br label %67

215:                                              ; preds = %115, %67
  %216 = load i64, i64* %8, align 8
  %217 = load i64, i64* %7, align 8
  %218 = sub i64 %216, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %215, %184, %163, %30, %18
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @lseek(i64, i64, i32) #1

declare dso_local i32 @write(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
