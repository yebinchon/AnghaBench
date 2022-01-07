; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_add_mo_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_add_mo_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"NodeName\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Path\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Could not find URI '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.xml_node_ctx*, i32*, i32*, i8*)* @add_mo_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_mo_node(%struct.xml_node_ctx* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xml_node_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i8* @get_node_text(%struct.xml_node_ctx* %14, i32* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %101

20:                                               ; preds = %4
  %21 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i8* @get_node_text(%struct.xml_node_ctx* %21, i32* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %23, i8** %11, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32* @xml_node_create_root(%struct.xml_node_ctx* %27, i32* null, i32* null, i32* null, i8* %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @xml_node_set_text(%struct.xml_node_ctx* %36, i32* %37, i8* %38)
  br label %40

40:                                               ; preds = %35, %32, %26
  br label %93

41:                                               ; preds = %20
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %45, i8* %46)
  %48 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %48, i8* %49)
  store i32* null, i32** %5, align 8
  br label %101

51:                                               ; preds = %41
  %52 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = call i8* @get_node_text(%struct.xml_node_ctx* %52, i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i8*, i8** %12, align 8
  store i8* %58, i8** %9, align 8
  br label %59

59:                                               ; preds = %57, %51
  %60 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32* @get_node_uri(%struct.xml_node_ctx* %60, i32* %61, i8* %62)
  store i32* %63, i32** %13, align 8
  %64 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %64, i8* %65)
  %67 = load i32*, i32** %13, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %59
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %70)
  %72 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %72, i8* %73)
  %75 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %75, i8* %76)
  store i32* null, i32** %5, align 8
  br label %101

78:                                               ; preds = %59
  %79 = load i8*, i8** %11, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @xml_node_create_text(%struct.xml_node_ctx* %82, i32* %83, i32* null, i8* %84, i8* %85)
  br label %92

87:                                               ; preds = %78
  %88 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @xml_node_create(%struct.xml_node_ctx* %88, i32* %89, i32* null, i8* %90)
  br label %92

92:                                               ; preds = %87, %81
  br label %93

93:                                               ; preds = %92, %40
  %94 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %94, i8* %95)
  %97 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %97, i8* %98)
  %100 = load i32*, i32** %7, align 8
  store i32* %100, i32** %5, align 8
  br label %101

101:                                              ; preds = %93, %69, %44, %19
  %102 = load i32*, i32** %5, align 8
  ret i32* %102
}

declare dso_local i8* @get_node_text(%struct.xml_node_ctx*, i32*, i8*) #1

declare dso_local i32* @xml_node_create_root(%struct.xml_node_ctx*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @xml_node_set_text(%struct.xml_node_ctx*, i32*, i8*) #1

declare dso_local i32 @xml_node_get_text_free(%struct.xml_node_ctx*, i8*) #1

declare dso_local i32* @get_node_uri(%struct.xml_node_ctx*, i32*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @xml_node_create_text(%struct.xml_node_ctx*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @xml_node_create(%struct.xml_node_ctx*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
