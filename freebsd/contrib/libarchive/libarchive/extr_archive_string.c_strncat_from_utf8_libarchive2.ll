; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_strncat_from_utf8_libarchive2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_strncat_from_utf8_libarchive2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i64, i8*, i32 }
%struct.archive_string_conv = type { i32 }

@MB_CUR_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, i8*, i64, %struct.archive_string_conv*)* @strncat_from_utf8_libarchive2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strncat_from_utf8_libarchive2(%struct.archive_string* %0, i8* %1, i64 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_string*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  %16 = call i64 @wctomb(i8* null, i32 0)
  %17 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %18 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %19 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %20 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = add i64 %21, %22
  %24 = add i64 %23, 1
  %25 = call i32* @archive_string_ensure(%struct.archive_string* %18, i64 %24)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %150

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %10, align 8
  %30 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %31 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %34 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  store i8* %36, i8** %12, align 8
  %37 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %38 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %41 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load i8*, i8** @MB_CUR_MAX, align 8
  %46 = ptrtoint i8* %44 to i64
  %47 = ptrtoint i8* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sub nsw i64 %48, 1
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %13, align 8
  br label %51

51:                                               ; preds = %128, %28
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i32 @_utf8_to_unicode(i64* %14, i8* %52, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %133

56:                                               ; preds = %51
  %57 = load i8*, i8** %12, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = icmp uge i8* %57, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %56
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %63 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %61 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %69 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %71 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %72 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = mul i64 %74, 2
  %76 = add i64 %73, %75
  %77 = add i64 %76, 1
  %78 = call i32* @archive_string_ensure(%struct.archive_string* %70, i64 %77)
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  br label %150

81:                                               ; preds = %60
  %82 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %83 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %86 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  store i8* %88, i8** %12, align 8
  %89 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %90 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %93 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %91, i64 %95
  %97 = load i8*, i8** @MB_CUR_MAX, align 8
  %98 = ptrtoint i8* %96 to i64
  %99 = ptrtoint i8* %97 to i64
  %100 = sub i64 %98, %99
  %101 = sub nsw i64 %100, 1
  %102 = inttoptr i64 %101 to i8*
  store i8* %102, i8** %13, align 8
  br label %103

103:                                              ; preds = %81, %56
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %107, -1
  store i32 %108, i32* %11, align 4
  store i32 63, i32* %15, align 4
  br label %112

109:                                              ; preds = %103
  %110 = load i64, i64* %14, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load i32, i32* %11, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %10, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %8, align 8
  %120 = sub i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i64 @wctomb(i8* %121, i32 %122)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  store i32 -1, i32* %5, align 4
  br label %150

128:                                              ; preds = %112
  %129 = load i32, i32* %11, align 4
  %130 = load i8*, i8** %12, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %12, align 8
  br label %51

133:                                              ; preds = %51
  %134 = load i8*, i8** %12, align 8
  %135 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %136 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = ptrtoint i8* %134 to i64
  %139 = ptrtoint i8* %137 to i64
  %140 = sub i64 %138, %139
  %141 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %142 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  %143 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %144 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.archive_string*, %struct.archive_string** %6, align 8
  %147 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i8, i8* %145, i64 %148
  store i8 0, i8* %149, align 1
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %133, %127, %80, %27
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i64 @wctomb(i8*, i32) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @_utf8_to_unicode(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
