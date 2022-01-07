; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_man_mdoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_man_mdoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.roff_meta = type { i8*, i8*, i8*, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.roff_node* }
%struct.roff_node = type { i64, i8*, %struct.roff_node* }

@.str = private unnamed_addr constant [68 x i8] c".\\\22 Automatically generated from an mdoc input file.  Do not edit.\0A\00", align 1
@ROFFT_COMMENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".\\\22%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c".TH \22%s\22 \22%s\22 \22%s\22 \22%s\22 \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [16 x i8] c".nh\0A.if n .ad l\00", align 1
@MMAN_nl = common dso_local global i32 0, align 4
@MMAN_Sm = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@fontqueue = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @man_mdoc(i8* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca %struct.roff_node*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %8 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %7, i32 0, i32 5
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.roff_node*, %struct.roff_node** %10, align 8
  store %struct.roff_node* %11, %struct.roff_node** %5, align 8
  br label %12

12:                                               ; preds = %27, %2
  %13 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %14 = icmp ne %struct.roff_node* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %17 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ROFFT_COMMENT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %31

22:                                               ; preds = %15
  %23 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 2
  %30 = load %struct.roff_node*, %struct.roff_node** %29, align 8
  store %struct.roff_node* %30, %struct.roff_node** %5, align 8
  br label %12

31:                                               ; preds = %21, %12
  %32 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %33 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %36 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %42 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %39 ], [ %43, %40 ]
  %46 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %47 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %50 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %53 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %52, i32 0, i32 4
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %45, i8* %48, i8* %51, i8* %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i32, i32* @MMAN_nl, align 4
  %58 = load i32, i32* @MMAN_Sm, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* @outflags, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fontqueue, i32 0, i32 0), align 8
  %61 = icmp eq i32 0, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %44
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fontqueue, i32 0, i32 0), align 8
  %63 = call i8* @mandoc_malloc(i32 8)
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fontqueue, i32 0, i32 2), align 8
  store i8* %63, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fontqueue, i32 0, i32 1), align 8
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fontqueue, i32 0, i32 2), align 8
  store i8 82, i8* %64, align 1
  br label %65

65:                                               ; preds = %62, %44
  br label %66

66:                                               ; preds = %73, %65
  %67 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %68 = icmp ne %struct.roff_node* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %71 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %72 = call i32 @print_node(%struct.roff_meta* %70, %struct.roff_node* %71)
  br label %73

73:                                               ; preds = %69
  %74 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %75 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %74, i32 0, i32 2
  %76 = load %struct.roff_node*, %struct.roff_node** %75, align 8
  store %struct.roff_node* %76, %struct.roff_node** %5, align 8
  br label %66

77:                                               ; preds = %66
  %78 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @mandoc_malloc(i32) #1

declare dso_local i32 @print_node(%struct.roff_meta*, %struct.roff_node*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
