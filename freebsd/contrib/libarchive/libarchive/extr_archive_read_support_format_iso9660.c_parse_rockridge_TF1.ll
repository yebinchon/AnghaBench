; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_rockridge_TF1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_rockridge_TF1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_info*, i8*, i32)* @parse_rockridge_TF1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_rockridge_TF1(%struct.file_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %157

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  store i8 %14, i8* %7, align 1
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %90

23:                                               ; preds = %11
  %24 = load i8, i8* %7, align 1
  %25 = sext i8 %24 to i32
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 17
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.file_info*, %struct.file_info** %4, align 8
  %33 = getelementptr inbounds %struct.file_info, %struct.file_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @isodate17(i8* %34)
  %36 = load %struct.file_info*, %struct.file_info** %4, align 8
  %37 = getelementptr inbounds %struct.file_info, %struct.file_info* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 17
  store i8* %39, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %40, 17
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %31, %28, %23
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 2
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 17
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %5, align 8
  %52 = call i8* @isodate17(i8* %51)
  %53 = load %struct.file_info*, %struct.file_info** %4, align 8
  %54 = getelementptr inbounds %struct.file_info, %struct.file_info* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 17
  store i8* %56, i8** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 17
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %50, %47, %42
  %60 = load i8, i8* %7, align 1
  %61 = sext i8 %60 to i32
  %62 = and i32 %61, 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = icmp sge i32 %65, 17
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = call i8* @isodate17(i8* %68)
  %70 = load %struct.file_info*, %struct.file_info** %4, align 8
  %71 = getelementptr inbounds %struct.file_info, %struct.file_info* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 17
  store i8* %73, i8** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sub nsw i32 %74, 17
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %67, %64, %59
  %77 = load i8, i8* %7, align 1
  %78 = sext i8 %77 to i32
  %79 = and i32 %78, 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %82, 17
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i8*, i8** %5, align 8
  %86 = call i8* @isodate17(i8* %85)
  %87 = load %struct.file_info*, %struct.file_info** %4, align 8
  %88 = getelementptr inbounds %struct.file_info, %struct.file_info* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %84, %81, %76
  br label %157

90:                                               ; preds = %11
  %91 = load i8, i8* %7, align 1
  %92 = sext i8 %91 to i32
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  %97 = icmp sge i32 %96, 7
  br i1 %97, label %98, label %109

98:                                               ; preds = %95
  %99 = load %struct.file_info*, %struct.file_info** %4, align 8
  %100 = getelementptr inbounds %struct.file_info, %struct.file_info* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = call i8* @isodate7(i8* %101)
  %103 = load %struct.file_info*, %struct.file_info** %4, align 8
  %104 = getelementptr inbounds %struct.file_info, %struct.file_info* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 7
  store i8* %106, i8** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sub nsw i32 %107, 7
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %98, %95, %90
  %110 = load i8, i8* %7, align 1
  %111 = sext i8 %110 to i32
  %112 = and i32 %111, 2
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i32, i32* %6, align 4
  %116 = icmp sge i32 %115, 7
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i8*, i8** %5, align 8
  %119 = call i8* @isodate7(i8* %118)
  %120 = load %struct.file_info*, %struct.file_info** %4, align 8
  %121 = getelementptr inbounds %struct.file_info, %struct.file_info* %120, i32 0, i32 3
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  store i8* %123, i8** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sub nsw i32 %124, 7
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %117, %114, %109
  %127 = load i8, i8* %7, align 1
  %128 = sext i8 %127 to i32
  %129 = and i32 %128, 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = icmp sge i32 %132, 7
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i8*, i8** %5, align 8
  %136 = call i8* @isodate7(i8* %135)
  %137 = load %struct.file_info*, %struct.file_info** %4, align 8
  %138 = getelementptr inbounds %struct.file_info, %struct.file_info* %137, i32 0, i32 2
  store i8* %136, i8** %138, align 8
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 7
  store i8* %140, i8** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = sub nsw i32 %141, 7
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %134, %131, %126
  %144 = load i8, i8* %7, align 1
  %145 = sext i8 %144 to i32
  %146 = and i32 %145, 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  %150 = icmp sge i32 %149, 7
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i8*, i8** %5, align 8
  %153 = call i8* @isodate7(i8* %152)
  %154 = load %struct.file_info*, %struct.file_info** %4, align 8
  %155 = getelementptr inbounds %struct.file_info, %struct.file_info* %154, i32 0, i32 1
  store i8* %153, i8** %155, align 8
  br label %156

156:                                              ; preds = %151, %148, %143
  br label %157

157:                                              ; preds = %10, %156, %89
  ret void
}

declare dso_local i8* @isodate17(i8*) #1

declare dso_local i8* @isodate7(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
