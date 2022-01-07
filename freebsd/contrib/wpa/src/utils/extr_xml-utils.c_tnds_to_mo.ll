; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_tnds_to_mo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_tnds_to_mo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"MgmtTree\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tnds_to_mo(%struct.xml_node_ctx* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xml_node_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i8* @xml_node_get_localname(%struct.xml_node_ctx* %8, i32* %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @os_strcmp(i8* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  store i32* null, i32** %3, align 8
  br label %29

18:                                               ; preds = %13
  %19 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @get_first_child_node(%struct.xml_node_ctx* %19, i32* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32* null, i32** %3, align 8
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @tnds_to_mo_iter(%struct.xml_node_ctx* %26, i32* null, i32* %27, i32* null)
  store i32* %28, i32** %3, align 8
  br label %29

29:                                               ; preds = %25, %24, %17
  %30 = load i32*, i32** %3, align 8
  ret i32* %30
}

declare dso_local i8* @xml_node_get_localname(%struct.xml_node_ctx*, i32*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32* @get_first_child_node(%struct.xml_node_ctx*, i32*, i8*) #1

declare dso_local i32* @tnds_to_mo_iter(%struct.xml_node_ctx*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
