; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_html_make_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_html_make_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_node = type { i64, %struct.roff_node*, %struct.roff_node* }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"!$&'()*+,-./:;=?@_~\00", align 1
@id_unique = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @html_make_id(%struct.roff_node* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.roff_node* %0, %struct.roff_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %13 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %12, i32 0, i32 2
  %14 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  store %struct.roff_node* %14, %struct.roff_node** %6, align 8
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %17 = icmp ne %struct.roff_node* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %20 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ROFFT_TEXT, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i8* null, i8** %3, align 8
  br label %101

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %28 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %27, i32 0, i32 1
  %29 = load %struct.roff_node*, %struct.roff_node** %28, align 8
  store %struct.roff_node* %29, %struct.roff_node** %6, align 8
  br label %15

30:                                               ; preds = %15
  store i8* null, i8** %7, align 8
  %31 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %32 = call i32 @deroff(i8** %7, %struct.roff_node* %31)
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8* null, i8** %3, align 8
  br label %101

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  store i8* %37, i8** %9, align 8
  br label %38

38:                                               ; preds = %56, %36
  %39 = load i8*, i8** %9, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isalnum(i8 zeroext %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32* @strchr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 signext %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  store i8 95, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %48, %43
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %38

59:                                               ; preds = %38
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i8*, i8** %7, align 8
  store i8* %63, i8** %3, align 8
  br label %101

64:                                               ; preds = %59
  store i8* null, i8** %8, align 8
  store i32 1, i32* %11, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @ohash_qlookup(i32* @id_unique, i8* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i8* @ohash_find(i32* @id_unique, i32 %67)
  store i8* %68, i8** %9, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %96

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %84, %71
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @free(i8* %76)
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  %80 = icmp sgt i32 %79, 127
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @free(i8* %82)
  store i8* null, i8** %3, align 8
  br label %101

84:                                               ; preds = %75
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @mandoc_asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %85, i32 %86)
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @ohash_qlookup(i32* @id_unique, i8* %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i8* @ohash_find(i32* @id_unique, i32 %90)
  store i8* %91, i8** %9, align 8
  br label %72

92:                                               ; preds = %72
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %8, align 8
  store i8* %95, i8** %7, align 8
  br label %96

96:                                               ; preds = %92, %64
  %97 = load i32, i32* %10, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @ohash_insert(i32* @id_unique, i32 %97, i8* %98)
  %100 = load i8*, i8** %7, align 8
  store i8* %100, i8** %3, align 8
  br label %101

101:                                              ; preds = %96, %81, %62, %35, %24
  %102 = load i8*, i8** %3, align 8
  ret i8* %102
}

declare dso_local i32 @deroff(i8**, %struct.roff_node*) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ohash_qlookup(i32*, i8*) #1

declare dso_local i8* @ohash_find(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @ohash_insert(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
