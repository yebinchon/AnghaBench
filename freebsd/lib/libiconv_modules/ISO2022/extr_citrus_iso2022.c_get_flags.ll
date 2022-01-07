; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_get_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libiconv_modules/ISO2022/extr_citrus_iso2022.c_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@get_flags.tags = internal constant [17 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 142 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i32 134 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 133 }, %struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 132 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 141 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 140 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 138 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 136 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 139 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 137 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 135 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 131 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 130 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 128 }, %struct.anon zeroinitializer], align 16
@.str = private unnamed_addr constant [6 x i8] c"DUMMY\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"8BIT\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"NOOLD\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"SO\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LS0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LS1\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LS2\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"LS3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LS1R\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"LS2R\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LS3R\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"SS2\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"SS3\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"SS2R\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"SS3R\00", align 1
@_MATCH = common dso_local global i32 0, align 4
@_NOTMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*)* @get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_flags(%struct.TYPE_3__* noalias %0, i8* noalias %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @get_flags.tags, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 16
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %38

14:                                               ; preds = %7
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @get_flags.tags, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 16
  %21 = call i32 @strcmp(i8* %15, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [17 x %struct.anon], [17 x %struct.anon]* @get_flags.tags, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* @_MATCH, align 4
  store i32 %33, i32* %3, align 4
  br label %40

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  %39 = load i32, i32* @_NOTMATCH, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
