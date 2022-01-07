; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<?xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xml_node_to_str(%struct.xml_node_ctx* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xml_node_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = ptrtoint i32* %12 to i32
  store i32 %13, i32* %10, align 4
  %14 = call i32 @xmlNewDoc(i32* bitcast ([4 x i8]* @.str to i32*))
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @xmlDocCopyNode(i32 %15, i32 %16, i32 1)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @xmlDocSetRootElement(i32 %18, i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @xmlDocDumpFormatMemory(i32 %21, i32** %6, i32* %7, i32 0)
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @xmlFreeDoc(i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %110

28:                                               ; preds = %2
  %29 = load i32*, i32** %6, align 8
  %30 = bitcast i32* %29 to i8*
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i64 @strncmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load i8*, i8** %9, align 8
  %36 = call i8* @strchr(i8* %35, i8 signext 62)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i8*, i8** %9, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i8*, i8** %9, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 13
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ true, %46 ], [ %55, %51 ]
  br label %58

58:                                               ; preds = %56, %43
  %59 = phi i1 [ false, %43 ], [ %57, %56 ]
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %9, align 8
  br label %43

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i8*, i8** %9, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = call i8* @os_strdup(i8* %68)
  store i8* %69, i8** %8, align 8
  br label %71

70:                                               ; preds = %64
  store i8* null, i8** %8, align 8
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @xmlFree(i32* %72)
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %108

76:                                               ; preds = %71
  %77 = load i8*, i8** %8, align 8
  store i8* %77, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %88, %82
  %84 = load i8*, i8** %9, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i8*, i8** %9, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %9, align 8
  br label %83

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %76
  br label %93

93:                                               ; preds = %104, %92
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = icmp uge i8* %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i8*, i8** %9, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 10
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i1 [ false, %93 ], [ %101, %97 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %9, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 -1
  store i8* %106, i8** %9, align 8
  store i8 0, i8* %105, align 1
  br label %93

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %71
  %109 = load i8*, i8** %8, align 8
  store i8* %109, i8** %3, align 8
  br label %110

110:                                              ; preds = %108, %27
  %111 = load i8*, i8** %3, align 8
  ret i8* %111
}

declare dso_local i32 @xmlNewDoc(i32*) #1

declare dso_local i32 @xmlDocCopyNode(i32, i32, i32) #1

declare dso_local i32 @xmlDocSetRootElement(i32, i32) #1

declare dso_local i32 @xmlDocDumpFormatMemory(i32, i32**, i32*, i32) #1

declare dso_local i32 @xmlFreeDoc(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @os_strdup(i8*) #1

declare dso_local i32 @xmlFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
