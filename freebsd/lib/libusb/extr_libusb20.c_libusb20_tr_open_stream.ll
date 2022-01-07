; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_open_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_tr_open_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_transfer = type { i32, i32, i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.libusb20_transfer*, i32, i32, i32, i32, i32)* }

@LIBUSB20_ERROR_BUSY = common dso_local global i32 0, align 4
@LIBUSB20_MAX_FRAME_PRE_SCALE = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_tr_open_stream(%struct.libusb20_transfer* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb20_transfer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.libusb20_transfer* %0, %struct.libusb20_transfer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %16 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @LIBUSB20_ERROR_BUSY, align 4
  store i32 %20, i32* %6, align 4
  br label %137

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @LIBUSB20_MAX_FRAME_PRE_SCALE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* @LIBUSB20_MAX_FRAME_PRE_SCALE, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = mul nsw i32 %31, 8
  store i32 %32, i32* %9, align 4
  store i32 1, i32* %13, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @LIBUSB20_ERROR_INVALID_PARAM, align 4
  store i32 %38, i32* %6, align 4
  br label %137

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %42 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i8* @malloc(i32 %47)
  %49 = bitcast i8* %48 to i32*
  %50 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %51 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %53 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* @LIBUSB20_ERROR_NO_MEM, align 4
  store i32 %57, i32* %6, align 4
  br label %137

58:                                               ; preds = %39
  %59 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %60 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @memset(i32* %61, i32 0, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i8* @malloc(i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %72 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %71, i32 0, i32 3
  store i32* %70, i32** %72, align 8
  %73 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %74 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %79 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @free(i32* %80)
  %82 = load i32, i32* @LIBUSB20_ERROR_NO_MEM, align 4
  store i32 %82, i32* %6, align 4
  br label %137

83:                                               ; preds = %58
  %84 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %85 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @memset(i32* %86, i32 0, i32 %87)
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %83
  %92 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %93 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %92, i32 0, i32 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (%struct.libusb20_transfer*, i32, i32, i32, i32, i32)*, i32 (%struct.libusb20_transfer*, i32, i32, i32, i32, i32)** %97, align 8
  %99 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sdiv i32 %101, 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 %98(%struct.libusb20_transfer* %99, i32 %100, i32 %102, i32 %103, i32 %104, i32 1)
  store i32 %105, i32* %14, align 4
  br label %120

106:                                              ; preds = %83
  %107 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %108 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32 (%struct.libusb20_transfer*, i32, i32, i32, i32, i32)*, i32 (%struct.libusb20_transfer*, i32, i32, i32, i32, i32)** %112, align 8
  %114 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i32 %113(%struct.libusb20_transfer* %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %106, %91
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %125 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @free(i32* %126)
  %128 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %129 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @free(i32* %130)
  br label %135

132:                                              ; preds = %120
  %133 = load %struct.libusb20_transfer*, %struct.libusb20_transfer** %7, align 8
  %134 = getelementptr inbounds %struct.libusb20_transfer, %struct.libusb20_transfer* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %132, %123
  %136 = load i32, i32* %14, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %135, %77, %56, %37, %19
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
