; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_str_utf16be.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_str_utf16be.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@VDC_UCS2 = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for UTF-16BE\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i8*, i64, i32, i32)* @set_str_utf16be to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_str_utf16be(%struct.archive_write* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_write*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.iso9660*, align 8
  %18 = alloca i32*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i64, i64* %11, align 8
  %24 = and i64 %23, 1
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  store i32 1, i32* %16, align 4
  %27 = load i64, i64* %11, align 8
  %28 = and i64 %27, -2
  store i64 %28, i64* %11, align 8
  br label %30

29:                                               ; preds = %22
  store i32 0, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @VDC_UCS2, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %36 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %35, i32 0, i32 1
  %37 = load %struct.iso9660*, %struct.iso9660** %36, align 8
  store %struct.iso9660* %37, %struct.iso9660** %17, align 8
  %38 = load %struct.iso9660*, %struct.iso9660** %17, align 8
  %39 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %38, i32 0, i32 0
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load %struct.iso9660*, %struct.iso9660** %17, align 8
  %44 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @archive_strncpy_l(%struct.TYPE_2__* %39, i8* %40, i32 %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %34
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %54 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %53, i32 0, i32 0
  %55 = load i64, i64* @ENOMEM, align 8
  %56 = call i32 @archive_set_error(i32* %54, i64 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %57, i32* %7, align 4
  br label %143

58:                                               ; preds = %48, %34
  %59 = load %struct.iso9660*, %struct.iso9660** %17, align 8
  %60 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = load i64, i64* %11, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i64, i64* %11, align 8
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %66, %58
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.iso9660*, %struct.iso9660** %17, align 8
  %71 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %14, align 8
  %75 = call i32 @memcpy(i8* %69, i8* %73, i64 %74)
  br label %98

76:                                               ; preds = %30
  %77 = load i8*, i8** %10, align 8
  %78 = bitcast i8* %77 to i32*
  store i32* %78, i32** %18, align 8
  store i64 0, i64* %14, align 8
  br label %79

79:                                               ; preds = %84, %76
  %80 = load i32*, i32** %18, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %18, align 8
  %82 = load i32, i32* %80, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 2
  store i64 %86, i64* %14, align 8
  br label %79

87:                                               ; preds = %79
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ugt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %14, align 8
  br label %93

93:                                               ; preds = %91, %87
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  br label %98

98:                                               ; preds = %93, %68
  store i64 0, i64* %15, align 8
  br label %99

99:                                               ; preds = %116, %98
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %14, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @joliet_allowed_char(i8 zeroext %106, i8 zeroext %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %103
  %113 = load i8*, i8** %9, align 8
  %114 = call i32 @archive_be16enc(i8* %113, i32 95)
  br label %115

115:                                              ; preds = %112, %103
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %15, align 8
  %118 = add i64 %117, 2
  store i64 %118, i64* %15, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 2
  store i8* %120, i8** %9, align 8
  br label %99

121:                                              ; preds = %99
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* %11, align 8
  %124 = sub i64 %123, %122
  store i64 %124, i64* %11, align 8
  br label %125

125:                                              ; preds = %128, %121
  %126 = load i64, i64* %11, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %12, align 4
  %131 = call i32 @archive_be16enc(i8* %129, i32 %130)
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 2
  store i8* %133, i8** %9, align 8
  %134 = load i64, i64* %11, align 8
  %135 = sub i64 %134, 2
  store i64 %135, i64* %11, align 8
  br label %125

136:                                              ; preds = %125
  %137 = load i32, i32* %16, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i8*, i8** %9, align 8
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %141, %52
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i64 @archive_strncpy_l(%struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @joliet_allowed_char(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @archive_be16enc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
