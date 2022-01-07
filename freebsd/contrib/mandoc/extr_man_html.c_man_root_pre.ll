; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_html.c_man_root_pre.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_html.c_man_root_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i8*, i32, i32 }
%struct.html = type { i32 }
%struct.tag = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@TAG_TABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@TAG_TR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TAG_TD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"head-ltitle\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"head-vol\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"head-rtitle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_meta*, %struct.html*)* @man_root_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @man_root_pre(%struct.roff_meta* %0, %struct.html* %1) #0 {
  %3 = alloca %struct.roff_meta*, align 8
  %4 = alloca %struct.html*, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.tag*, align 8
  %7 = alloca i8*, align 8
  store %struct.roff_meta* %0, %struct.roff_meta** %3, align 8
  store %struct.html* %1, %struct.html** %4, align 8
  %8 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %9 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %13 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %17 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %20 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mandoc_asprintf(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.html*, %struct.html** %4, align 8
  %24 = load i32, i32* @TAG_TABLE, align 4
  %25 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %23, i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.tag* %25, %struct.tag** %5, align 8
  %26 = load %struct.html*, %struct.html** %4, align 8
  %27 = load i32, i32* @TAG_TR, align 4
  %28 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %26, i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  store %struct.tag* %28, %struct.tag** %6, align 8
  %29 = load %struct.html*, %struct.html** %4, align 8
  %30 = load i32, i32* @TAG_TD, align 4
  %31 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %29, i32 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %32 = load %struct.html*, %struct.html** %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @print_text(%struct.html* %32, i8* %33)
  %35 = load %struct.html*, %struct.html** %4, align 8
  %36 = load %struct.tag*, %struct.tag** %6, align 8
  %37 = call i32 @print_stagq(%struct.html* %35, %struct.tag* %36)
  %38 = load %struct.html*, %struct.html** %4, align 8
  %39 = load i32, i32* @TAG_TD, align 4
  %40 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %38, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %41 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %42 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load %struct.html*, %struct.html** %4, align 8
  %47 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %48 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @print_text(%struct.html* %46, i8* %49)
  br label %51

51:                                               ; preds = %45, %2
  %52 = load %struct.html*, %struct.html** %4, align 8
  %53 = load %struct.tag*, %struct.tag** %6, align 8
  %54 = call i32 @print_stagq(%struct.html* %52, %struct.tag* %53)
  %55 = load %struct.html*, %struct.html** %4, align 8
  %56 = load i32, i32* @TAG_TD, align 4
  %57 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %55, i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %58 = load %struct.html*, %struct.html** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @print_text(%struct.html* %58, i8* %59)
  %61 = load %struct.html*, %struct.html** %4, align 8
  %62 = load %struct.tag*, %struct.tag** %5, align 8
  %63 = call i32 @print_tagq(%struct.html* %61, %struct.tag* %62)
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @free(i8* %64)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i32, i32) #1

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
