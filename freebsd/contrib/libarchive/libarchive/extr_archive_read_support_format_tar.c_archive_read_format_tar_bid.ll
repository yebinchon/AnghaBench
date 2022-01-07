; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_bid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_archive_read_format_tar_bid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry_header_ustar = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ustar\00\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ustar \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" \00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i32)* @archive_read_format_tar_bid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_tar_bid(%struct.archive_read* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.archive_entry_header_ustar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %11 = call i8* @__archive_read_ahead(%struct.archive_read* %10, i32 512, i32* null)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %173

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @archive_block_is_null(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 10, i32* %3, align 4
  br label %173

26:                                               ; preds = %21, %15
  %27 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @checksum(%struct.archive_read* %27, i8* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %173

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 48
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %36, %struct.archive_entry_header_ustar** %8, align 8
  %37 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %38 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @memcmp(i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %44 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @memcmp(i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 56
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %42, %32
  %52 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %53 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %52, i32 0, i32 9
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @memcmp(i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %59 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @memcmp(i32 %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 56
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %57, %51
  %67 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %68 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %66
  %75 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %76 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sge i32 %80, 48
  br i1 %81, label %82, label %90

82:                                               ; preds = %74
  %83 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %84 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp sle i32 %88, 57
  br i1 %89, label %123, label %90

90:                                               ; preds = %82, %74
  %91 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %92 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 65
  br i1 %97, label %98, label %106

98:                                               ; preds = %90
  %99 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %100 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sle i32 %104, 90
  br i1 %105, label %123, label %106

106:                                              ; preds = %98, %90
  %107 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %108 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sge i32 %112, 97
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %116 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 0
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp sle i32 %120, 122
  br i1 %121, label %123, label %122

122:                                              ; preds = %114, %106
  store i32 0, i32* %3, align 4
  br label %173

123:                                              ; preds = %114, %98, %82, %66
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 2
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %171

128:                                              ; preds = %123
  %129 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %130 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @validate_number_field(i32 %131, i32 4)
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %170, label %134

134:                                              ; preds = %128
  %135 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %136 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @validate_number_field(i32 %137, i32 4)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %170, label %140

140:                                              ; preds = %134
  %141 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %142 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @validate_number_field(i32 %143, i32 4)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %140
  %147 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %148 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @validate_number_field(i32 %149, i32 4)
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %170, label %152

152:                                              ; preds = %146
  %153 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %154 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = call i64 @validate_number_field(i32 %155, i32 4)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %170, label %158

158:                                              ; preds = %152
  %159 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %160 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @validate_number_field(i32 %161, i32 4)
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %8, align 8
  %166 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @validate_number_field(i32 %167, i32 4)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164, %158, %152, %146, %140, %134, %128
  store i32 0, i32* %6, align 4
  br label %171

171:                                              ; preds = %170, %164, %123
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %122, %31, %25, %14
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @archive_block_is_null(i8*) #1

declare dso_local i32 @checksum(%struct.archive_read*, i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i64 @validate_number_field(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
