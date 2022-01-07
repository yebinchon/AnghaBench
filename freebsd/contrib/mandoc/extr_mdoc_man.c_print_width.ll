; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_print_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_print_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdoc_bl = type { i8*, i64, i32 }
%struct.roff_node = type { i64, i8* }
%struct.roffsu = type { i64, i32 }

@LIST_hang = common dso_local global i64 0, align 8
@SCALE_MAX = common dso_local global i32 0, align 4
@SCALE_EN = common dso_local global i64 0, align 8
@LIST_enum = common dso_local global i64 0, align 8
@ROFFT_TEXT = common dso_local global i64 0, align 8
@Bl_stack = common dso_local global i32* null, align 8
@Bl_stack_len = common dso_local global i32 0, align 4
@LIST_tag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c".HP\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".TP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dn\00", align 1
@TPremain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdoc_bl*, %struct.roff_node*)* @print_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_width(%struct.mdoc_bl* %0, %struct.roff_node* %1) #0 {
  %3 = alloca %struct.mdoc_bl*, align 8
  %4 = alloca %struct.roff_node*, align 8
  %5 = alloca [24 x i8], align 16
  %6 = alloca %struct.roffsu, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mdoc_bl* %0, %struct.mdoc_bl** %3, align 8
  store %struct.roff_node* %1, %struct.roff_node** %4, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %13 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %18 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @LIST_hang, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 6, i32 0
  store i32 %23, i32* %10, align 4
  br label %53

24:                                               ; preds = %2
  %25 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %26 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* @SCALE_MAX, align 4
  %29 = call i8* @a2roffsu(i8* %27, %struct.roffsu* %6, i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32, %24
  %38 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %39 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @man_strlen(i8* %40)
  store i32 %41, i32* %10, align 4
  br label %52

42:                                               ; preds = %32
  %43 = load i64, i64* @SCALE_EN, align 8
  %44 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %47
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %16
  %54 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %55 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @LIST_enum, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %61 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 8
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %82

66:                                               ; preds = %53
  %67 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %68 = icmp ne %struct.roff_node* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %71 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ROFFT_TEXT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.roff_node*, %struct.roff_node** %4, align 8
  %77 = getelementptr inbounds %struct.roff_node, %struct.roff_node* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @man_strlen(i8* %78)
  store i32 %79, i32* %11, align 4
  br label %81

80:                                               ; preds = %69, %66
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %75
  br label %82

82:                                               ; preds = %81, %59
  %83 = call i32 (...) @mid_it()
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 2
  %86 = load i32*, i32** @Bl_stack, align 8
  %87 = load i32, i32* @Bl_stack_len, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @Bl_stack_len, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %85, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %82
  %95 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %96 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @LIST_tag, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = call i32 @print_block(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %106

102:                                              ; preds = %94, %82
  %103 = call i32 @print_block(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 2
  store i32 %105, i32* %9, align 4
  br label %106

106:                                              ; preds = %102, %100
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 2
  %113 = call i32 @snprintf(i8* %110, i32 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %115 = call i32 @print_word(i8* %114)
  br label %121

116:                                              ; preds = %106
  %117 = load %struct.mdoc_bl*, %struct.mdoc_bl** %3, align 8
  %118 = getelementptr inbounds %struct.mdoc_bl, %struct.mdoc_bl* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @print_word(i8* %119)
  br label %121

121:                                              ; preds = %116, %109
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* @TPremain, align 4
  ret void
}

declare dso_local i8* @a2roffsu(i8*, %struct.roffsu*, i32) #1

declare dso_local i32 @man_strlen(i8*) #1

declare dso_local i32 @mid_it(...) #1

declare dso_local i32 @print_block(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @print_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
