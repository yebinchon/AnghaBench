; ModuleID = '/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_vendor_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/efi/libefi/extr_devpath.c_efi_vendor_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i8** }

@uuid_s_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%sVendor(%s)[%x:\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%02x\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s]%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_5__*, i8*)* @efi_vendor_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @efi_vendor_path(i8* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @DevicePathNodeLength(i32* %17)
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = bitcast %struct.TYPE_5__* %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %9, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = bitcast i32* %24 to i8*
  %26 = bitcast i8* %25 to i32*
  %27 = call i32 @uuid_to_string(i32* %26, i8** %13, i32* %14)
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @uuid_s_ok, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %91

32:                                               ; preds = %3
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @efi_make_tail(i8* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %36, i64 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i8* null, i8** %4, align 8
  br label %91

44:                                               ; preds = %32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i32 @DevicePathNodeLength(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ugt i64 %48, 8
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  store i64 0, i64* %15, align 8
  br label %51

51:                                               ; preds = %75, %50
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %51
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i8*, i8** %59, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load i8*, i8** %11, align 8
  %68 = call i32 @free(i8* %67)
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @free(i8* %69)
  store i8* null, i8** %4, align 8
  br label %91

71:                                               ; preds = %55
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @free(i8* %72)
  %74 = load i8*, i8** %10, align 8
  store i8* %74, i8** %12, align 8
  br label %75

75:                                               ; preds = %71
  %76 = load i64, i64* %15, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %15, align 8
  br label %51

78:                                               ; preds = %51
  br label %79

79:                                               ; preds = %78, %44
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %11, align 8
  %82 = call i32 (i8**, i8*, i8*, i8*, ...) @asprintf(i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %80, i8* %81)
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i8* null, i8** %10, align 8
  br label %85

85:                                               ; preds = %84, %79
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %10, align 8
  store i8* %90, i8** %4, align 8
  br label %91

91:                                               ; preds = %85, %66, %43, %31
  %92 = load i8*, i8** %4, align 8
  ret i8* %92
}

declare dso_local i32 @DevicePathNodeLength(i32*) #1

declare dso_local i32 @uuid_to_string(i32*, i8**, i32*) #1

declare dso_local i8* @efi_make_tail(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
