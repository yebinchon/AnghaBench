; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_soap_build_envelope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_soap_build_envelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"http://www.w3.org/2003/05/soap-envelope\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"soap12\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Envelope\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Body\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @soap_build_envelope(%struct.xml_node_ctx* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xml_node_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %10 = call i32* @xml_node_create_root(%struct.xml_node_ctx* %9, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @xml_node_create(%struct.xml_node_ctx* %15, i32* %16, i32* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  %19 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @xml_node_add_child(%struct.xml_node_ctx* %19, i32* %20, i32* %21)
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %3, align 8
  br label %24

24:                                               ; preds = %14, %13
  %25 = load i32*, i32** %3, align 8
  ret i32* %25
}

declare dso_local i32* @xml_node_create_root(%struct.xml_node_ctx*, i8*, i8*, i32**, i8*) #1

declare dso_local i32* @xml_node_create(%struct.xml_node_ctx*, i32*, i32*, i8*) #1

declare dso_local i32 @xml_node_add_child(%struct.xml_node_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
