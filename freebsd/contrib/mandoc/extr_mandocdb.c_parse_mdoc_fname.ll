; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_fname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mandocdb.c_parse_mdoc_fname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpage = type { i32 }
%struct.roff_node = type { i64, i8*, i64 }

@ROFFT_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@TYPE_Fn = common dso_local global i32 0, align 4
@SEC_SYNOPSIS = common dso_local global i64 0, align 8
@NAME_SYN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpage*, %struct.roff_node*)* @parse_mdoc_fname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mdoc_fname(%struct.mpage* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.mpage*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.mpage* %0, %struct.mpage** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  %7 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %8 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ROFFT_TEXT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  %14 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %15 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  br label %17

17:                                               ; preds = %29, %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 40
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 42
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %5, align 8
  br label %17

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @strcspn(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %34, i64* %6, align 8
  %35 = load %struct.mpage*, %struct.mpage** %3, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @TYPE_Fn, align 4
  %39 = call i32 @putkeys(%struct.mpage* %35, i8* %36, i64 %37, i32 %38)
  %40 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %41 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SEC_SYNOPSIS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %32
  %46 = load %struct.mpage*, %struct.mpage** %3, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* @NAME_SYN, align 4
  %50 = call i32 @putkeys(%struct.mpage* %46, i8* %47, i64 %48, i32 %49)
  br label %51

51:                                               ; preds = %12, %45, %32
  ret void
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @putkeys(%struct.mpage*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
