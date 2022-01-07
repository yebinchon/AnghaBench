; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_print_mdoc_head.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_print_mdoc_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i32, i32*, i32* }
%struct.html = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s(%s) (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@TAG_TITLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_meta*, %struct.html*)* @print_mdoc_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mdoc_head(%struct.roff_meta* %0, %struct.html* %1) #0 {
  %3 = alloca %struct.roff_meta*, align 8
  %4 = alloca %struct.html*, align 8
  %5 = alloca i8*, align 8
  store %struct.roff_meta* %0, %struct.roff_meta** %3, align 8
  store %struct.html* %1, %struct.html** %4, align 8
  %6 = load %struct.html*, %struct.html** %4, align 8
  %7 = call i32 @print_gen_head(%struct.html* %6)
  %8 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %9 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %14 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %19 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %22 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %25 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 (i8**, i8*, i32, i32*, ...) @mandoc_asprintf(i8** %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %20, i32* %23, i32* %26)
  br label %61

28:                                               ; preds = %12, %2
  %29 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %30 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %35 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %38 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 (i8**, i8*, i32, i32*, ...) @mandoc_asprintf(i8** %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32* %39)
  br label %60

41:                                               ; preds = %28
  %42 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %43 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %48 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %51 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 (i8**, i8*, i32, i32*, ...) @mandoc_asprintf(i8** %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32* %52)
  br label %59

54:                                               ; preds = %41
  %55 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %56 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @mandoc_strdup(i32 %57)
  store i8* %58, i8** %5, align 8
  br label %59

59:                                               ; preds = %54, %46
  br label %60

60:                                               ; preds = %59, %33
  br label %61

61:                                               ; preds = %60, %17
  %62 = load %struct.html*, %struct.html** %4, align 8
  %63 = load i32, i32* @TAG_TITLE, align 4
  %64 = call i32 @print_otag(%struct.html* %62, i32 %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.html*, %struct.html** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @print_text(%struct.html* %65, i8* %66)
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @free(i8* %68)
  ret void
}

declare dso_local i32 @print_gen_head(%struct.html*) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i32, i32*, ...) #1

declare dso_local i8* @mandoc_strdup(i32) #1

declare dso_local i32 @print_otag(%struct.html*, i32, i8*) #1

declare dso_local i32 @print_text(%struct.html*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
