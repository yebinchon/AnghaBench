; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_html.c_man_root_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_html.c_man_root_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i32*, i32* }
%struct.html = type { i32 }
%struct.tag = type { i32 }

@TAG_TABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"foot\00", align 1
@TAG_TR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TAG_TD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"foot-date\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"foot-os\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_meta*, %struct.html*)* @man_root_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @man_root_post(%struct.roff_meta* %0, %struct.html* %1) #0 {
  %3 = alloca %struct.roff_meta*, align 8
  %4 = alloca %struct.html*, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.tag*, align 8
  store %struct.roff_meta* %0, %struct.roff_meta** %3, align 8
  store %struct.html* %1, %struct.html** %4, align 8
  %7 = load %struct.html*, %struct.html** %4, align 8
  %8 = load i32, i32* @TAG_TABLE, align 4
  %9 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %7, i32 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tag* %9, %struct.tag** %5, align 8
  %10 = load %struct.html*, %struct.html** %4, align 8
  %11 = load i32, i32* @TAG_TR, align 4
  %12 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %10, i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store %struct.tag* %12, %struct.tag** %6, align 8
  %13 = load %struct.html*, %struct.html** %4, align 8
  %14 = load i32, i32* @TAG_TD, align 4
  %15 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %13, i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %16 = load %struct.html*, %struct.html** %4, align 8
  %17 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %18 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @print_text(%struct.html* %16, i32* %19)
  %21 = load %struct.html*, %struct.html** %4, align 8
  %22 = load %struct.tag*, %struct.tag** %6, align 8
  %23 = call i32 @print_stagq(%struct.html* %21, %struct.tag* %22)
  %24 = load %struct.html*, %struct.html** %4, align 8
  %25 = load i32, i32* @TAG_TD, align 4
  %26 = call %struct.tag* (%struct.html*, i32, i8*, ...) @print_otag(%struct.html* %24, i32 %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %27 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %28 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.html*, %struct.html** %4, align 8
  %33 = load %struct.roff_meta*, %struct.roff_meta** %3, align 8
  %34 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @print_text(%struct.html* %32, i32* %35)
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.html*, %struct.html** %4, align 8
  %39 = load %struct.tag*, %struct.tag** %5, align 8
  %40 = call i32 @print_tagq(%struct.html* %38, %struct.tag* %39)
  ret void
}

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, ...) #1

declare dso_local i32 @print_text(%struct.html*, i32*) #1

declare dso_local i32 @print_stagq(%struct.html*, %struct.tag*) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
