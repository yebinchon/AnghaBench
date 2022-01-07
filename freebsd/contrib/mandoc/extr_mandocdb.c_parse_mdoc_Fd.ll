; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_Fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_meta = type { i32 }
%struct.roff_node = type { i64, i64, i8*, %struct.roff_node*, %struct.roff_node* }

@SEC_SYNOPSIS = common dso_local global i64 0, align 8
@ROFFT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"#include\00", align 1
@TYPE_In = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpage*, %struct.roff_meta*, %struct.roff_node*)* @parse_mdoc_Fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_mdoc_Fd(%struct.mpage* %0, %struct.roff_meta* %1, %struct.roff_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpage*, align 8
  %6 = alloca %struct.roff_meta*, align 8
  %7 = alloca %struct.roff_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.mpage* %0, %struct.mpage** %5, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %6, align 8
  store %struct.roff_node* %2, %struct.roff_node** %7, align 8
  %11 = load i64, i64* @SEC_SYNOPSIS, align 8
  %12 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %13 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %3
  %17 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %18 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %17, i32 0, i32 4
  %19 = load %struct.roff_node*, %struct.roff_node** %18, align 8
  store %struct.roff_node* %19, %struct.roff_node** %7, align 8
  %20 = icmp eq %struct.roff_node* null, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %23 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ROFFT_TEXT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %16, %3
  store i32 0, i32* %4, align 4
  br label %104

28:                                               ; preds = %21
  %29 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %30 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %29, i32 0, i32 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %104

35:                                               ; preds = %28
  %36 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %37 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %36, i32 0, i32 3
  %38 = load %struct.roff_node*, %struct.roff_node** %37, align 8
  store %struct.roff_node* %38, %struct.roff_node** %7, align 8
  %39 = icmp eq %struct.roff_node* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %42 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ROFFT_TEXT, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %35
  store i32 0, i32* %4, align 4
  br label %104

47:                                               ; preds = %40
  %48 = load %struct.roff_node*, %struct.roff_node** %7, align 8
  %49 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 60, %53
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = load i8*, i8** %8, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 34, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %47
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %8, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i8*, i8** %8, align 8
  %65 = call i64 @strlen(i8* %64)
  store i64 %65, i64* %10, align 8
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %104

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %10, align 8
  %71 = trunc i64 %70 to i32
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %69, i64 %73
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 62, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %68
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 34, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %79, %68
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 -1
  store i8* %86, i8** %9, align 8
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = icmp ugt i8* %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %87
  %92 = load %struct.mpage*, %struct.mpage** %5, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = ptrtoint i8* %94 to i64
  %97 = ptrtoint i8* %95 to i64
  %98 = sub i64 %96, %97
  %99 = add nsw i64 %98, 1
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* @TYPE_In, align 4
  %102 = call i32 @putkeys(%struct.mpage* %92, i8* %93, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %91, %87
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %67, %46, %34, %27
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @putkeys(%struct.mpage*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
