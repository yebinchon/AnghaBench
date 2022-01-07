; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_text_printchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_efi_console.c_efi_text_printchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_pixel = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32, i32)*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@buffer = common dso_local global %struct.text_pixel* null, align 8
@tp = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@conout = common dso_local global %struct.TYPE_14__* null, align 8
@TF_BOLD = common dso_local global i32 0, align 4
@TC_LIGHT = common dso_local global i64 0, align 8
@TF_BLINK = common dso_local global i32 0, align 4
@TF_REVERSE = common dso_local global i32 0, align 4
@teken_color_to_efi_color = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @efi_text_printchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efi_text_printchar(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.text_pixel*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.text_pixel*, %struct.text_pixel** @buffer, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %11, i64 %15
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tp, i32 0, i32 0), align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %16, i64 %22
  store %struct.text_pixel* %23, %struct.text_pixel** %7, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %5, align 4
  %29 = load %struct.text_pixel*, %struct.text_pixel** %7, align 8
  %30 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @teken_256to16(i32 %32)
  store i64 %33, i64* %8, align 8
  %34 = load %struct.text_pixel*, %struct.text_pixel** %7, align 8
  %35 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @teken_256to16(i32 %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.text_pixel*, %struct.text_pixel** %7, align 8
  %40 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TF_BOLD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %2
  %47 = load i64, i64* @TC_LIGHT, align 8
  %48 = load i64, i64* %8, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %8, align 8
  br label %50

50:                                               ; preds = %46, %2
  %51 = load %struct.text_pixel*, %struct.text_pixel** %7, align 8
  %52 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TF_BLINK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load i64, i64* @TC_LIGHT, align 8
  %60 = load i64, i64* %9, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %58, %50
  %63 = load %struct.text_pixel*, %struct.text_pixel** %7, align 8
  %64 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @TF_REVERSE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %70, %62
  %75 = load i32*, i32** @teken_color_to_efi_color, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** @teken_color_to_efi_color, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 7
  %84 = call i32 @EFI_TEXT_ATTR(i32 %78, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load i32 (%struct.TYPE_14__*, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32)** %86, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 %87(%struct.TYPE_14__* %88, i32 %91, i32 %94)
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %74
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tp, i32 0, i32 1), align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %98
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @tp, i32 0, i32 0), align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %130

113:                                              ; preds = %105, %98, %74
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 %116(%struct.TYPE_14__* %117, i32 %118)
  %120 = load %struct.text_pixel*, %struct.text_pixel** %7, align 8
  %121 = getelementptr inbounds %struct.text_pixel, %struct.text_pixel* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @efi_cons_efiputchar(i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_14__*, i32)*, i32 (%struct.TYPE_14__*, i32)** %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conout, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 %126(%struct.TYPE_14__* %127, i32 %128)
  br label %130

130:                                              ; preds = %113, %112
  ret void
}

declare dso_local i64 @teken_256to16(i32) #1

declare dso_local i32 @EFI_TEXT_ATTR(i32, i32) #1

declare dso_local i32 @efi_cons_efiputchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
