; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_parse_ss_endpoint_comp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10_desc.c_libusb_parse_ss_endpoint_comp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_ss_endpoint_companion_descriptor = type { i32, i32, i32, i32, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE = common dso_local global i32 0, align 4
@LIBUSB_DT_SS_ENDPOINT_COMPANION = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_parse_ss_endpoint_comp(i8* %0, i32 %1, %struct.libusb_ss_endpoint_companion_descriptor** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.libusb_ss_endpoint_companion_descriptor**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.libusb_ss_endpoint_companion_descriptor*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.libusb_ss_endpoint_companion_descriptor** %2, %struct.libusb_ss_endpoint_companion_descriptor*** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.libusb_ss_endpoint_companion_descriptor**, %struct.libusb_ss_endpoint_companion_descriptor*** %7, align 8
  %15 = icmp eq %struct.libusb_ss_endpoint_companion_descriptor** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13, %3
  %20 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 65535
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 65535, i32* %6, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.libusb_ss_endpoint_companion_descriptor**, %struct.libusb_ss_endpoint_companion_descriptor*** %7, align 8
  store %struct.libusb_ss_endpoint_companion_descriptor* null, %struct.libusb_ss_endpoint_companion_descriptor** %26, align 8
  br label %27

27:                                               ; preds = %93, %25
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %103

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = bitcast i8* %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %30
  br label %103

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %93

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @LIBUSB_DT_SS_ENDPOINT_COMPANION, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %93

54:                                               ; preds = %50
  %55 = call %struct.libusb_ss_endpoint_companion_descriptor* @malloc(i32 20)
  store %struct.libusb_ss_endpoint_companion_descriptor* %55, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %56 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %57 = icmp eq %struct.libusb_ss_endpoint_companion_descriptor* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %59, i32* %4, align 4
  br label %105

60:                                               ; preds = %54
  %61 = load i32, i32* @LIBUSB_DT_SS_ENDPOINT_COMPANION_SIZE, align 4
  %62 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %63 = getelementptr inbounds %struct.libusb_ss_endpoint_companion_descriptor, %struct.libusb_ss_endpoint_companion_descriptor* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %66 = getelementptr inbounds %struct.libusb_ss_endpoint_companion_descriptor, %struct.libusb_ss_endpoint_companion_descriptor* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %72 = getelementptr inbounds %struct.libusb_ss_endpoint_companion_descriptor, %struct.libusb_ss_endpoint_companion_descriptor* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %78 = getelementptr inbounds %struct.libusb_ss_endpoint_companion_descriptor, %struct.libusb_ss_endpoint_companion_descriptor* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** %5, align 8
  %80 = bitcast i8* %79 to i32*
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds i32, i32* %84, i64 5
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = or i32 %82, %87
  %89 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %90 = getelementptr inbounds %struct.libusb_ss_endpoint_companion_descriptor, %struct.libusb_ss_endpoint_companion_descriptor* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.libusb_ss_endpoint_companion_descriptor*, %struct.libusb_ss_endpoint_companion_descriptor** %10, align 8
  %92 = load %struct.libusb_ss_endpoint_companion_descriptor**, %struct.libusb_ss_endpoint_companion_descriptor*** %7, align 8
  store %struct.libusb_ss_endpoint_companion_descriptor* %91, %struct.libusb_ss_endpoint_companion_descriptor** %92, align 8
  store i32 0, i32* %4, align 4
  br label %105

93:                                               ; preds = %50, %46
  %94 = load i8*, i8** %5, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = bitcast i32* %98 to i8*
  store i8* %99, i8** %5, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %27

103:                                              ; preds = %45, %27
  %104 = load i32, i32* @LIBUSB_ERROR_IO, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %60, %58, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.libusb_ss_endpoint_companion_descriptor* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
