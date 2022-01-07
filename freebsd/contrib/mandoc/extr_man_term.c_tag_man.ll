; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_tag_man.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man_term.c_tag_man.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32 }
%struct.roff_node = type { i64, i8* }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_node*)* @tag_man to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_man(%struct.termp* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %9 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %10 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ROFFT_TEXT, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %17 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %59, %2
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %46 [
    i32 32, label %23
    i32 9, label %23
    i32 45, label %25
    i32 92, label %28
  ]

23:                                               ; preds = %19, %19
  %24 = load i32, i32* @INT_MAX, align 4
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19, %23
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %5, align 8
  br label %59

28:                                               ; preds = %19
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  %31 = call i32 @mandoc_escape(i8** %5, i8** %6, i32* %8)
  switch i32 %31, label %44 [
    i32 134, label %32
    i32 129, label %32
    i32 131, label %32
    i32 132, label %32
    i32 130, label %32
    i32 133, label %32
    i32 128, label %33
  ]

32:                                               ; preds = %28, %28, %28, %28, %28, %28
  br label %45

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %60

37:                                               ; preds = %33
  %38 = load i8*, i8** %6, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  switch i32 %40, label %42 [
    i32 38, label %41
    i32 45, label %41
    i32 101, label %41
  ]

41:                                               ; preds = %37, %37, %37
  br label %43

42:                                               ; preds = %37
  br label %60

43:                                               ; preds = %41
  br label %45

44:                                               ; preds = %28
  br label %60

45:                                               ; preds = %43, %32
  br label %59

46:                                               ; preds = %19
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i32 @isalpha(i8 zeroext %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.termp*, %struct.termp** %3, align 8
  %55 = getelementptr inbounds %struct.termp, %struct.termp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @tag_put(i8* %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %51, %46
  br label %60

59:                                               ; preds = %45, %25
  br label %19

60:                                               ; preds = %58, %44, %42, %36
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @mandoc_escape(i8**, i8**, i32*) #1

declare dso_local i32 @isalpha(i8 zeroext) #1

declare dso_local i32 @tag_put(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
