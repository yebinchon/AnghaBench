; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/skein/extr_skein.c_Skein1024_Output.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/skein/extr_skein.c_Skein1024_Output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i64, i32 }

@SKEIN1024_STATE_WORDS = common dso_local global i32 0, align 4
@SKEIN1024_BLOCK_BYTES = common dso_local global i64 0, align 8
@SKEIN_FAIL = common dso_local global i32 0, align 4
@OUT_FINAL = common dso_local global i32 0, align 4
@SKEIN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Skein1024_Output(%struct.TYPE_6__* %0, i32* %1) #0 {
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
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 7
  %28 = ashr i32 %27, 3
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %7, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @memset(i64 %32, i32 0, i32 8)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = mul nuw i64 4, %11
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcpy(i32* %13, i32* %36, i32 %38)
  store i64 0, i64* %5, align 8
  br label %40

40:                                               ; preds = %99, %2
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %43 = mul i64 %41, %42
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %102

46:                                               ; preds = %40
  %47 = load i64, i64* %5, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @Skein_Swap64(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %49, i32* %54, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = load i32, i32* @OUT_FINAL, align 4
  %57 = call i32 @Skein_Start_New_Type(%struct.TYPE_6__* %55, i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @Skein1024_Process_Block(%struct.TYPE_6__* %58, i64 %61, i32 1, i32 4)
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %66 = mul i64 %64, %65
  %67 = sub i64 %63, %66
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %46
  %72 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  store i64 %72, i64* %6, align 8
  br label %73

73:                                               ; preds = %71, %46
  %74 = load i32*, i32** %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %77 = mul i64 %75, %76
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @Skein_Put64_LSB_First(i32* %78, i32* %81, i64 %82)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i64, i64* %6, align 8
  %87 = load i32*, i32** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @SKEIN1024_BLOCK_BYTES, align 8
  %90 = mul i64 %88, %89
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = call i32 @Skein_Show_Final(i32 256, %struct.TYPE_7__* %85, i64 %86, i32* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = mul nuw i64 4, %11
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memcpy(i32* %95, i32* %13, i32 %97)
  br label %99

99:                                               ; preds = %73
  %100 = load i64, i64* %5, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %5, align 8
  br label %40

102:                                              ; preds = %40
  %103 = load i32, i32* @SKEIN_SUCCESS, align 4
  %104 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %104)
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Skein_Assert(i32, i32) #2

declare dso_local i32 @memset(i64, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @Skein_Swap64(i32) #2

declare dso_local i32 @Skein_Start_New_Type(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @Skein1024_Process_Block(%struct.TYPE_6__*, i64, i32, i32) #2

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
