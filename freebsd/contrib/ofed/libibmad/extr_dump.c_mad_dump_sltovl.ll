; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_sltovl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_sltovl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%2u|\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mad_dump_sltovl(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %41, %4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 16
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ib_slvl_get_i(i32* %22, i32 %23, i32* %10)
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %12, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  br label %44

40:                                               ; preds = %21
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  br label %18

44:                                               ; preds = %39, %18
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ib_slvl_get_i(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
