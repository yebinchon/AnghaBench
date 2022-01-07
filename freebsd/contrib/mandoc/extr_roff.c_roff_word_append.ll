; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_word_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_word_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, i32, %struct.roff_node* }
%struct.roff_node = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@ROFF_NEXT_SIBLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @roff_word_append(%struct.roff_man* %0, i8* %1) #0 {
  %3 = alloca %struct.roff_man*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.roff_node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %9 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %8, i32 0, i32 2
  %10 = load %struct.roff_node*, %struct.roff_node** %9, align 8
  store %struct.roff_node* %10, %struct.roff_node** %5, align 8
  %11 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %12 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @roff_strdup(i32 %13, i8* %14)
  store i8* %15, i8** %6, align 8
  %16 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %17 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @mandoc_asprintf(i8** %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %24 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @free(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.roff_node*, %struct.roff_node** %5, align 8
  %29 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @ROFF_NEXT_SIBLING, align 4
  %31 = load %struct.roff_man*, %struct.roff_man** %3, align 8
  %32 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local i8* @roff_strdup(i32, i8*) #1

declare dso_local i32 @mandoc_asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
