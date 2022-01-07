; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_put_vendor_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libradius/extr_radlib.c_rad_put_vendor_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rad_handle = type { i32, i32 }
%struct.vendor_attribute = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"Please call rad_create_request() before putting attributes\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"malloc failure (%zu bytes)\00", align 1
@RAD_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@RAD_VENDOR_MICROSOFT = common dso_local global i32 0, align 4
@RAD_MICROSOFT_MS_CHAP_RESPONSE = common dso_local global i32 0, align 4
@RAD_MICROSOFT_MS_CHAP2_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rad_put_vendor_attr(%struct.rad_handle* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rad_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vendor_attribute*, align 8
  %13 = alloca i32, align 4
  store %struct.rad_handle* %0, %struct.rad_handle** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.rad_handle*, %struct.rad_handle** %7, align 8
  %15 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load %struct.rad_handle*, %struct.rad_handle** %7, align 8
  %20 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %19, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %76

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 6
  %24 = call %struct.vendor_attribute* @malloc(i64 %23)
  store %struct.vendor_attribute* %24, %struct.vendor_attribute** %12, align 8
  %25 = icmp eq %struct.vendor_attribute* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.rad_handle*, %struct.rad_handle** %7, align 8
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %28, 6
  %30 = call i32 (%struct.rad_handle*, i8*, ...) @generr(%struct.rad_handle* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  store i32 -1, i32* %6, align 4
  br label %76

31:                                               ; preds = %21
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @htonl(i32 %32)
  %34 = load %struct.vendor_attribute*, %struct.vendor_attribute** %12, align 8
  %35 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.vendor_attribute*, %struct.vendor_attribute** %12, align 8
  %38 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 2
  %41 = load %struct.vendor_attribute*, %struct.vendor_attribute** %12, align 8
  %42 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.vendor_attribute*, %struct.vendor_attribute** %12, align 8
  %44 = getelementptr inbounds %struct.vendor_attribute, %struct.vendor_attribute* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @memcpy(i32 %45, i8* %46, i64 %47)
  %49 = load %struct.rad_handle*, %struct.rad_handle** %7, align 8
  %50 = load i32, i32* @RAD_VENDOR_SPECIFIC, align 4
  %51 = load %struct.vendor_attribute*, %struct.vendor_attribute** %12, align 8
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 6
  %54 = call i32 @put_raw_attr(%struct.rad_handle* %49, i32 %50, %struct.vendor_attribute* %51, i64 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.vendor_attribute*, %struct.vendor_attribute** %12, align 8
  %56 = call i32 @free(%struct.vendor_attribute* %55)
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %31
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @RAD_VENDOR_MICROSOFT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @RAD_MICROSOFT_MS_CHAP_RESPONSE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RAD_MICROSOFT_MS_CHAP2_RESPONSE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67, %63
  %72 = load %struct.rad_handle*, %struct.rad_handle** %7, align 8
  %73 = getelementptr inbounds %struct.rad_handle, %struct.rad_handle* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %67, %59, %31
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %26, %18
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @generr(%struct.rad_handle*, i8*, ...) #1

declare dso_local %struct.vendor_attribute* @malloc(i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @put_raw_attr(%struct.rad_handle*, i32, %struct.vendor_attribute*, i64) #1

declare dso_local i32 @free(%struct.vendor_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
