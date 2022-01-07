; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_node_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_xml-utils.c_node_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xml_node_ctx = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"<!DOCTYPE \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @node_from_file(%struct.xml_node_ctx* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.xml_node_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.xml_node_ctx* %0, %struct.xml_node_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @os_readfile(i8* %13, i64* %10)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %90

18:                                               ; preds = %2
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, 1
  %22 = call i8* @os_realloc(i8* %19, i64 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @os_free(i8* %26)
  store i32* null, i32** %3, align 8
  br label %90

28:                                               ; preds = %18
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* @os_strstr(i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %83

37:                                               ; preds = %28
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8* %39, i8** %11, align 8
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %67, %37
  %41 = load i8*, i8** %11, align 8
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 60
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %67

52:                                               ; preds = %44
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 62
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %11, align 8
  br label %70

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %52
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  br label %40

70:                                               ; preds = %62, %40
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @os_memset(i8* %74, i8 signext 32, i32 %80)
  br label %82

82:                                               ; preds = %73, %70
  br label %83

83:                                               ; preds = %82, %28
  %84 = load %struct.xml_node_ctx*, %struct.xml_node_ctx** %4, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = call i32* @xml_node_from_buf(%struct.xml_node_ctx* %84, i8* %85)
  store i32* %86, i32** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @os_free(i8* %87)
  %89 = load i32*, i32** %6, align 8
  store i32* %89, i32** %3, align 8
  br label %90

90:                                               ; preds = %83, %25, %17
  %91 = load i32*, i32** %3, align 8
  ret i32* %91
}

declare dso_local i8* @os_readfile(i8*, i64*) #1

declare dso_local i8* @os_realloc(i8*, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_strstr(i8*, i8*) #1

declare dso_local i32 @os_memset(i8*, i8 signext, i32) #1

declare dso_local i32* @xml_node_from_buf(%struct.xml_node_ctx*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
