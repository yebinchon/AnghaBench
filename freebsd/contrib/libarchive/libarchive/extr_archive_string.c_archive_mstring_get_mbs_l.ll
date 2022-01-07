; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_get_mbs_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_mstring_get_mbs_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_mstring = type { i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.archive_string_conv = type { i32 }

@AES_SET_MBS = common dso_local global i32 0, align 4
@AES_SET_WCS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_mstring_get_mbs_l(%struct.archive_mstring* %0, i8** %1, i64* %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_mstring*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.archive_mstring* %0, %struct.archive_mstring** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %13 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @AES_SET_MBS, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %4
  %19 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %20 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @AES_SET_WCS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %27 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %26, i32 0, i32 2
  %28 = call i32 @archive_string_empty(%struct.TYPE_7__* %27)
  %29 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %30 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %29, i32 0, i32 2
  %31 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %32 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %36 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @archive_string_append_from_wcs(%struct.TYPE_7__* %30, i32 %34, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %25
  %43 = load i32, i32* @AES_SET_MBS, align 4
  %44 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %45 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %55

48:                                               ; preds = %25
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @ENOMEM, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 -1, i32* %5, align 4
  br label %117

53:                                               ; preds = %48
  store i32 -1, i32* %11, align 4
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54, %42
  br label %56

56:                                               ; preds = %55, %18, %4
  %57 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %58 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @AES_SET_MBS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %108

63:                                               ; preds = %56
  %64 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %65 = icmp eq %struct.archive_string_conv* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %68 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8**, i8*** %7, align 8
  store i8* %70, i8** %71, align 8
  %72 = load i64*, i64** %8, align 8
  %73 = icmp ne i64* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %76 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %8, align 8
  store i64 %78, i64* %79, align 8
  br label %80

80:                                               ; preds = %74, %66
  store i32 0, i32* %5, align 4
  br label %117

81:                                               ; preds = %63
  %82 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %83 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %82, i32 0, i32 1
  %84 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %85 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %89 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %93 = call i32 @archive_strncpy_l(%struct.TYPE_7__* %83, i8* %87, i64 %91, %struct.archive_string_conv* %92)
  store i32 %93, i32* %11, align 4
  %94 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %95 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8**, i8*** %7, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = icmp ne i64* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %81
  %102 = load %struct.archive_mstring*, %struct.archive_mstring** %6, align 8
  %103 = getelementptr inbounds %struct.archive_mstring, %struct.archive_mstring* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %8, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %101, %81
  br label %115

108:                                              ; preds = %56
  %109 = load i8**, i8*** %7, align 8
  store i8* null, i8** %109, align 8
  %110 = load i64*, i64** %8, align 8
  %111 = icmp ne i64* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64*, i64** %8, align 8
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %107
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %80, %52
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @archive_string_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @archive_string_append_from_wcs(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @archive_strncpy_l(%struct.TYPE_7__*, i8*, i64, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
