; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_validate_dtd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_validate_dtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }
%struct.str_buf = type { i8*, i8*, i8*, %struct.str_buf* }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@add_str = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xml_validate_dtd(%struct.xml_node_ctx* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xml_node_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.str_buf, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.str_buf, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i8**, i8*** %9, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %4
  %21 = call i32* @xmlNewDoc(i32* bitcast ([4 x i8]* @.str to i32*))
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %79

25:                                               ; preds = %20
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32* @xmlDocCopyNode(i32* %26, i32* %27, i32 1)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @xmlFreeDoc(i32* %32)
  store i32 -1, i32* %5, align 4
  br label %79

34:                                               ; preds = %25
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @xmlDocSetRootElement(i32* %35, i32* %36)
  %38 = call i32 @os_memset(%struct.str_buf* %15, i32 0, i32 32)
  %39 = load i8*, i8** %8, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = call i32* @xmlParseDTD(i32* null, i32* %40)
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @xmlFreeDoc(i32* %45)
  store i32 -1, i32* %5, align 4
  br label %79

47:                                               ; preds = %34
  %48 = call i32 @os_memset(%struct.str_buf* %12, i32 0, i32 32)
  %49 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %12, i32 0, i32 3
  store %struct.str_buf* %15, %struct.str_buf** %49, align 8
  %50 = load i8*, i8** @add_str, align 8
  %51 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %12, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** @add_str, align 8
  %53 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %12, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @xmlValidateDtd(%struct.str_buf* %12, i32* %54, i32* %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @xmlFreeDoc(i32* %57)
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @xmlFreeDtd(i32* %59)
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %47
  %64 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %15, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @os_free(i8* %65)
  store i32 0, i32* %5, align 4
  br label %79

67:                                               ; preds = %47
  %68 = load i8**, i8*** %9, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %15, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  br label %78

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.str_buf, %struct.str_buf* %15, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @os_free(i8* %76)
  br label %78

78:                                               ; preds = %74, %70
  store i32 -1, i32* %5, align 4
  br label %79

79:                                               ; preds = %78, %63, %44, %31, %24
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32* @xmlNewDoc(i32*) #1

declare dso_local i32* @xmlDocCopyNode(i32*, i32*, i32) #1

declare dso_local i32 @xmlFreeDoc(i32*) #1

declare dso_local i32 @xmlDocSetRootElement(i32*, i32*) #1

declare dso_local i32 @os_memset(%struct.str_buf*, i32, i32) #1

declare dso_local i32* @xmlParseDTD(i32*, i32*) #1

declare dso_local i32 @xmlValidateDtd(%struct.str_buf*, i32*, i32*) #1

declare dso_local i32 @xmlFreeDtd(i32*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
