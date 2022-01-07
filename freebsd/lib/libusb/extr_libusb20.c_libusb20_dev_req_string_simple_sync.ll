; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_req_string_simple_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb20.c_libusb20_dev_req_string_simple_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_device = type { i32 }

@LIBUSB20_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB20_ERROR_OTHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb20_dev_req_string_simple_sync(%struct.libusb20_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.libusb20_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [255 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.libusb20_device* %0, %struct.libusb20_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @LIBUSB20_ERROR_INVALID_PARAM, align 4
  store i32 %24, i32* %5, align 4
  br label %144

25:                                               ; preds = %20
  %26 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %27 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 0
  %28 = call i32 @libusb20_dev_req_string_sync(%struct.libusb20_device* %26, i32 0, i32 0, i32* %27, i32 1020)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = bitcast i8* %32 to i32*
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %5, align 4
  br label %144

35:                                               ; preds = %25
  %36 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 2
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = or i32 %37, %40
  store i32 %41, i32* %12, align 4
  %42 = load %struct.libusb20_device*, %struct.libusb20_device** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %12, align 4
  %45 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 0
  %46 = call i32 @libusb20_dev_req_string_sync(%struct.libusb20_device* %42, i32 %43, i32 %44, i32* %45, i32 1020)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to i32*
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %144

53:                                               ; preds = %35
  %54 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 0
  %55 = load i32, i32* %54, align 16
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i8*, i8** %8, align 8
  %59 = bitcast i8* %58 to i32*
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* @LIBUSB20_ERROR_OTHER, align 4
  store i32 %60, i32* %5, align 4
  br label %144

61:                                               ; preds = %53
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %9, align 4
  %64 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 0
  %65 = load i32, i32* %64, align 16
  %66 = sdiv i32 %65, 2
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %71, %61
  store i32 3, i32* %17, align 4
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %139, %73
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %142

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = mul nsw i32 2, %80
  %82 = add nsw i32 %81, 2
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %14, align 4
  %87 = mul nsw i32 2, %86
  %88 = add nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [255 x i32], [255 x i32]* %16, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 8
  %93 = or i32 %85, %92
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = and i32 %94, 65280
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %79
  %98 = load i32, i32* %17, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32, i32* %15, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i8*, i8** %10, align 8
  store i8 %103, i8* %104, align 1
  store i32 1, i32* %17, align 4
  br label %120

105:                                              ; preds = %97, %79
  %106 = load i32, i32* %15, align 4
  %107 = and i32 %106, 255
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = load i32, i32* %17, align 4
  %111 = and i32 %110, 2
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* %15, align 4
  %115 = ashr i32 %114, 8
  %116 = trunc i32 %115 to i8
  %117 = load i8*, i8** %10, align 8
  store i8 %116, i8* %117, align 1
  store i32 2, i32* %17, align 4
  br label %119

118:                                              ; preds = %109, %105
  br label %139

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %101
  %121 = load i8*, i8** %10, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 60
  br i1 %124, label %135, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %10, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 62
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %10, align 8
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @isprint(i8 signext %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130, %125, %120
  br label %139

136:                                              ; preds = %130
  %137 = load i8*, i8** %10, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %10, align 8
  br label %139

139:                                              ; preds = %136, %135, %118
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %75

142:                                              ; preds = %75
  %143 = load i8*, i8** %10, align 8
  store i8 0, i8* %143, align 1
  store i32 0, i32* %5, align 4
  br label %144

144:                                              ; preds = %142, %57, %49, %31, %23
  %145 = load i32, i32* %5, align 4
  ret i32 %145
}

declare dso_local i32 @libusb20_dev_req_string_sync(%struct.libusb20_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
