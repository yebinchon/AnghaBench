; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_feature_present.c_feature_present.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_feature_present.c_feature_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"kern.features.%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @feature_present(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @asprintf(i8** %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  store i64 4, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @sysctlbyname(i8* %12, i32* %6, i64* %5, i32* null, i32 0)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @free(i8* %16)
  store i32 0, i32* %2, align 4
  br label %28

18:                                               ; preds = %11
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @free(i8* %19)
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %28

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %24, %23, %15, %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i64 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
