; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_mdoc_root_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_html.c_mdoc_root_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i32*, i32, i32*, i32 }
%struct.html = type { i32 }
%struct.tag = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@TAG_TABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@TAG_TR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TAG_TD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"head-ltitle\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"head-vol\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"head-rtitle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_meta*, %struct.html*)* @mdoc_root_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdoc_root_pre(%struct.roff_meta* %0, %struct.html* %1) #0 {
  %3 = alloca %struct.roff_meta*, align 8
  %4 = alloca %struct.html*, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.tag*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.roff_meta* %0, %struct.roff_meta** %3, align 8
  store %struct.html* %1, %struct.html** %4, align 8
  %9 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %10 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* null, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %15 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i8* @mandoc_strdup(i32 %16)
  store i8* %17, i8** %7, align 8
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %20 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %23 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @mandoc_asprintf(i8** %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21, i32* %24)
  br label %26

26:                                               ; preds = %18, %13
  %27 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %28 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* null, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %33 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i8* @mandoc_strdup(i32 %34)
  store i8* %35, i8** %8, align 8
  br label %44

36:                                               ; preds = %26
  %37 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %38 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %41 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @mandoc_asprintf(i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32* %42)
  br label %44

44:                                               ; preds = %36, %31
  %45 = load %struct.html*, %struct.html** %4, align 8
  %46 = load i32, i32* @TAG_TABLE, align 4
  %47 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %45, i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.tag* %47, %struct.tag** %5, align 8
  %48 = load %struct.html*, %struct.html** %4, align 8
  %49 = load i32, i32* @TAG_TR, align 4
  %50 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %48, i32 %49, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store %struct.tag* %50, %struct.tag** %6, align 8
  %51 = load %struct.html*, %struct.html** %4, align 8
  %52 = load i32, i32* @TAG_TD, align 4
  %53 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %51, i32 %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.html*, %struct.html** %4, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @print_text(%struct.html* %54, i8* %55)
  %57 = load %struct.html*, %struct.html** %4, align 8
  %58 = load %struct.tag*, %struct.tag** %6, align 8
  %59 = call i32 @print_stagq(%struct.html* %57, %struct.tag* %58)
  %60 = load %struct.html*, %struct.html** %4, align 8
  %61 = load i32, i32* @TAG_TD, align 4
  %62 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %60, i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %63 = load %struct.html*, %struct.html** %4, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @print_text(%struct.html* %63, i8* %64)
  %66 = load %struct.html*, %struct.html** %4, align 8
  %67 = load %struct.tag*, %struct.tag** %6, align 8
  %68 = call i32 @print_stagq(%struct.html* %66, %struct.tag* %67)
  %69 = load %struct.html*, %struct.html** %4, align 8
  %70 = load i32, i32* @TAG_TD, align 4
  %71 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %69, i32 %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %72 = load %struct.html*, %struct.html** %4, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @print_text(%struct.html* %72, i8* %73)
  %75 = load %struct.html*, %struct.html** %4, align 8
  %76 = load %struct.tag*, %struct.tag** %5, align 8
  %77 = call i32 @print_tagq(%struct.html* %75, %struct.tag* %76)
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @free(i8* %78)
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @free(i8* %80)
  ret i32 1
}

declare dso_local i8* @mandoc_strdup(i32) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i32, i32*) #1

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, ...) #1

declare dso_local i32 @print_text(%struct.html*, i8*) #1

declare dso_local i32 @print_stagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
