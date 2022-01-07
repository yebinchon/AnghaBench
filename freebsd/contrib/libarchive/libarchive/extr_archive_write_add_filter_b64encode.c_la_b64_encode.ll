; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_b64encode.c_la_b64_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_b64encode.c_la_b64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i32 }

@base64 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_string*, i8*, i64)* @la_b64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @la_b64_encode(%struct.archive_string* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %76, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp uge i64 %9, 3
  br i1 %10, label %11, label %81

11:                                               ; preds = %8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = ashr i32 %15, 2
  store i32 %16, i32* %7, align 4
  %17 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %18 = load i8*, i8** @base64, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i32 @archive_strappend_char(%struct.archive_string* %17, i8 signext %22)
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 3
  %29 = shl i32 %28, 4
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 240
  %35 = ashr i32 %34, 4
  %36 = or i32 %29, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %38 = load i8*, i8** @base64, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @archive_strappend_char(%struct.archive_string* %37, i8 signext %42)
  %44 = load i8*, i8** %5, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, 15
  %49 = shl i32 %48, 2
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, 192
  %55 = ashr i32 %54, 6
  %56 = or i32 %49, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %58 = load i8*, i8** @base64, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = call i32 @archive_strappend_char(%struct.archive_string* %57, i8 signext %62)
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 63
  store i32 %68, i32* %7, align 4
  %69 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %70 = load i8*, i8** @base64, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i32 @archive_strappend_char(%struct.archive_string* %69, i8 signext %74)
  br label %76

76:                                               ; preds = %11
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 3
  store i8* %78, i8** %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub i64 %79, 3
  store i64 %80, i64* %6, align 8
  br label %8

81:                                               ; preds = %8
  %82 = load i64, i64* %6, align 8
  %83 = icmp ugt i64 %82, 0
  br i1 %83, label %84, label %149

84:                                               ; preds = %81
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = ashr i32 %88, 2
  store i32 %89, i32* %7, align 4
  %90 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %91 = load i8*, i8** @base64, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = call i32 @archive_strappend_char(%struct.archive_string* %90, i8 signext %95)
  %97 = load i8*, i8** %5, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 3
  %102 = shl i32 %101, 4
  store i32 %102, i32* %7, align 4
  %103 = load i64, i64* %6, align 8
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %117

105:                                              ; preds = %84
  %106 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %107 = load i8*, i8** @base64, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = call i32 @archive_strappend_char(%struct.archive_string* %106, i8 signext %111)
  %113 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %114 = call i32 @archive_strappend_char(%struct.archive_string* %113, i8 signext 61)
  %115 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %116 = call i32 @archive_strappend_char(%struct.archive_string* %115, i8 signext 61)
  br label %148

117:                                              ; preds = %84
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = and i32 %121, 240
  %123 = ashr i32 %122, 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %127 = load i8*, i8** @base64, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = call i32 @archive_strappend_char(%struct.archive_string* %126, i8 signext %131)
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, 15
  %138 = shl i32 %137, 2
  store i32 %138, i32* %7, align 4
  %139 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %140 = load i8*, i8** @base64, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = call i32 @archive_strappend_char(%struct.archive_string* %139, i8 signext %144)
  %146 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %147 = call i32 @archive_strappend_char(%struct.archive_string* %146, i8 signext 61)
  br label %148

148:                                              ; preds = %117, %105
  br label %149

149:                                              ; preds = %148, %81
  %150 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %151 = call i32 @archive_strappend_char(%struct.archive_string* %150, i8 signext 10)
  ret void
}

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
