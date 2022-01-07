; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_ifmedia.c_get_media_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/etherswitchcfg/extr_ifmedia.c_get_media_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmedia_description = type { i32, i32* }
%struct.ifmedia_type_to_subtype = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@ifm_type_descriptions = common dso_local global %struct.ifmedia_description* null, align 8
@ifmedia_types_to_subtypes = common dso_local global %struct.ifmedia_type_to_subtype* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"unknown media type 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown option: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_media_options(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifmedia_description*, align 8
  %6 = alloca %struct.ifmedia_type_to_subtype*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.ifmedia_description*, %struct.ifmedia_description** @ifm_type_descriptions, align 8
  store %struct.ifmedia_description* %19, %struct.ifmedia_description** %5, align 8
  %20 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** @ifmedia_types_to_subtypes, align 8
  store %struct.ifmedia_type_to_subtype* %20, %struct.ifmedia_type_to_subtype** %6, align 8
  br label %21

21:                                               ; preds = %34, %18
  %22 = load %struct.ifmedia_description*, %struct.ifmedia_description** %5, align 8
  %23 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ifmedia_description*, %struct.ifmedia_description** %5, align 8
  %29 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %39

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ifmedia_description*, %struct.ifmedia_description** %5, align 8
  %36 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %35, i32 1
  store %struct.ifmedia_description* %36, %struct.ifmedia_description** %5, align 8
  %37 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %6, align 8
  %38 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %37, i32 1
  store %struct.ifmedia_type_to_subtype* %38, %struct.ifmedia_type_to_subtype** %6, align 8
  br label %21

39:                                               ; preds = %32, %21
  %40 = load %struct.ifmedia_description*, %struct.ifmedia_description** %5, align 8
  %41 = getelementptr inbounds %struct.ifmedia_description, %struct.ifmedia_description* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i8*, i8** %7, align 8
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %92, %47
  %50 = load i8*, i8** %8, align 8
  %51 = call i8* @strtok(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %51, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %79, %53
  %55 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %6, align 8
  %56 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %54
  %65 = load %struct.ifmedia_type_to_subtype*, %struct.ifmedia_type_to_subtype** %6, align 8
  %66 = getelementptr inbounds %struct.ifmedia_type_to_subtype, %struct.ifmedia_type_to_subtype* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @lookup_media_word(i32* %72, i8* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  br label %82

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %54

82:                                               ; preds = %77, %54
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %88
  store i8* null, i8** %8, align 8
  br label %49

93:                                               ; preds = %49
  %94 = load i8*, i8** %7, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load i32, i32* %11, align 4
  ret i32 %96
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @lookup_media_word(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
