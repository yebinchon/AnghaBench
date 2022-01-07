; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_media.c_ifconfig_media_get_options_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_media.c_ifconfig_media_get_options_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_type_to_subtype = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ifmedia_description*, i64 }
%struct.ifmedia_description = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ifconfig_media_get_options_string(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ifmedia_type_to_subtype*, align 8
  %8 = alloca %struct.ifmedia_description*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 1
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.ifmedia_type_to_subtype* @get_toptype_ttos(i32 %18)
  store %struct.ifmedia_type_to_subtype* %19, %struct.ifmedia_type_to_subtype** %7, align 8
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %93, %3
  %21 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %7, align 8
  %22 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ifmedia_description*, %struct.ifmedia_description** %27, align 8
  %29 = icmp ne %struct.ifmedia_description* %28, null
  br i1 %29, label %30, label %96

30:                                               ; preds = %20
  %31 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %7, align 8
  %32 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %93

41:                                               ; preds = %30
  %42 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %7, align 8
  %43 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.ifmedia_description*, %struct.ifmedia_description** %48, align 8
  store %struct.ifmedia_description* %49, %struct.ifmedia_description** %8, align 8
  br label %50

50:                                               ; preds = %89, %41
  %51 = load %struct.ifmedia_description*, %struct.ifmedia_description** %8, align 8
  %52 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ifmedia_description*, %struct.ifmedia_description** %8, align 8
  %58 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @strlcat(i8* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.ifmedia_description*, %struct.ifmedia_description** %8, align 8
  %73 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @strlcat(i8* %71, i8* %74, i64 %75)
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ult i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i64, i64* %11, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 %82
  store i8* %84, i8** %5, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* %6, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %6, align 8
  br label %88

88:                                               ; preds = %70, %55
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.ifmedia_description*, %struct.ifmedia_description** %8, align 8
  %91 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %90, i32 1
  store %struct.ifmedia_description* %91, %struct.ifmedia_description** %8, align 8
  br label %50

92:                                               ; preds = %50
  br label %93

93:                                               ; preds = %92, %40
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %20

96:                                               ; preds = %20
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.ifmedia_type_to_subtype* @get_toptype_ttos(i32) #1

declare dso_local i64 @strlcat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
