; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_read_mac_metadata_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_read_mac_metadata_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i64*)* @read_mac_metadata_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_mac_metadata_blob(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %20 = call i32* @archive_entry_pathname_w(%struct.archive_entry* %19)
  store i32* %20, i32** %16, align 8
  store i32* %20, i32** %17, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %63

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %42, %23
  %25 = load i32*, i32** %16, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load i32*, i32** %16, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 47
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32*, i32** %16, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32*, i32** %16, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %17, align 8
  br label %41

41:                                               ; preds = %38, %33, %28
  br label %42

42:                                               ; preds = %41
  %43 = load i32*, i32** %16, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %16, align 8
  br label %24

45:                                               ; preds = %24
  %46 = load i32*, i32** %17, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 46
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = load i32*, i32** %17, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 95
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %17, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %50, %45
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %61, i32* %6, align 4
  br label %147

62:                                               ; preds = %55
  br label %116

63:                                               ; preds = %5
  %64 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %65 = call i8* @archive_entry_pathname(%struct.archive_entry* %64)
  store i8* %65, i8** %14, align 8
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %69, i32* %6, align 4
  br label %147

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %92, %70
  %72 = load i8*, i8** %14, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %71
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 47
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i8*, i8** %14, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8* %90, i8** %15, align 8
  br label %91

91:                                               ; preds = %88, %82, %76
  br label %92

92:                                               ; preds = %91
  %93 = load i8*, i8** %14, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %14, align 8
  br label %71

95:                                               ; preds = %71
  %96 = load i8*, i8** %15, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 46
  br i1 %100, label %113, label %101

101:                                              ; preds = %95
  %102 = load i8*, i8** %15, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 95
  br i1 %106, label %113, label %107

107:                                              ; preds = %101
  %108 = load i8*, i8** %15, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107, %101, %95
  %114 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %114, i32* %6, align 4
  br label %147

115:                                              ; preds = %107
  br label %116

116:                                              ; preds = %115, %62
  %117 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %118 = call i32 @archive_entry_size(%struct.archive_entry* %117)
  store i32 %118, i32* %12, align 4
  %119 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = call i8* @__archive_read_ahead(%struct.archive_read* %119, i64 %121, i32* null)
  store i8* %122, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %116
  %126 = load i64*, i64** %11, align 8
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %127, i32* %6, align 4
  br label %147

128:                                              ; preds = %116
  %129 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 @archive_entry_copy_mac_metadata(%struct.archive_entry* %129, i8* %130, i64 %132)
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 511
  %136 = and i32 %135, -512
  %137 = sext i32 %136 to i64
  %138 = load i64*, i64** %11, align 8
  store i64 %137, i64* %138, align 8
  %139 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %140 = load i64*, i64** %11, align 8
  %141 = call i32 @tar_flush_unconsumed(%struct.archive_read* %139, i64* %140)
  %142 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %143 = load %struct.tar*, %struct.tar** %8, align 8
  %144 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %145 = load i64*, i64** %11, align 8
  %146 = call i32 @tar_read_header(%struct.archive_read* %142, %struct.tar* %143, %struct.archive_entry* %144, i64* %145)
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %128, %125, %113, %68, %60
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32* @archive_entry_pathname_w(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @archive_entry_copy_mac_metadata(%struct.archive_entry*, i8*, i64) #1

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i32 @tar_read_header(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
