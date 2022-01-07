; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_bulk.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/libusb20/extr_bulk.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_device = type { i32 }
%struct.LIBUSB20_DEVICE_DESC_DECODED = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"i:o:p:v:\00", align 1
@optarg = common dso_local global i32 0, align 4
@in_ep = common dso_local global i32 0, align 4
@out_ep = common dso_local global i64 0, align 8
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"IN_EP must have bit 7 set\0A\00", align 1
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
  %10 = alloca %struct.libusb20_backend*, align 8
  %11 = alloca %struct.libusb20_device*, align 8
  %12 = alloca %struct.LIBUSB20_DEVICE_DESC_DECODED*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* @UINT_MAX, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @UINT_MAX, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %40, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %38 [
    i32 105, label %22
    i32 111, label %26
    i32 112, label %30
    i32 118, label %34
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @optarg, align 4
  %24 = call i8* @strtol(i32 %23, i32* null, i32 0)
  %25 = ptrtoint i8* %24 to i32
  store i32 %25, i32* @in_ep, align 4
  br label %40

26:                                               ; preds = %20
  %27 = load i32, i32* @optarg, align 4
  %28 = call i8* @strtol(i32 %27, i32* null, i32 0)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* @out_ep, align 8
  br label %40

30:                                               ; preds = %20
  %31 = load i32, i32* @optarg, align 4
  %32 = call i8* @strtol(i32 %31, i32* null, i32 0)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %7, align 4
  br label %40

34:                                               ; preds = %20
  %35 = load i32, i32* @optarg, align 4
  %36 = call i8* @strtol(i32 %35, i32* null, i32 0)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %6, align 4
  br label %40

38:                                               ; preds = %20
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %34, %30, %26, %22
  br label %15

41:                                               ; preds = %15
  %42 = load i32, i32* @optind, align 4
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @optind, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8** %48, i8*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @UINT_MAX, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @UINT_MAX, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %121

56:                                               ; preds = %52, %41
  %57 = load i32, i32* @in_ep, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i64, i64* @out_ep, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59, %56
  %63 = call i32 (...) @usage()
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* @in_ep, align 4
  %66 = and i32 %65, 128
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @stderr, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %69, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EX_USAGE, align 4
  store i32 %71, i32* %3, align 4
  br label %162

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %120

75:                                               ; preds = %72
  store i64 0, i64* @out_len, align 8
  br label %76

76:                                               ; preds = %104, %75
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* @out_len, align 8
  %81 = load i64, i64* @BUFLEN, align 8
  %82 = icmp ult i64 %80, %81
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i1 [ false, %76 ], [ %82, %79 ]
  br i1 %84, label %85, label %109

85:                                               ; preds = %83
  %86 = load i8**, i8*** %5, align 8
  %87 = load i64, i64* @out_len, align 8
  %88 = getelementptr inbounds i8*, i8** %86, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strtoul(i8* %89, i32 0, i32 0)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ugt i32 %91, 255
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* @stderr, align 4
  %95 = load i64, i64* @out_len, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %94, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %85
  %99 = load i32, i32* %9, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64*, i64** @out_buf, align 8
  %102 = load i64, i64* @out_len, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %100, i64* %103, align 8
  br label %104

104:                                              ; preds = %98
  %105 = load i64, i64* @out_len, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* @out_len, align 8
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %4, align 4
  br label %76

109:                                              ; preds = %83
  %110 = load i64, i64* @out_len, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* @out_len, align 8
  %112 = load i32, i32* %4, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load i32, i32* @stderr, align 4
  %116 = load i64, i64* @BUFLEN, align 8
  %117 = load i32, i32* @optind, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %116, i32 %117)
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %72
  br label %121

121:                                              ; preds = %120, %52
  %122 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_default()
  store %struct.libusb20_backend* %122, %struct.libusb20_backend** %10, align 8
  %123 = icmp eq %struct.libusb20_backend* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %162

126:                                              ; preds = %121
  store %struct.libusb20_device* null, %struct.libusb20_device** %11, align 8
  br label %127

127:                                              ; preds = %158, %126
  %128 = load %struct.libusb20_backend*, %struct.libusb20_backend** %10, align 8
  %129 = load %struct.libusb20_device*, %struct.libusb20_device** %11, align 8
  %130 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %128, %struct.libusb20_device* %129)
  store %struct.libusb20_device* %130, %struct.libusb20_device** %11, align 8
  %131 = icmp ne %struct.libusb20_device* %130, null
  br i1 %131, label %132, label %159

132:                                              ; preds = %127
  %133 = load %struct.libusb20_device*, %struct.libusb20_device** %11, align 8
  %134 = call %struct.LIBUSB20_DEVICE_DESC_DECODED* @libusb20_dev_get_device_desc(%struct.libusb20_device* %133)
  store %struct.LIBUSB20_DEVICE_DESC_DECODED* %134, %struct.LIBUSB20_DEVICE_DESC_DECODED** %12, align 8
  %135 = load %struct.libusb20_device*, %struct.libusb20_device** %11, align 8
  %136 = call i8* @libusb20_dev_get_desc(%struct.libusb20_device* %135)
  %137 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %12, align 8
  %138 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %12, align 8
  %141 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %136, i32 %139, i32 %142)
  %144 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %12, align 8
  %145 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %132
  %150 = load %struct.LIBUSB20_DEVICE_DESC_DECODED*, %struct.LIBUSB20_DEVICE_DESC_DECODED** %12, align 8
  %151 = getelementptr inbounds %struct.LIBUSB20_DEVICE_DESC_DECODED, %struct.LIBUSB20_DEVICE_DESC_DECODED* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.libusb20_device*, %struct.libusb20_device** %11, align 8
  %157 = call i32 @doit(%struct.libusb20_device* %156)
  br label %158

158:                                              ; preds = %155, %149, %132
  br label %127

159:                                              ; preds = %127
  %160 = load %struct.libusb20_backend*, %struct.libusb20_backend** %10, align 8
  %161 = call i32 @libusb20_be_free(%struct.libusb20_backend* %160)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %159, %124, %68
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strtol(i32, i32*, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

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
