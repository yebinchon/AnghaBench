; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/skein/extr_skein.c_Skein1024_Final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/skein/extr_skein.c_Skein1024_Final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i64, i32, i32* }

@SKEIN1024_STATE_WORDS = common dso_local global i32 0, align 4
@SKEIN1024_BLOCK_BYTES = common dso_local global i64 0, align 8
@SKEIN_FAIL = common dso_local global i32 0, align 4
@SKEIN_T1_FLAG_FINAL = common dso_local global i32 0, align 4
@OUT_FINAL = common dso_local global i32 0, align 4
@SKEIN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Skein1024_Final(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32, i32* @SKEIN1024_STATE_WORDS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %19 = icmp ule i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @SKEIN_FAIL, align 4
  %22 = call i32 @Skein_Assert(i32 %20, i32 %21)
  %23 = load i32, i32* @SKEIN_T1_FLAG_FINAL, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %23
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %46, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memset(i32* %45, i32 0, i32 %52)
  br label %54

54:                                               ; preds = %37, %2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @Skein1024_Process_Block(%struct.TYPE_6__* %55, i32* %58, i32 1, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 7
  %70 = ashr i32 %69, 3
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %7, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @memset(i32* %74, i32 0, i32 8)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = mul nuw i64 4, %11
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i32* %13, i32* %78, i32 %80)
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %140, %54
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %85 = mul i64 %83, %84
  %86 = load i64, i64* %7, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %143

88:                                               ; preds = %82
  %89 = load i64, i64* %5, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @Skein_Swap64(i32 %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = load i32, i32* @OUT_FINAL, align 4
  %98 = call i32 @Skein_Start_New_Type(%struct.TYPE_6__* %96, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @Skein1024_Process_Block(%struct.TYPE_6__* %99, i32* %102, i32 1, i32 4)
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %107 = mul i64 %105, %106
  %108 = sub i64 %104, %107
  store i64 %108, i64* %6, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %111 = icmp uge i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %88
  %113 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %112, %88
  %115 = load i32*, i32** %4, align 8
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %118 = mul i64 %116, %117
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @Skein_Put64_LSB_First(i32* %119, i32* %122, i64 %123)
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i64, i64* %6, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load i64, i64* %5, align 8
  %130 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %131 = mul i64 %129, %130
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = call i32 @Skein_Show_Final(i32 1024, %struct.TYPE_7__* %126, i64 %127, i32* %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = mul nuw i64 4, %11
  %138 = trunc i64 %137 to i32
  %139 = call i32 @memcpy(i32* %136, i32* %13, i32 %138)
  br label %140

140:                                              ; preds = %114
  %141 = load i64, i64* %5, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %5, align 8
  br label %82

143:                                              ; preds = %82
  %144 = load i32, i32* @SKEIN_SUCCESS, align 4
  %145 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %145)
  ret i32 %144
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Skein_Assert(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @Skein1024_Process_Block(%struct.TYPE_6__*, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @Skein_Swap64(i32) #2

declare dso_local i32 @Skein_Start_New_Type(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Skein_Put64_LSB_First(i32*, i32*, i64) #2

declare dso_local i32 @Skein_Show_Final(i32, %struct.TYPE_7__*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
