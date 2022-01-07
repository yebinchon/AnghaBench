; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_add_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_add_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xml_node_add_attr(%struct.xml_node_ctx* %0, i32* %1, i32* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.xml_node_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %5
  %15 = load i32*, i32** %7, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = load i32*, i32** %8, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to i32*
  %23 = call i64 @xmlNewNsProp(i32 %16, i32 %18, i32* %20, i32* %22)
  store i64 %23, i64* %11, align 8
  br label %32

24:                                               ; preds = %5
  %25 = load i32*, i32** %7, align 8
  %26 = ptrtoint i32* %25 to i32
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i8*, i8** %10, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = call i64 @xmlNewProp(i32 %26, i32* %28, i32* %30)
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %24, %14
  %33 = load i64, i64* %11, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 -1
  ret i32 %36
}

declare dso_local i64 @xmlNewNsProp(i32, i32, i32*, i32*) #1

declare dso_local i64 @xmlNewProp(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
