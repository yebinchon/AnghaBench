; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_gen_comment.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_gen_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32 }
%struct.roff_node = type { i64, i8*, %struct.roff_node* }

@.str = private unnamed_addr constant [60 x i8] c"<!-- This is an automatically generated file.  Do not edit.\00", align 1
@ROFFT_COMMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" -->\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_gen_comment(%struct.html* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca i32, align 4
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %6 = load %struct.html*, %struct.html** %3, align 8
  %7 = call i32 @print_word(%struct.html* %6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.html*, %struct.html** %3, align 8
  %9 = getelementptr inbounds %struct.html, %struct.html* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %12 = icmp ne %struct.roff_node* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ROFFT_COMMENT, align 8
  %18 = icmp eq i64 %16, %17
  br label %19

19:                                               ; preds = %13, %10
  %20 = phi i1 [ false, %10 ], [ %18, %13 ]
  br i1 %20, label %21, label %58

21:                                               ; preds = %19
  %22 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %23 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32* @strstr(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %32 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30, %27
  %38 = load %struct.html*, %struct.html** %3, align 8
  %39 = call i32 @print_endline(%struct.html* %38)
  %40 = load %struct.html*, %struct.html** %3, align 8
  %41 = call i32 @print_indent(%struct.html* %40)
  %42 = load %struct.html*, %struct.html** %3, align 8
  %43 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %44 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @print_word(%struct.html* %42, i8* %45)
  %47 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %48 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %37, %30, %21
  %55 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %56 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %55, i32 0, i32 2
  %57 = load %struct.roff_node*, %struct.roff_node** %56, align 8
  store %struct.roff_node* %57, %struct.roff_node** %4, align 8
  br label %10

58:                                               ; preds = %19
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.html*, %struct.html** %3, align 8
  %63 = call i32 @print_endline(%struct.html* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.html*, %struct.html** %3, align 8
  %66 = call i32 @print_word(%struct.html* %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.html*, %struct.html** %3, align 8
  %68 = call i32 @print_endline(%struct.html* %67)
  %69 = load %struct.html*, %struct.html** %3, align 8
  %70 = getelementptr inbounds %struct.html, %struct.html* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  ret void
}

declare dso_local i32 @print_word(%struct.html*, i8*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @print_endline(%struct.html*) #1

declare dso_local i32 @print_indent(%struct.html*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
