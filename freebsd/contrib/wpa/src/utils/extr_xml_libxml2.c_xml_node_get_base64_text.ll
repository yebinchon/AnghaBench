; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_get_base64_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_get_base64_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xml_node_get_base64_text(%struct.xml_node_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xml_node_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i8* @xml_node_get_text(%struct.xml_node_ctx* %11, i32* %12)
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = call i8* @base64_decode(i8* %18, i32 %20, i64* %10)
  store i8* %21, i8** %9, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* %10, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %24, %17
  %29 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @xml_node_get_text_free(%struct.xml_node_ctx* %29, i8* %30)
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %53

35:                                               ; preds = %28
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, 1
  %38 = call i8* @os_malloc(i64 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @os_free(i8* %42)
  store i8* null, i8** %4, align 8
  br label %53

44:                                               ; preds = %35
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @os_memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %8, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %44, %41, %34, %16
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i8* @xml_node_get_text(%struct.xml_node_ctx*, i32*) #1

declare dso_local i8* @base64_decode(i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xml_node_get_text_free(%struct.xml_node_ctx*, i8*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
