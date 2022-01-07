; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_efivar_device_path_to_unix_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libefivar/extr_efivar-dp-xlate.c_efivar_device_path_to_unix_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32 }

@EDOOFUS = common dso_local global i32 0, align 4
@MEDIA_DEVICE_PATH = common dso_local global i64 0, align 8
@END_DEVICE_PATH_TYPE = common dso_local global i64 0, align 8
@MAX_DP_SANITY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MEDIA_HARDDRIVE_DP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efivar_device_path_to_unix_path(i32* %0, i8** %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.gmesh, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %4
  %16 = load i8**, i8*** %7, align 8
  %17 = icmp eq i8** %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp eq i8** %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i8**, i8*** %9, align 8
  %23 = icmp eq i8** %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %15, %4
  %25 = load i32, i32* @EDOOFUS, align 4
  store i32 %25, i32* %5, align 4
  br label %84

26:                                               ; preds = %21
  %27 = load i8**, i8*** %7, align 8
  store i8* null, i8** %27, align 8
  %28 = load i8**, i8*** %8, align 8
  store i8* null, i8** %28, align 8
  %29 = load i8**, i8*** %9, align 8
  store i8* null, i8** %29, align 8
  %30 = load i32*, i32** %6, align 8
  store i32* %30, i32** %10, align 8
  br label %31

31:                                               ; preds = %56, %26
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @DevicePathType(i32* %32)
  %34 = load i64, i64* @MEDIA_DEVICE_PATH, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @DevicePathType(i32* %37)
  %39 = load i64, i64* @END_DEVICE_PATH_TYPE, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %57

43:                                               ; preds = %41
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @NextDevicePathNode(i32* %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = ptrtoint i32* %47 to i64
  %49 = load i32*, i32** %6, align 8
  %50 = ptrtoint i32* %49 to i64
  %51 = sub i64 %48, %50
  %52 = load i64, i64* @MAX_DP_SANITY, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %5, align 4
  br label %84

56:                                               ; preds = %43
  br label %31

57:                                               ; preds = %41
  %58 = load i32*, i32** %10, align 8
  %59 = call i64 @DevicePathType(i32* %58)
  %60 = load i64, i64* @MEDIA_DEVICE_PATH, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %5, align 4
  br label %84

64:                                               ; preds = %57
  %65 = call i64 @geom_gettree(%struct.gmesh* %11)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %5, align 4
  br label %84

69:                                               ; preds = %64
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %12, align 4
  %71 = load i32*, i32** %10, align 8
  %72 = call i64 @DevicePathSubType(i32* %71)
  %73 = load i64, i64* @MEDIA_HARDDRIVE_DP, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32*, i32** %10, align 8
  %77 = load i8**, i8*** %7, align 8
  %78 = load i8**, i8*** %8, align 8
  %79 = load i8**, i8*** %9, align 8
  %80 = call i32 @efi_hd_to_unix(%struct.gmesh* %11, i32* %76, i8** %77, i8** %78, i8** %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %75, %69
  %82 = call i32 @geom_deletetree(%struct.gmesh* %11)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %67, %62, %54, %24
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @DevicePathType(i32*) #1

declare dso_local i64 @NextDevicePathNode(i32*) #1

declare dso_local i64 @geom_gettree(%struct.gmesh*) #1

declare dso_local i64 @DevicePathSubType(i32*) #1

declare dso_local i32 @efi_hd_to_unix(%struct.gmesh*, i32*, i8**, i8**, i8**) #1

declare dso_local i32 @geom_deletetree(%struct.gmesh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
