; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_mid_it.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_man.c_mid_it.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Bl_stack_len = common dso_local global i32 0, align 4
@Bl_stack = common dso_local global i64* null, align 8
@Bl_stack_post = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c".RS\00", align 1
@MMAN_Bk_susp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%dn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mid_it to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mid_it() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = load i32, i32* @Bl_stack_len, align 4
  %3 = icmp eq i32 0, %2
  br i1 %3, label %12, label %4

4:                                                ; preds = %0
  %5 = load i64*, i64** @Bl_stack, align 8
  %6 = load i32, i32* @Bl_stack_len, align 4
  %7 = sub nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i64, i64* %5, i64 %8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4, %0
  br label %40

13:                                               ; preds = %4
  %14 = load i32*, i32** @Bl_stack_post, align 8
  %15 = load i32, i32* @Bl_stack_len, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %40

22:                                               ; preds = %13
  %23 = load i32, i32* @MMAN_Bk_susp, align 4
  %24 = call i32 @print_line(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %26 = load i64*, i64** @Bl_stack, align 8
  %27 = load i32, i32* @Bl_stack_len, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @snprintf(i8* %25, i32 24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %34 = call i32 @print_word(i8* %33)
  %35 = load i32*, i32** @Bl_stack_post, align 8
  %36 = load i32, i32* @Bl_stack_len, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %22, %21, %12
  ret void
}

declare dso_local i32 @print_line(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @print_word(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
