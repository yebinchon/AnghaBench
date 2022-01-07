; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb01.c_usb_parse_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_config_descriptor = type { i32 }
%struct.usb_parse_state = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, %struct.usb_config_descriptor* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_parse_configuration(%struct.usb_config_descriptor* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_config_descriptor*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usb_parse_state, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usb_config_descriptor* %0, %struct.usb_config_descriptor** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %16 = icmp eq %struct.usb_config_descriptor* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  store i32 -1, i32* %3, align 4
  br label %123

18:                                               ; preds = %14
  %19 = call i32 @memset(%struct.usb_parse_state* %6, i32 0, i32 56)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @libusb20_parse_config_desc(i32* %20)
  %22 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %4, align 8
  %25 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store %struct.usb_config_descriptor* %24, %struct.usb_config_descriptor** %26, align 8
  %27 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %123

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = call i32 @usb_parse_config(%struct.usb_parse_state* %6)
  %35 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = ptrtoint i32* %38 to i64
  %40 = sub i64 %39, 0
  %41 = sdiv exact i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = ptrtoint i32* %46 to i64
  %48 = sub i64 %47, 0
  %49 = sdiv exact i64 %48, 4
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = ptrtoint i32* %54 to i64
  %56 = sub i64 %55, 0
  %57 = sdiv exact i64 %56, 4
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  %59 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = ptrtoint i32* %62 to i64
  %64 = sub i64 %63, 0
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32* @malloc(i32 %73)
  store i32* %74, i32** %7, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %32
  %78 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @free(i32* %80)
  store i32 -1, i32* %3, align 4
  br label %123

82:                                               ; preds = %32
  %83 = load i32*, i32** %7, align 8
  %84 = bitcast i32* %83 to i8*
  %85 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i8* %84, i8** %86, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = bitcast i32* %90 to i8*
  %92 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = bitcast i32* %100 to i8*
  %102 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = bitcast i32* %113 to i8*
  %115 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = call i32 @usb_parse_config(%struct.usb_parse_state* %6)
  %119 = getelementptr inbounds %struct.usb_parse_state, %struct.usb_parse_state* %6, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @free(i32* %121)
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %82, %77, %31, %17
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @memset(%struct.usb_parse_state*, i32, i32) #1

declare dso_local i32* @libusb20_parse_config_desc(i32*) #1

declare dso_local i32 @usb_parse_config(%struct.usb_parse_state*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
