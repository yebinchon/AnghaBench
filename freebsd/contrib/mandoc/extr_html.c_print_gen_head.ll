; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_gen_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_gen_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32* }
%struct.tag = type { i32 }

@TAG_META = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@TAG_LINK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"?h??\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rel\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"stylesheet\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"media\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@TAG_STYLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"table.head, table.foot { width: 100%; }\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"td.head-rtitle, td.foot-os { text-align: right; }\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"td.head-vol { text-align: center; }\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"div.Pp { margin: 1ex 0ex; }\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"div.Nd, div.Bf, div.Op { display: inline; }\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"span.Pa, span.Ad { font-style: italic; }\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"span.Ms { font-weight: bold; }\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"dl.Bl-diag \00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c" dt { font-weight: bold; }\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"code.Nm, code.Fl, code.Cm, code.Ic, code.In, code.Fd, code.Fn,\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"code.Cd { font-weight: bold; font-family: inherit; }\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_gen_head(%struct.html* %0) #0 {
  %2 = alloca %struct.html*, align 8
  %3 = alloca %struct.tag*, align 8
  store %struct.html* %0, %struct.html** %2, align 8
  %4 = load %struct.html*, %struct.html** %2, align 8
  %5 = load i32, i32* @TAG_META, align 4
  %6 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %4, i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %7 = load %struct.html*, %struct.html** %2, align 8
  %8 = getelementptr inbounds %struct.html, %struct.html* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.html*, %struct.html** %2, align 8
  %13 = load i32, i32* @TAG_LINK, align 4
  %14 = load %struct.html*, %struct.html** %2, align 8
  %15 = getelementptr inbounds %struct.html, %struct.html* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %12, i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.html*, %struct.html** %2, align 8
  %20 = load i32, i32* @TAG_STYLE, align 4
  %21 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %19, i32 %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  store %struct.tag* %21, %struct.tag** %3, align 8
  %22 = load %struct.html*, %struct.html** %2, align 8
  %23 = call i32 @print_text(%struct.html* %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %24 = load %struct.html*, %struct.html** %2, align 8
  %25 = call i32 @print_endline(%struct.html* %24)
  %26 = load %struct.html*, %struct.html** %2, align 8
  %27 = call i32 @print_text(%struct.html* %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i64 0, i64 0))
  %28 = load %struct.html*, %struct.html** %2, align 8
  %29 = call i32 @print_endline(%struct.html* %28)
  %30 = load %struct.html*, %struct.html** %2, align 8
  %31 = call i32 @print_text(%struct.html* %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %32 = load %struct.html*, %struct.html** %2, align 8
  %33 = call i32 @print_endline(%struct.html* %32)
  %34 = load %struct.html*, %struct.html** %2, align 8
  %35 = call i32 @print_text(%struct.html* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %36 = load %struct.html*, %struct.html** %2, align 8
  %37 = call i32 @print_endline(%struct.html* %36)
  %38 = load %struct.html*, %struct.html** %2, align 8
  %39 = call i32 @print_text(%struct.html* %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0))
  %40 = load %struct.html*, %struct.html** %2, align 8
  %41 = call i32 @print_endline(%struct.html* %40)
  %42 = load %struct.html*, %struct.html** %2, align 8
  %43 = call i32 @print_text(%struct.html* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0))
  %44 = load %struct.html*, %struct.html** %2, align 8
  %45 = call i32 @print_endline(%struct.html* %44)
  %46 = load %struct.html*, %struct.html** %2, align 8
  %47 = call i32 @print_text(%struct.html* %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %48 = load %struct.html*, %struct.html** %2, align 8
  %49 = call i32 @print_endline(%struct.html* %48)
  %50 = load %struct.html*, %struct.html** %2, align 8
  %51 = call i32 @print_text(%struct.html* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %52 = load %struct.html*, %struct.html** %2, align 8
  %53 = call i32 @print_byte(%struct.html* %52, i8 signext 62)
  %54 = load %struct.html*, %struct.html** %2, align 8
  %55 = call i32 @print_text(%struct.html* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %56 = load %struct.html*, %struct.html** %2, align 8
  %57 = call i32 @print_endline(%struct.html* %56)
  %58 = load %struct.html*, %struct.html** %2, align 8
  %59 = call i32 @print_text(%struct.html* %58, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.20, i64 0, i64 0))
  %60 = load %struct.html*, %struct.html** %2, align 8
  %61 = call i32 @print_endline(%struct.html* %60)
  %62 = load %struct.html*, %struct.html** %2, align 8
  %63 = call i32 @print_text(%struct.html* %62, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i64 0, i64 0))
  %64 = load %struct.html*, %struct.html** %2, align 8
  %65 = load %struct.tag*, %struct.tag** %3, align 8
  %66 = call i32 @print_tagq(%struct.html* %64, %struct.tag* %65)
  br label %67

67:                                               ; preds = %18, %11
  ret void
}

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, ...) #1

declare dso_local i32 @print_text(%struct.html*, i8*) #1

declare dso_local i32 @print_endline(%struct.html*) #1

declare dso_local i32 @print_byte(%struct.html*, i8 signext) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
