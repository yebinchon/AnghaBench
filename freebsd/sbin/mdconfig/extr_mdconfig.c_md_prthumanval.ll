; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/mdconfig/extr_mdconfig.c_md_prthumanval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/mdconfig/extr_mdconfig.c_md_prthumanval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@HN_AUTOSCALE = common dso_local global i32 0, align 4
@HN_B = common dso_local global i32 0, align 4
@HN_NOSPACE = common dso_local global i32 0, align 4
@HN_DECIMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%6s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @md_prthumanval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @md_prthumanval(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [6 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i64 0, i64* @errno, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i64 @strtoumax(i8* %6, i8** %5, i32 10)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @errno, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @INT64_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %10, %1
  br label %33

20:                                               ; preds = %15
  %21 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %22 = load i64, i64* %4, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @HN_AUTOSCALE, align 4
  %25 = load i32, i32* @HN_B, align 4
  %26 = load i32, i32* @HN_NOSPACE, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @HN_DECIMAL, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @humanize_number(i8* %21, i32 6, i32 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29)
  %31 = getelementptr inbounds [6 x i8], [6 x i8]* %3, i64 0, i64 0
  %32 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %20, %19
  ret void
}

declare dso_local i64 @strtoumax(i8*, i8**, i32) #1

declare dso_local i32 @humanize_number(i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
