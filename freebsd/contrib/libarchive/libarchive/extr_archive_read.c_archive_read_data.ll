; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i64, i64, i64, i8*, i32, i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Encountered out-of-order sparse blocks\00", align 1
@ARCHIVE_RETRY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @archive_read_data(%struct.archive* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.archive*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.archive*, %struct.archive** %5, align 8
  store %struct.archive* %14, %struct.archive** %8, align 8
  store i64 0, i64* %11, align 8
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %9, align 8
  br label %16

16:                                               ; preds = %175, %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %176

19:                                               ; preds = %16
  %20 = load %struct.archive*, %struct.archive** %8, align 8
  %21 = getelementptr inbounds %struct.archive, %struct.archive* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.archive*, %struct.archive** %8, align 8
  %24 = getelementptr inbounds %struct.archive, %struct.archive* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %19
  %28 = load %struct.archive*, %struct.archive** %8, align 8
  %29 = getelementptr inbounds %struct.archive, %struct.archive* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %27
  %33 = load %struct.archive*, %struct.archive** %8, align 8
  %34 = getelementptr inbounds %struct.archive, %struct.archive* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load %struct.archive*, %struct.archive** %8, align 8
  %37 = getelementptr inbounds %struct.archive, %struct.archive* %36, i32 0, i32 4
  store i32 1, i32* %37, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.archive*, %struct.archive** %8, align 8
  %40 = getelementptr inbounds %struct.archive, %struct.archive* %39, i32 0, i32 5
  store i64 %38, i64* %40, align 8
  %41 = load %struct.archive*, %struct.archive** %8, align 8
  %42 = load %struct.archive*, %struct.archive** %8, align 8
  %43 = getelementptr inbounds %struct.archive, %struct.archive* %42, i32 0, i32 2
  %44 = load %struct.archive*, %struct.archive** %8, align 8
  %45 = getelementptr inbounds %struct.archive, %struct.archive* %44, i32 0, i32 0
  %46 = call i32 @archive_read_data_block(%struct.archive* %41, i8** %10, i64* %43, i64* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load %struct.archive*, %struct.archive** %8, align 8
  %49 = getelementptr inbounds %struct.archive, %struct.archive* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @ARCHIVE_EOF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %32
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %4, align 8
  br label %182

55:                                               ; preds = %32
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @ARCHIVE_OK, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %4, align 8
  br label %182

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %27, %19
  %64 = load %struct.archive*, %struct.archive** %8, align 8
  %65 = getelementptr inbounds %struct.archive, %struct.archive* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.archive*, %struct.archive** %8, align 8
  %68 = getelementptr inbounds %struct.archive, %struct.archive* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.archive*, %struct.archive** %8, align 8
  %73 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %74 = call i32 @archive_set_error(%struct.archive* %72, i32 %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load i64, i64* @ARCHIVE_RETRY, align 8
  store i64 %75, i64* %4, align 8
  br label %182

76:                                               ; preds = %63
  %77 = load %struct.archive*, %struct.archive** %8, align 8
  %78 = getelementptr inbounds %struct.archive, %struct.archive* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = add nsw i64 %79, %80
  %82 = load %struct.archive*, %struct.archive** %8, align 8
  %83 = getelementptr inbounds %struct.archive, %struct.archive* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %12, align 8
  br label %106

88:                                               ; preds = %76
  %89 = load %struct.archive*, %struct.archive** %8, align 8
  %90 = getelementptr inbounds %struct.archive, %struct.archive* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.archive*, %struct.archive** %8, align 8
  %93 = getelementptr inbounds %struct.archive, %struct.archive* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %88
  %97 = load %struct.archive*, %struct.archive** %8, align 8
  %98 = getelementptr inbounds %struct.archive, %struct.archive* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.archive*, %struct.archive** %8, align 8
  %101 = getelementptr inbounds %struct.archive, %struct.archive* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  store i64 %103, i64* %12, align 8
  br label %105

104:                                              ; preds = %88
  store i64 0, i64* %12, align 8
  br label %105

105:                                              ; preds = %104, %96
  br label %106

106:                                              ; preds = %105, %86
  %107 = load i8*, i8** %9, align 8
  %108 = load i64, i64* %12, align 8
  %109 = call i32 @memset(i8* %107, i32 0, i64 %108)
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* %7, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %7, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load %struct.archive*, %struct.archive** %8, align 8
  %115 = getelementptr inbounds %struct.archive, %struct.archive* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, %113
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 %118
  store i8* %120, i8** %9, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %11, align 8
  %124 = load i64, i64* %7, align 8
  %125 = icmp ugt i64 %124, 0
  br i1 %125, label %126, label %175

126:                                              ; preds = %106
  %127 = load %struct.archive*, %struct.archive** %8, align 8
  %128 = getelementptr inbounds %struct.archive, %struct.archive* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i64, i64* %7, align 8
  store i64 %134, i64* %12, align 8
  br label %135

135:                                              ; preds = %133, %126
  %136 = load i64, i64* %12, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load i8*, i8** %9, align 8
  %140 = load %struct.archive*, %struct.archive** %8, align 8
  %141 = getelementptr inbounds %struct.archive, %struct.archive* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = call i32 @memcpy(i8* %139, i8* %142, i64 %143)
  br label %145

145:                                              ; preds = %138, %135
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %7, align 8
  %148 = sub i64 %147, %146
  store i64 %148, i64* %7, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load %struct.archive*, %struct.archive** %8, align 8
  %151 = getelementptr inbounds %struct.archive, %struct.archive* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr i8, i8* %152, i64 %149
  store i8* %153, i8** %151, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load %struct.archive*, %struct.archive** %8, align 8
  %156 = getelementptr inbounds %struct.archive, %struct.archive* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = sub i64 %157, %154
  store i64 %158, i64* %156, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load %struct.archive*, %struct.archive** %8, align 8
  %161 = getelementptr inbounds %struct.archive, %struct.archive* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load %struct.archive*, %struct.archive** %8, align 8
  %166 = getelementptr inbounds %struct.archive, %struct.archive* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load i64, i64* %12, align 8
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 %169
  store i8* %171, i8** %9, align 8
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %11, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %11, align 8
  br label %175

175:                                              ; preds = %145, %106
  br label %16

176:                                              ; preds = %16
  %177 = load %struct.archive*, %struct.archive** %8, align 8
  %178 = getelementptr inbounds %struct.archive, %struct.archive* %177, i32 0, i32 4
  store i32 0, i32* %178, align 8
  %179 = load %struct.archive*, %struct.archive** %8, align 8
  %180 = getelementptr inbounds %struct.archive, %struct.archive* %179, i32 0, i32 5
  store i64 0, i64* %180, align 8
  %181 = load i64, i64* %11, align 8
  store i64 %181, i64* %4, align 8
  br label %182

182:                                              ; preds = %176, %71, %59, %53
  %183 = load i64, i64* %4, align 8
  ret i64 %183
}

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
