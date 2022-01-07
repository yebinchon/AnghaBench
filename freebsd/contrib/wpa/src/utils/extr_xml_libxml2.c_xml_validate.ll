; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }
%struct.str_buf = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@add_str = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xml_validate(%struct.xml_node_ctx* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xml_node_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.str_buf, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i8**, i8*** %9, align 8
  store i8* null, i8** %20, align 8
  br label %21

21:                                               ; preds = %19, %4
  %22 = call i32* @xmlNewDoc(i32* bitcast ([4 x i8]* @.str to i32*))
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %102

26:                                               ; preds = %21
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32* @xmlDocCopyNode(i32* %27, i32* %28, i32 1)
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @xmlFreeDoc(i32* %33)
  store i32 -1, i32* %5, align 4
  br label %102

35:                                               ; preds = %26
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @xmlDocSetRootElement(i32* %36, i32* %37)
  %39 = call i32 @os_memset(%struct.str_buf* %16, i32 0, i32 8)
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @xmlSchemaNewParserCtxt(i8* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i64, i64* @add_str, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @add_str, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @xmlSchemaSetParserErrors(i32 %42, i32 %44, i32 %46, %struct.str_buf* %16)
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @xmlSchemaParse(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @xmlSchemaFreeParserCtxt(i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @xmlSchemaNewValidCtxt(i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load i64, i64* @add_str, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* @add_str, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @xmlSchemaSetValidErrors(i32 %54, i32 %56, i32 %58, %struct.str_buf* %16)
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @xmlSchemaValidateDoc(i32 %60, i32* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @xmlSchemaFreeValidCtxt(i32 %63)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @xmlFreeDoc(i32* %65)
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @xmlSchemaFree(i32 %67)
  %69 = load i32, i32* %15, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %35
  %72 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %16, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @os_free(i8* %73)
  store i32 0, i32* %5, align 4
  br label %102

75:                                               ; preds = %35
  %76 = load i32, i32* %15, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i8**, i8*** %9, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %16, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  br label %89

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %16, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @os_free(i8* %87)
  br label %89

89:                                               ; preds = %85, %81
  store i32 -1, i32* %5, align 4
  br label %102

90:                                               ; preds = %75
  %91 = load i8**, i8*** %9, align 8
  %92 = icmp ne i8** %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %16, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load i8**, i8*** %9, align 8
  store i8* %95, i8** %96, align 8
  br label %101

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %16, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @os_free(i8* %99)
  br label %101

101:                                              ; preds = %97, %93
  store i32 -1, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %89, %71, %32, %25
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32* @xmlNewDoc(i32*) #1

declare dso_local i32* @xmlDocCopyNode(i32*, i32*, i32) #1

declare dso_local i32 @xmlFreeDoc(i32*) #1

declare dso_local i32 @xmlDocSetRootElement(i32*, i32*) #1

declare dso_local i32 @os_memset(%struct.str_buf*, i32, i32) #1

declare dso_local i32 @xmlSchemaNewParserCtxt(i8*) #1

declare dso_local i32 @xmlSchemaSetParserErrors(i32, i32, i32, %struct.str_buf*) #1

declare dso_local i32 @xmlSchemaParse(i32) #1

declare dso_local i32 @xmlSchemaFreeParserCtxt(i32) #1

declare dso_local i32 @xmlSchemaNewValidCtxt(i32) #1

declare dso_local i32 @xmlSchemaSetValidErrors(i32, i32, i32, %struct.str_buf*) #1

declare dso_local i32 @xmlSchemaValidateDoc(i32, i32*) #1

declare dso_local i32 @xmlSchemaFreeValidCtxt(i32) #1

declare dso_local i32 @xmlSchemaFree(i32) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
