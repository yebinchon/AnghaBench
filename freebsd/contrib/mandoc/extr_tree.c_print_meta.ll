; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tree.c_print_meta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tree.c_print_meta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_meta = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"title = \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"name  = \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"sec   = \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"vol   = \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"arch  = \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"os    = \22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"date  = \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.roff_meta*)* @print_meta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_meta(%struct.roff_meta* %0) #0 {
  %2 = alloca %struct.roff_meta*, align 8
  store %struct.roff_meta* %0, %struct.roff_meta** %2, align 8
  %3 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %4 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %9 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %14 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %19 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %24 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %29 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %34 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %33, i32 0, i32 3
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %39 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %38, i32 0, i32 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %44 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %43, i32 0, i32 4
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %49 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %54 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %53, i32 0, i32 5
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %59 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %58, i32 0, i32 5
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %64 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %63, i32 0, i32 6
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.roff_meta*, %struct.roff_meta** %2, align 8
  %69 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %68, i32 0, i32 6
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
