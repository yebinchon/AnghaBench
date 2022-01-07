; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry_header_ustar = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8*)* @checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum(%struct.archive_read* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_entry_header_ustar*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %15, %struct.archive_entry_header_ustar** %7, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %43, %2
  %17 = load i64, i64* %10, align 8
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %19, label %46

19:                                               ; preds = %16
  %20 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %7, align 8
  %21 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i64, i64* %10, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %11, align 1
  %26 = load i8, i8* %11, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 32
  br i1 %28, label %29, label %42

29:                                               ; preds = %19
  %30 = load i8, i8* %11, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp slt i32 %35, 48
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8, i8* %11, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sgt i32 %39, 55
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %142

42:                                               ; preds = %37, %29, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %7, align 8
  %48 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @tar_atol(i8* %49, i32 8)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %52

52:                                               ; preds = %63, %46
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %53, 148
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %55
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %52

66:                                               ; preds = %52
  br label %67

67:                                               ; preds = %73, %66
  %68 = load i64, i64* %10, align 8
  %69 = icmp ult i64 %68, 156
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 32
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %10, align 8
  br label %67

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %88, %76
  %78 = load i64, i64* %10, align 8
  %79 = icmp ult i64 %78, 512
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %77

91:                                               ; preds = %77
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %142

96:                                               ; preds = %91
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  br label %97

97:                                               ; preds = %108, %96
  %98 = load i64, i64* %10, align 8
  %99 = icmp ult i64 %98, 148
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load i8*, i8** %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %100
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %97

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %118, %111
  %113 = load i64, i64* %10, align 8
  %114 = icmp ult i64 %113, 156
  br i1 %114, label %115, label %121

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 32
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %115
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %112

121:                                              ; preds = %112
  br label %122

122:                                              ; preds = %133, %121
  %123 = load i64, i64* %10, align 8
  %124 = icmp ult i64 %123, 512
  br i1 %124, label %125, label %136

125:                                              ; preds = %122
  %126 = load i8*, i8** %6, align 8
  %127 = load i64, i64* %10, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %125
  %134 = load i64, i64* %10, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %10, align 8
  br label %122

136:                                              ; preds = %122
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 1, i32* %3, align 4
  br label %142

141:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %140, %95, %41
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @tar_atol(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
