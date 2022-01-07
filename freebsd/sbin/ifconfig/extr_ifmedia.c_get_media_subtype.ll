; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_get_media_subtype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifmedia.c_get_media_subtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_description = type { i32, i32* }
%struct.ifmedia_type_to_subtype = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ifm_type_descriptions = common dso_local global %struct.ifmedia_description* null, align 8
@ifmedia_types_to_subtypes = common dso_local global %struct.ifmedia_type_to_subtype* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"unknown media type 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unknown media subtype: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @get_media_subtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_media_subtype(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ifmedia_description*, align 8
  %7 = alloca %struct.ifmedia_type_to_subtype*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load %struct.ifmedia_description*, %struct.ifmedia_description** @ifm_type_descriptions, align 8
  store %struct.ifmedia_description* %10, %struct.ifmedia_description** %6, align 8
  %11 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** @ifmedia_types_to_subtypes, align 8
  store %struct.ifmedia_type_to_subtype* %11, %struct.ifmedia_type_to_subtype** %7, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load %struct.ifmedia_description*, %struct.ifmedia_description** %6, align 8
  %14 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ifmedia_description*, %struct.ifmedia_description** %6, align 8
  %20 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %30

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.ifmedia_description*, %struct.ifmedia_description** %6, align 8
  %27 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %26, i32 1
  store %struct.ifmedia_description* %27, %struct.ifmedia_description** %6, align 8
  %28 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %7, align 8
  %29 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %28, i32 1
  store %struct.ifmedia_type_to_subtype* %29, %struct.ifmedia_type_to_subtype** %7, align 8
  br label %12

30:                                               ; preds = %23, %12
  %31 = load %struct.ifmedia_description*, %struct.ifmedia_description** %6, align 8
  %32 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %65, %38
  %40 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %7, align 8
  %41 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %68

49:                                               ; preds = %39
  %50 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %7, align 8
  %51 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @lookup_media_word(i32* %57, i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %71

64:                                               ; preds = %49
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %39

68:                                               ; preds = %39
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @lookup_media_word(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
