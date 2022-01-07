; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tbl.c_tbl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbl_node = type { i32 }

@TBL_PART_OPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbl_read(%struct.tbl_node* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.tbl_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.tbl_node* %0, %struct.tbl_node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %12 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TBL_PART_OPTS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %4
  %17 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %18 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %17, i32 0, i32 0
  store i32 128, i32* %18, align 4
  store i32 1, i32* %10, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %41, %16
  %24 = load i8*, i8** %9, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %39 [
    i32 40, label %32
    i32 41, label %33
    i32 59, label %34
  ]

32:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %41

33:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %40

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %28
  br label %41

40:                                               ; preds = %37
  br label %44

41:                                               ; preds = %39, %38, %33, %32
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %9, align 8
  br label %23

44:                                               ; preds = %40, %23
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 59
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @tbl_option(%struct.tbl_node* %50, i32 %51, i8* %52, i32* %8)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %86

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63, %4
  %65 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %66 = getelementptr inbounds %struct.tbl_node, %struct.tbl_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %80 [
    i32 128, label %68
    i32 129, label %74
  ]

68:                                               ; preds = %64
  %69 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @tbl_layout(%struct.tbl_node* %69, i32 %70, i8* %71, i32 %72)
  br label %86

74:                                               ; preds = %64
  %75 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i8*, i8** %7, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @tbl_cdata(%struct.tbl_node* %75, i32 %76, i8* %77, i32 %78)
  br label %86

80:                                               ; preds = %64
  %81 = load %struct.tbl_node*, %struct.tbl_node** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @tbl_data(%struct.tbl_node* %81, i32 %82, i8* %83, i32 %84)
  br label %86

86:                                               ; preds = %61, %80, %74, %68
  ret void
}

declare dso_local i32 @tbl_option(%struct.tbl_node*, i32, i8*, i32*) #1

declare dso_local i32 @tbl_layout(%struct.tbl_node*, i32, i8*, i32) #1

declare dso_local i32 @tbl_cdata(%struct.tbl_node*, i32, i8*, i32) #1

declare dso_local i32 @tbl_data(%struct.tbl_node*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
