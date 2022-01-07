; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_add_mo_container.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/hs20/client/extr_spp_client.c_add_mo_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@errno = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Failed to create XML node from file: %s, possible error: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"syncml:dmddf1.2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"moContainer\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"moURN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xml_node_ctx*, i32*, i32*, i8*, i8*)* @add_mo_container to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_mo_container(%struct.xml_node_ctx* %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.xml_node_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* @errno, align 8
  %15 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = call i32* @node_from_file(%struct.xml_node_ctx* %15, i8* %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i64, i64* @errno, align 8
  %24 = call i32 @strerror(i64 %23)
  %25 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %24)
  br label %64

26:                                               ; preds = %5
  %27 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %28 = load i32*, i32** %12, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32* @mo_to_tnds(%struct.xml_node_ctx* %27, i32* %28, i32 0, i8* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32* %30, i32** %13, align 8
  %31 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @xml_node_free(%struct.xml_node_ctx* %31, i32* %32)
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %64

37:                                               ; preds = %26
  %38 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i8* @xml_node_to_str(%struct.xml_node_ctx* %38, i32* %39)
  store i8* %40, i8** %14, align 8
  %41 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @xml_node_free(%struct.xml_node_ctx* %41, i32* %42)
  %44 = load i8*, i8** %14, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call i32* @xml_node_create_text(%struct.xml_node_ctx* %48, i32* %49, i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32* %52, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %6, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @xml_node_add_attr(%struct.xml_node_ctx* %56, i32* %57, i32* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @os_free(i8* %62)
  br label %64

64:                                               ; preds = %61, %46, %36, %20
  ret void
}

declare dso_local i32* @node_from_file(%struct.xml_node_ctx*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32* @mo_to_tnds(%struct.xml_node_ctx*, i32*, i32, i8*, i8*) #1

declare dso_local i32 @xml_node_free(%struct.xml_node_ctx*, i32*) #1

declare dso_local i8* @xml_node_to_str(%struct.xml_node_ctx*, i32*) #1

declare dso_local i32* @xml_node_create_text(%struct.xml_node_ctx*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @xml_node_add_attr(%struct.xml_node_ctx*, i32*, i32*, i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
