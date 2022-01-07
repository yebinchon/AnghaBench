; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_device_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libusb/extr_libusb10.c_libusb_get_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb20_backend = type { i32 }
%struct.libusb20_device = type { %struct.libusb_device* }
%struct.libusb_device = type { %struct.libusb20_device*, i32*, i32 }

@LIBUSB_ERROR_INVALID_PARAM = common dso_local global i32 0, align 4
@LIBUSB_ERROR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libusb_get_device_list(i32* %0, i32*** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32***, align 8
  %6 = alloca %struct.libusb20_backend*, align 8
  %7 = alloca %struct.libusb20_device*, align 8
  %8 = alloca %struct.libusb_device*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32*** %1, i32**** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32* @GET_CONTEXT(i32* %10)
  store i32* %11, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %15, i32* %3, align 4
  br label %121

16:                                               ; preds = %2
  %17 = load i32***, i32**** %5, align 8
  %18 = icmp eq i32*** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @LIBUSB_ERROR_INVALID_PARAM, align 4
  store i32 %20, i32* %3, align 4
  br label %121

21:                                               ; preds = %16
  %22 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_default()
  store %struct.libusb20_backend* %22, %struct.libusb20_backend** %6, align 8
  %23 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %24 = icmp eq %struct.libusb20_backend* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %26, i32* %3, align 4
  br label %121

27:                                               ; preds = %21
  store %struct.libusb20_device* null, %struct.libusb20_device** %7, align 8
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %33, %27
  %29 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %30 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %31 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %29, %struct.libusb20_device* %30)
  store %struct.libusb20_device* %31, %struct.libusb20_device** %7, align 8
  %32 = icmp ne %struct.libusb20_device* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %28

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @malloc(i32 %41)
  %43 = bitcast i8* %42 to i32**
  %44 = load i32***, i32**** %5, align 8
  store i32** %43, i32*** %44, align 8
  %45 = load i32***, i32**** %5, align 8
  %46 = load i32**, i32*** %45, align 8
  %47 = icmp eq i32** %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %50 = call i32 @libusb20_be_free(%struct.libusb20_backend* %49)
  %51 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %51, i32* %3, align 4
  br label %121

52:                                               ; preds = %36
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %85, %52
  %54 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %55 = call %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend* %54, %struct.libusb20_device* null)
  store %struct.libusb20_device* %55, %struct.libusb20_device** %7, align 8
  %56 = icmp ne %struct.libusb20_device* %55, null
  br i1 %56, label %57, label %112

57:                                               ; preds = %53
  %58 = call i8* @malloc(i32 24)
  %59 = bitcast i8* %58 to %struct.libusb_device*
  store %struct.libusb_device* %59, %struct.libusb_device** %8, align 8
  %60 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %61 = icmp eq %struct.libusb_device* %60, null
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %66, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load i32***, i32**** %5, align 8
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %68, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @libusb_unref_device(i32* %73)
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  br label %63

77:                                               ; preds = %63
  %78 = load i32***, i32**** %5, align 8
  %79 = load i32**, i32*** %78, align 8
  %80 = call i32 @free(i32** %79)
  %81 = load i32***, i32**** %5, align 8
  store i32** null, i32*** %81, align 8
  %82 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %83 = call i32 @libusb20_be_free(%struct.libusb20_backend* %82)
  %84 = load i32, i32* @LIBUSB_ERROR_NO_MEM, align 4
  store i32 %84, i32* %3, align 4
  br label %121

85:                                               ; preds = %57
  %86 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %87 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %88 = call i32 @libusb20_be_dequeue_device(%struct.libusb20_backend* %86, %struct.libusb20_device* %87)
  %89 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %90 = call i32 @memset(%struct.libusb_device* %89, i32 0, i32 24)
  %91 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %92 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %91, i32 0, i32 2
  %93 = call i32 @TAILQ_INIT(i32* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %96 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %95, i32 0, i32 1
  store i32* %94, i32** %96, align 8
  %97 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %98 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %99 = getelementptr inbounds %struct.libusb_device, %struct.libusb_device* %98, i32 0, i32 0
  store %struct.libusb20_device* %97, %struct.libusb20_device** %99, align 8
  %100 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %101 = load %struct.libusb20_device*, %struct.libusb20_device** %7, align 8
  %102 = getelementptr inbounds %struct.libusb20_device, %struct.libusb20_device* %101, i32 0, i32 0
  store %struct.libusb_device* %100, %struct.libusb_device** %102, align 8
  %103 = load %struct.libusb_device*, %struct.libusb_device** %8, align 8
  %104 = call i32* @libusb_ref_device(%struct.libusb_device* %103)
  %105 = load i32***, i32**** %5, align 8
  %106 = load i32**, i32*** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  store i32* %104, i32** %109, align 8
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %53

112:                                              ; preds = %53
  %113 = load i32***, i32**** %5, align 8
  %114 = load i32**, i32*** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %114, i64 %116
  store i32* null, i32** %117, align 8
  %118 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %119 = call i32 @libusb20_be_free(%struct.libusb20_backend* %118)
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %112, %77, %48, %25, %19, %14
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32* @GET_CONTEXT(i32*) #1

declare dso_local %struct.libusb20_backend* @libusb20_be_alloc_default(...) #1

declare dso_local %struct.libusb20_device* @libusb20_be_device_foreach(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @libusb20_be_free(%struct.libusb20_backend*) #1

declare dso_local i32 @libusb_unref_device(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @libusb20_be_dequeue_device(%struct.libusb20_backend*, %struct.libusb20_device*) #1

declare dso_local i32 @memset(%struct.libusb_device*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32* @libusb_ref_device(%struct.libusb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
