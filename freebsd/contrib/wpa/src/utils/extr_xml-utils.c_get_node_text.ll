; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_get_node_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_get_node_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xml_node_ctx*, i32*, i8*)* @get_node_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_node_text(%struct.xml_node_ctx* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.xml_node_ctx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i32* @get_first_child_node(%struct.xml_node_ctx* %8, i32* %9, i8* %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i8* @xml_node_get_text(%struct.xml_node_ctx* %16, i32* %17)
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %15, %14
  %20 = load i8*, i8** %4, align 8
  ret i8* %20
}

declare dso_local i32* @get_first_child_node(%struct.xml_node_ctx*, i32*, i8*) #1

declare dso_local i8* @xml_node_get_text(%struct.xml_node_ctx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
