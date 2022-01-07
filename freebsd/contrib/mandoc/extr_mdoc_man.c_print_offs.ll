; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_print_offs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_print_offs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roffsu = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c".RS\00", align 1
@MMAN_Bk_susp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"indent\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"indent-two\00", align 1
@SCALE_EN = common dso_local global i64 0, align 8
@MMAN_nl = common dso_local global i32 0, align 4
@outflags = common dso_local global i32 0, align 4
@Bl_stack_len = common dso_local global i32 0, align 4
@Bl_stack = common dso_local global i64* null, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%dn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @print_offs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_offs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [24 x i8], align 16
  %6 = alloca %struct.roffsu, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @MMAN_Bk_susp, align 4
  %10 = call i32 @print_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* null, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 0, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21, %13, %2
  store i32 0, i32* %8, align 4
  br label %74

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 6, i32* %8, align 4
  br label %73

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 12, i32* %8, align 4
  br label %72

42:                                               ; preds = %37, %34
  %43 = load i8*, i8** %3, align 8
  %44 = load i64, i64* @SCALE_EN, align 8
  %45 = call i8* @a2roffsu(i8* %43, %struct.roffsu* %6, i64 %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %7, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %42
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 @man_strlen(i8* %54)
  store i32 %55, i32* %8, align 4
  br label %71

56:                                               ; preds = %48
  %57 = load i64, i64* @SCALE_EN, align 8
  %58 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.roffsu, %struct.roffsu* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %8, align 4
  br label %70

64:                                               ; preds = %56
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @print_word(i8* %65)
  %67 = load i32, i32* @MMAN_nl, align 4
  %68 = load i32, i32* @outflags, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* @outflags, align 4
  br label %97

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70, %53
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %33
  br label %74

74:                                               ; preds = %73, %25
  %75 = load i32, i32* @Bl_stack_len, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load i64*, i64** @Bl_stack, align 8
  %79 = load i32, i32* @Bl_stack_len, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %77, %74
  %89 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @snprintf(i8* %89, i32 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = getelementptr inbounds [24 x i8], [24 x i8]* %5, i64 0, i64 0
  %93 = call i32 @print_word(i8* %92)
  %94 = load i32, i32* @MMAN_nl, align 4
  %95 = load i32, i32* @outflags, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* @outflags, align 4
  br label %97

97:                                               ; preds = %88, %64
  ret void
}

declare dso_local i32 @print_line(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @a2roffsu(i8*, %struct.roffsu*, i64) #1

declare dso_local i32 @man_strlen(i8*) #1

declare dso_local i32 @print_word(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
