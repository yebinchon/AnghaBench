; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_xml_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not XML_ParserCreate\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"XML_Parse failure %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"XML was parsed successfully, %d keys\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"got DS bio %d: '\00", align 1
@stdout = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"error writing to stdout\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @xml_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @xml_parse(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.xml_data, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @XML_ParserCreate(i32* null)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @verb, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = call i32 @exit(i32 0) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @xml_parse_setup(i32 %22, %struct.xml_data* %9, i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @BIO_seek(i32* %25, i32 0)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @BIO_get_mem_data(i32* %27, i8** %6)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %31, %21
  %35 = load i32, i32* @verb, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %34
  %40 = call i32 @exit(i32 0) #3
  unreachable

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @XML_Parse(i32 %42, i8* %43, i32 %44, i32 1)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @XML_GetErrorCode(i32 %48)
  %50 = call i8* @XML_ErrorString(i32 %49)
  store i8* %50, i8** %10, align 8
  %51 = load i32, i32* @verb, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i8*, i8** %10, align 8
  br label %59

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %58 ]
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %47
  %63 = call i32 @exit(i32 0) #3
  unreachable

64:                                               ; preds = %41
  %65 = load i32, i32* @verb, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @free(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @XML_ParserFree(i32 %75)
  %77 = load i32, i32* @verb, align 4
  %78 = icmp sge i32 %77, 4
  br i1 %78, label %79, label %99

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @BIO_seek(i32* %81, i32 0)
  %83 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @BIO_get_mem_data(i32* %84, i8** %6)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %86)
  %88 = load i8*, i8** %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fwrite(i8* %88, i64 %90, i32 1, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %79
  %95 = load i32, i32* @stderr, align 4
  %96 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %79
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %71
  %100 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 6
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @BIO_free(i32* %101)
  %103 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @BIO_free(i32* %104)
  %106 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @BIO_free(i32* %107)
  %109 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @BIO_free(i32* %110)
  %112 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @BIO_free(i32* %113)
  %115 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %99
  %119 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @BIO_free(i32* %120)
  store i32* null, i32** %3, align 8
  br label %125

122:                                              ; preds = %99
  %123 = getelementptr inbounds %struct.xml_data, %struct.xml_data* %9, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %3, align 8
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i32*, i32** %3, align 8
  ret i32* %126
}

declare dso_local i32 @XML_ParserCreate(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @xml_parse_setup(i32, %struct.xml_data*, i32) #1

declare dso_local i32 @BIO_seek(i32*, i32) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @XML_Parse(i32, i8*, i32, i32) #1

declare dso_local i8* @XML_ErrorString(i32) #1

declare dso_local i32 @XML_GetErrorCode(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @XML_ParserFree(i32) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
