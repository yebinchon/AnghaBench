; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_mo_to_tnds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_mo_to_tnds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"MgmtTree\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"VerDTD\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Node\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"NodeName\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @mo_to_tnds(%struct.xml_node_ctx* %0, i32* %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xml_node_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = call i32* @xml_node_create_root(%struct.xml_node_ctx* %15, i8* %16, i32* null, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %70

21:                                               ; preds = %5
  %22 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @xml_node_create_text(%struct.xml_node_ctx* %22, i32* %23, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i8* @xml_node_get_localname(%struct.xml_node_ctx* %25, i32* %26)
  store i8* %27, i8** %14, align 8
  %28 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32* @xml_node_create(%struct.xml_node_ctx* %28, i32* %29, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %66

34:                                               ; preds = %21
  %35 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i8*, i8** %14, align 8
  %38 = call i32 @xml_node_create_text(%struct.xml_node_ctx* %35, i32* %36, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @add_ddfname(%struct.xml_node_ctx* %42, i32* %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %12, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i32*, i32** %13, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32* [ %51, %50 ], [ %53, %52 ]
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i8*, i8** %14, align 8
  br label %62

61:                                               ; preds = %54
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i8* [ %60, %59 ], [ null, %61 ]
  %64 = call i32 @node_to_tnds(%struct.xml_node_ctx* %47, i32* %55, i32* %56, i8* %63)
  %65 = load i32*, i32** %12, align 8
  store i32* %65, i32** %6, align 8
  br label %70

66:                                               ; preds = %33
  %67 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %7, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @xml_node_free(%struct.xml_node_ctx* %67, i32* %68)
  store i32* null, i32** %6, align 8
  br label %70

70:                                               ; preds = %66, %62, %20
  %71 = load i32*, i32** %6, align 8
  ret i32* %71
}

declare dso_local i32* @xml_node_create_root(%struct.xml_node_ctx*, i8*, i32*, i32*, i8*) #1

declare dso_local i32 @xml_node_create_text(%struct.xml_node_ctx*, i32*, i32*, i8*, i8*) #1

declare dso_local i8* @xml_node_get_localname(%struct.xml_node_ctx*, i32*) #1

declare dso_local i32* @xml_node_create(%struct.xml_node_ctx*, i32*, i32*, i8*) #1

declare dso_local i32 @add_ddfname(%struct.xml_node_ctx*, i32*, i8*) #1

declare dso_local i32 @node_to_tnds(%struct.xml_node_ctx*, i32*, i32*, i8*) #1

declare dso_local i32 @xml_node_free(%struct.xml_node_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
