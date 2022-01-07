; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_node_to_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_node_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @node_to_file(%struct.xml_node_ctx* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xml_node_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %5, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i8* @xml_node_to_str(%struct.xml_node_ctx* %10, i32* %11)
  store i8* %12, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @os_free(i8* %22)
  store i32 -1, i32* %4, align 4
  br label %32

24:                                               ; preds = %16
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @fprintf(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @os_free(i8* %28)
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @fclose(i32* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %21, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i8* @xml_node_to_str(%struct.xml_node_ctx*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
