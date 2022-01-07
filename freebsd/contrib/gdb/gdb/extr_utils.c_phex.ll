; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_phex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_utils.c_phex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%08lx%08lx\00", align 1
@thirty_two = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @phex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %32 [
    i32 8, label %7
    i32 4, label %18
    i32 2, label %25
  ]

7:                                                ; preds = %2
  %8 = call i8* (...) @get_cell()
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @thirty_two, align 4
  %12 = ashr i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = trunc i64 %13 to i16
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i16 zeroext %14, i64 %16)
  br label %35

18:                                               ; preds = %2
  %19 = call i8* (...) @get_cell()
  store i8* %19, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = trunc i64 %22 to i16
  %24 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %23)
  br label %35

25:                                               ; preds = %2
  %26 = call i8* (...) @get_cell()
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 65535
  %30 = trunc i32 %29 to i16
  %31 = call i32 (i8*, i8*, i16, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %30)
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %3, align 4
  %34 = call i8* @phex(i32 %33, i32 4)
  store i8* %34, i8** %5, align 8
  br label %35

35:                                               ; preds = %32, %25, %18, %7
  %36 = load i8*, i8** %5, align 8
  ret i8* %36
}

declare dso_local i8* @get_cell(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i16 zeroext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
