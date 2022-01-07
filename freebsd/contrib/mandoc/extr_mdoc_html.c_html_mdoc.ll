; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_html_mdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_html_mdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.roff_node* }
%struct.roff_node = type { i64 }
%struct.html = type { i32 }
%struct.tag = type { i32 }

@HTML_FRAGMENT = common dso_local global i32 0, align 4
@TAG_HTML = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ROFFT_COMMENT = common dso_local global i64 0, align 8
@TAG_HEAD = common dso_local global i32 0, align 4
@TAG_BODY = common dso_local global i32 0, align 4
@TAG_DIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"manual-text\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @html_mdoc(i8* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca %struct.html*, align 8
  %6 = alloca %struct.roff_node*, align 8
  %7 = alloca %struct.tag*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.html*
  store %struct.html* %9, %struct.html** %5, align 8
  %10 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %11 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.roff_node*, %struct.roff_node** %13, align 8
  store %struct.roff_node* %14, %struct.roff_node** %6, align 8
  %15 = load %struct.html*, %struct.html** %5, align 8
  %16 = getelementptr inbounds %struct.html, %struct.html* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HTML_FRAGMENT, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %2
  %22 = load %struct.html*, %struct.html** %5, align 8
  %23 = call i32 @print_gen_decls(%struct.html* %22)
  %24 = load %struct.html*, %struct.html** %5, align 8
  %25 = load i32, i32* @TAG_HTML, align 4
  %26 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %24, i32 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %28 = icmp ne %struct.roff_node* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %31 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ROFFT_COMMENT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.html*, %struct.html** %5, align 8
  %37 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %38 = call i32 @print_gen_comment(%struct.html* %36, %struct.roff_node* %37)
  br label %39

39:                                               ; preds = %35, %29, %21
  %40 = load %struct.html*, %struct.html** %5, align 8
  %41 = load i32, i32* @TAG_HEAD, align 4
  %42 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %40, i32 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store %struct.tag* %42, %struct.tag** %7, align 8
  %43 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %44 = load %struct.html*, %struct.html** %5, align 8
  %45 = call i32 @print_mdoc_head(%struct.roff_meta* %43, %struct.html* %44)
  %46 = load %struct.html*, %struct.html** %5, align 8
  %47 = load %struct.tag*, %struct.tag** %7, align 8
  %48 = call i32 @print_tagq(%struct.html* %46, %struct.tag* %47)
  %49 = load %struct.html*, %struct.html** %5, align 8
  %50 = load i32, i32* @TAG_BODY, align 4
  %51 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %49, i32 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %39, %2
  %53 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %54 = load %struct.html*, %struct.html** %5, align 8
  %55 = call i32 @mdoc_root_pre(%struct.roff_meta* %53, %struct.html* %54)
  %56 = load %struct.html*, %struct.html** %5, align 8
  %57 = load i32, i32* @TAG_DIV, align 4
  %58 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %56, i32 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store %struct.tag* %58, %struct.tag** %7, align 8
  %59 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %60 = load %struct.roff_node*, %struct.roff_node** %6, align 8
  %61 = load %struct.html*, %struct.html** %5, align 8
  %62 = call i32 @print_mdoc_nodelist(%struct.roff_meta* %59, %struct.roff_node* %60, %struct.html* %61)
  %63 = load %struct.html*, %struct.html** %5, align 8
  %64 = load %struct.tag*, %struct.tag** %7, align 8
  %65 = call i32 @print_tagq(%struct.html* %63, %struct.tag* %64)
  %66 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %67 = load %struct.html*, %struct.html** %5, align 8
  %68 = call i32 @mdoc_root_post(%struct.roff_meta* %66, %struct.html* %67)
  %69 = load %struct.html*, %struct.html** %5, align 8
  %70 = call i32 @print_tagq(%struct.html* %69, %struct.tag* null)
  ret void
}

declare dso_local i32 @print_gen_decls(%struct.html*) #1

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, ...) #1

declare dso_local i32 @print_gen_comment(%struct.html*, %struct.roff_node*) #1

declare dso_local i32 @print_mdoc_head(%struct.roff_meta*, %struct.html*) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @mdoc_root_pre(%struct.roff_meta*, %struct.html*) #1

declare dso_local i32 @print_mdoc_nodelist(%struct.roff_meta*, %struct.roff_node*, %struct.html*) #1

declare dso_local i32 @mdoc_root_post(%struct.roff_meta*, %struct.html*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
