; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/VIQR/extr_citrus_viqr.c__citrus_VIQR_wcrtomb_priv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/VIQR/extr_citrus_viqr.c__citrus_VIQR_wcrtomb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@mnemonic_rfc1456 = common dso_local global i8** null, align 8
@ESCAPE = common dso_local global i32 0, align 4
@mnemonic_ext = common dso_local global i32* null, align 8
@mnemonic_ext_size = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i64, i32, %struct.TYPE_8__*, i64*)* @_citrus_VIQR_wcrtomb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_citrus_VIQR_wcrtomb_priv(%struct.TYPE_9__* noalias %0, i8* noalias %1, i64 %2, i32 %3, %struct.TYPE_8__* noalias %4, i64* noalias %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  switch i64 %19, label %21 [
    i64 0, label %20
    i64 1, label %20
  ]

20:                                               ; preds = %6, %6
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %7, align 4
  br label %161

23:                                               ; preds = %20
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  %24 = load i32, i32* %11, align 4
  %25 = icmp sle i32 %24, 255
  br i1 %25, label %26, label %88

26:                                               ; preds = %23
  %27 = load i8**, i8*** @mnemonic_rfc1456, align 8
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, 255
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %27, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %15, align 8
  %33 = load i8*, i8** %15, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %100

36:                                               ; preds = %26
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %10, align 8
  %39 = icmp ult i64 %37, 1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %158

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %16, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %14, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %41
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_7__* @mnemonic_list_find(i32* %52, i32 %57)
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %14, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %60 = icmp eq %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %7, align 4
  br label %161

63:                                               ; preds = %50
  %64 = load i32, i32* @ESCAPE, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %41
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %16, align 4
  %73 = call %struct.TYPE_7__* @mnemonic_list_find(i32* %71, i32 %72)
  %74 = icmp eq %struct.TYPE_7__* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i64 0, i64* %77, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %14, align 8
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %79, i32* %87, align 4
  br label %128

88:                                               ; preds = %23
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** @mnemonic_ext, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* @mnemonic_ext_size, align 4
  %93 = call i8* @mnemonic_ext_find(i32 %89, i32* %91, i32 %92)
  store i8* %93, i8** %15, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load i64*, i64** %13, align 8
  store i64 -1, i64* %97, align 8
  %98 = load i32, i32* @EILSEQ, align 4
  store i32 %98, i32* %7, align 4
  br label %161

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %35
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %113, %100
  %104 = load i8*, i8** %15, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %10, align 8
  %111 = icmp ult i64 %109, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %158

113:                                              ; preds = %108
  %114 = load i8*, i8** %15, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %15, align 8
  %116 = load i8, i8* %114, align 1
  %117 = sext i8 %116 to i32
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %117, i32* %125, align 4
  br label %103

126:                                              ; preds = %103
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127, %78
  %129 = load i8*, i8** %9, align 8
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @memcpy(i8* %129, i32* %132, i64 %135)
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64*, i64** %13, align 8
  store i64 %139, i64* %140, align 8
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = icmp eq %struct.TYPE_7__* %141, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %128
  %147 = load i32, i32* %16, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %147, i32* %151, align 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  store i64 1, i64* %153, align 8
  br label %157

154:                                              ; preds = %128
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %154, %146
  store i32 0, i32* %7, align 4
  br label %161

158:                                              ; preds = %112, %40
  %159 = load i64*, i64** %13, align 8
  store i64 -1, i64* %159, align 8
  %160 = load i32, i32* @E2BIG, align 4
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %158, %157, %96, %61, %21
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

declare dso_local %struct.TYPE_7__* @mnemonic_list_find(i32*, i32) #1

declare dso_local i8* @mnemonic_ext_find(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
