; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_create_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml_libxml2.c_xml_node_create_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @xml_node_create_root(%struct.xml_node_ctx* %0, i8* %1, i8* %2, i32** %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.xml_node_ctx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %13, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to i32*
  %16 = call i32* @xmlNewNode(i32* null, i32* %15)
  store i32* %16, i32** %12, align 8
  %17 = load i32*, i32** %12, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %41

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i32*, i32** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = call i32* @xmlNewNs(i32* %24, i32* %26, i32* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @xmlSetNs(i32* %30, i32* %31)
  br label %33

33:                                               ; preds = %23, %20
  %34 = load i32**, i32*** %10, align 8
  %35 = icmp ne i32** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32*, i32** %13, align 8
  %38 = load i32**, i32*** %10, align 8
  store i32* %37, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %12, align 8
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %39, %19
  %42 = load i32*, i32** %6, align 8
  ret i32* %42
}

declare dso_local i32* @xmlNewNode(i32*, i32*) #1

declare dso_local i32* @xmlNewNs(i32*, i32*, i32*) #1

declare dso_local i32 @xmlSetNs(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
