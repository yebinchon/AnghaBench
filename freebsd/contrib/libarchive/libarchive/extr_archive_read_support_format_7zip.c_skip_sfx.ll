; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_skip_sfx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_skip_sfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct._7zip = type { i64 }

@SFX_MIN_ADDR = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@SFX_MAX_ADDR = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't find out 7-Zip header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i64)* @skip_sfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skip_sfx(%struct.archive_read* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._7zip*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @SFX_MIN_ADDR, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %20 = load i64, i64* @SFX_MIN_ADDR, align 8
  %21 = call i32 @__archive_read_consume(%struct.archive_read* %19, i64 %20)
  br label %31

22:                                               ; preds = %2
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = load i64, i64* @SFX_MIN_ADDR, align 8
  %25 = load i32, i32* @SEEK_SET, align 4
  %26 = call i64 @__archive_read_seek(%struct.archive_read* %23, i64 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %3, align 4
  br label %123

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %18
  store i64 0, i64* %10, align 8
  store i64 1, i64* %12, align 8
  br label %32

32:                                               ; preds = %115, %56, %52, %31
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %12, align 8
  %35 = add i64 %33, %34
  %36 = load i64, i64* @SFX_MAX_ADDR, align 8
  %37 = load i64, i64* @SFX_MIN_ADDR, align 8
  %38 = sub nsw i64 %36, %37
  %39 = icmp ule i64 %35, %38
  br i1 %39, label %40, label %116

40:                                               ; preds = %32
  %41 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i8* @__archive_read_ahead(%struct.archive_read* %41, i64 %42, i64* %11)
  store i8* %43, i8** %6, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i64, i64* %12, align 8
  %48 = ashr i64 %47, 1
  store i64 %48, i64* %12, align 8
  %49 = load i64, i64* %12, align 8
  %50 = icmp slt i64 %49, 64
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %117

52:                                               ; preds = %46
  br label %32

53:                                               ; preds = %40
  %54 = load i64, i64* %11, align 8
  %55 = icmp slt i64 %54, 6
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i64 4096, i64* %12, align 8
  br label %32

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %11, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %95, %57
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 32
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @check_7zip_header_in_sfx(i8* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %67
  %73 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %74 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct._7zip*
  store %struct._7zip* %78, %struct._7zip** %14, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  store i64 %83, i64* %9, align 8
  %84 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @__archive_read_consume(%struct.archive_read* %84, i64 %85)
  %87 = load i64, i64* @SFX_MIN_ADDR, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %87, %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %89, %90
  %92 = load %struct._7zip*, %struct._7zip** %14, align 8
  %93 = getelementptr inbounds %struct._7zip, %struct._7zip* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %94, i32* %3, align 4
  br label %123

95:                                               ; preds = %67
  %96 = load i32, i32* %13, align 4
  %97 = load i8*, i8** %7, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %7, align 8
  br label %62

100:                                              ; preds = %62
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %6, align 8
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  store i64 %105, i64* %9, align 8
  %106 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @__archive_read_consume(%struct.archive_read* %106, i64 %107)
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %10, align 8
  %112 = load i64, i64* %12, align 8
  %113 = icmp eq i64 %112, 1
  br i1 %113, label %114, label %115

114:                                              ; preds = %100
  store i64 4096, i64* %12, align 8
  br label %115

115:                                              ; preds = %114, %100
  br label %32

116:                                              ; preds = %32
  br label %117

117:                                              ; preds = %116, %51
  %118 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %119 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %118, i32 0, i32 0
  %120 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %121 = call i32 @archive_set_error(i32* %119, i32 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %72, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

declare dso_local i64 @__archive_read_seek(%struct.archive_read*, i64, i32) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i64*) #1

declare dso_local i32 @check_7zip_header_in_sfx(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
