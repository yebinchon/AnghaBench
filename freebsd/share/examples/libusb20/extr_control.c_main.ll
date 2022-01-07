; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_control.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_control.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_device = type { i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@LIBUSB20_CONTROL_SETUP = common dso_local global i32 0, align 4
@setup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i:p:v:\00", align 1
@optarg = common dso_local global i32 0, align 4
@intr_ep = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Interrupt endpoint must be of type IN\0A\00", align 1
@do_request = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@out_len = common dso_local global i64 0, align 8
@BUFLEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Warning: data #%d 0x%0x > 0xff, truncating\0A\00", align 1
@out_buf = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"Data count exceeds maximum of %d, ignoring %d elements\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"libusb20_be_alloc()\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Found device %s (VID:PID = 0x%04x:0x%04x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.libusb20_backend*, align 8
  %12 = alloca %struct.libusb20_device*, align 8
  %13 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @UINT_MAX, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @LIBUSB20_CONTROL_SETUP, align 4
  %17 = call i32 @LIBUSB20_INIT(i32 %16, i32* @setup)
  br label %18

18:                                               ; preds = %39, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %8, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %37 [
    i32 105, label %25
    i32 112, label %29
    i32 118, label %33
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @optarg, align 4
  %27 = call i8* @strtol(i32 %26, i32* null, i32 0)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* @intr_ep, align 4
  br label %39

29:                                               ; preds = %23
  %30 = load i32, i32* @optarg, align 4
  %31 = call i8* @strtol(i32 %30, i32* null, i32 0)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %7, align 4
  br label %39

33:                                               ; preds = %23
  %34 = load i32, i32* @optarg, align 4
  %35 = call i8* @strtol(i32 %34, i32* null, i32 0)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %6, align 4
  br label %39

37:                                               ; preds = %23
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %33, %29, %25
  br label %18

40:                                               ; preds = %18
  %41 = load i32, i32* @optind, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @optind, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  store i8** %47, i8*** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @UINT_MAX, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @UINT_MAX, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %128

55:                                               ; preds = %51, %40
  %56 = load i32, i32* @intr_ep, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @intr_ep, align 4
  %60 = and i32 %59, 128
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 (...) @usage()
  br label %66

66:                                               ; preds = %62, %58, %55
  %67 = load i32, i32* %4, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %127

69:                                               ; preds = %66
  store i32 1, i32* @do_request, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = call i32 @parse_req(i32 %70, i8** %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @EX_USAGE, align 4
  store i32 %76, i32* %3, align 4
  br label %169

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %126

81:                                               ; preds = %77
  store i64 0, i64* @out_len, align 8
  br label %82

82:                                               ; preds = %110, %81
  %83 = load i32, i32* %4, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i64, i64* @out_len, align 8
  %87 = load i64, i64* @BUFLEN, align 8
  %88 = icmp ult i64 %86, %87
  br label %89

89:                                               ; preds = %85, %82
  %90 = phi i1 [ false, %82 ], [ %88, %85 ]
  br i1 %90, label %91, label %115

91:                                               ; preds = %89
  %92 = load i8**, i8*** %5, align 8
  %93 = load i64, i64* @out_len, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @strtoul(i8* %95, i32 0, i32 0)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ugt i32 %97, 255
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i32, i32* @stderr, align 4
  %101 = load i64, i64* @out_len, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %101, i32 %102)
  br label %104

104:                                              ; preds = %99, %91
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = load i64*, i64** @out_buf, align 8
  %108 = load i64, i64* @out_len, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  store i64 %106, i64* %109, align 8
  br label %110

110:                                              ; preds = %104
  %111 = load i64, i64* @out_len, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* @out_len, align 8
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %4, align 4
  br label %82

115:                                              ; preds = %89
  %116 = load i64, i64* @out_len, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* @out_len, align 8
  %118 = load i32, i32* %4, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i32, i32* @stderr, align 4
  %122 = load i64, i64* @BUFLEN, align 8
  %123 = load i32, i32* @optind, align 4
  %124 = call i32 (i32, i8*, ...) @fprintf(i32 %121, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %122, i32 %123)
  br label %125

125:                                              ; preds = %120, %115
  br label %126

126:                                              ; preds = %125, %77
  br label %127

127:                                              ; preds = %126, %66
  br label %128

128:                                              ; preds = %127, %51
  %129 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_default()
  store %struct.libusb20_backend* %129, %struct.libusb20_backend** %11, align 8
  %130 = icmp eq %struct.libusb20_backend* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %169

133:                                              ; preds = %128
  store %struct.libusb20_device* null, %struct.libusb20_device** %12, align 8
  br label %134

134:                                              ; preds = %165, %133
  %135 = load %struct.libusb20_backend*, %struct.libusb20_backend** %11, align 8
  %136 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  %137 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %135, %struct.libusb20_device* %136)
  store %struct.libusb20_device* %137, %struct.libusb20_device** %12, align 8
  %138 = icmp ne %struct.libusb20_device* %137, null
  br i1 %138, label %139, label %166

139:                                              ; preds = %134
  %140 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  %141 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %140)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %141, %struct.LIBUSB20_DEVICE_DESC_DECODED** %13, align 8
  %142 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  %143 = call i8* @libusb20_dev_get_desc(%struct.libusb20_device* %142)
  %144 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %13, align 8
  %145 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %13, align 8
  %148 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %143, i32 %146, i32 %149)
  %151 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %13, align 8
  %152 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %139
  %157 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %13, align 8
  %158 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load %struct.libusb20_device*, %struct.libusb20_device** %12, align 8
  %164 = call i32 @doit(%struct.libusb20_device* %163)
  br label %165

165:                                              ; preds = %162, %156, %139
  br label %134

166:                                              ; preds = %134
  %167 = load %struct.libusb20_backend*, %struct.libusb20_backend** %11, align 8
  %168 = call i32 @libusb20_be_free(%struct.libusb20_backend* %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %131, %75
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @LIBUSB20_INIT(i32, i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtol(i32, i32*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @parse_req(i32, i8**) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

declare dso_local %struct.libusb20_backend* @libusb20_be_alloc_default(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i8* @libusb20_dev_get_desc(%struct.libusb20_device*) #1

declare dso_local i32 @doit(%struct.libusb20_device*) #1

declare dso_local i32 @libusb20_be_free(%struct.libusb20_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
