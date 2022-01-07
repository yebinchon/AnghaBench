; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_charhandle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_charhandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i8*, i64, i32* }

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s%s charhandle: '\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"use \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Zone\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"out of memory in BIO_write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32)* @xml_charhandle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xml_charhandle(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xml_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.xml_data*
  store %struct.xml_data* %11, %struct.xml_data** %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %13 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %105

17:                                               ; preds = %3
  %18 = load i32, i32* @verb, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %22 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %28 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %33 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %35 ]
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %37)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %50, %36
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %39

53:                                               ; preds = %39
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %17
  %56 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %57 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @strcasecmp(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %63 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @BIO_write(i32* %64, i32* %65, i32 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i32, i32* @verb, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %69
  %75 = call i32 @exit(i32 0) #3
  unreachable

76:                                               ; preds = %61
  br label %105

77:                                               ; preds = %55
  %78 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %79 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %105

83:                                               ; preds = %77
  %84 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %85 = load %struct.xml_data*, %struct.xml_data** %7, align 8
  %86 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32* @xml_selectbio(%struct.xml_data* %84, i8* %87)
  store i32* %88, i32** %8, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %83
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i64 @BIO_write(i32* %92, i32* %93, i32 %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32, i32* @verb, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  %103 = call i32 @exit(i32 0) #3
  unreachable

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %16, %76, %82, %104, %83
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @BIO_write(i32*, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @xml_selectbio(%struct.xml_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
