; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_zstdcli.c_init_cLevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_zstdcli.c_init_cLevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_CLEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Ignore environment variable setting %s=%s: numeric value too large\0A\00", align 1
@ZSTDCLI_CLEVEL_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Ignore environment variable setting %s=%s: not a valid integer value\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_cLevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cLevel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @ENV_CLEVEL, align 4
  %7 = call i8* @getenv(i32 %6)
  store i8* %7, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %61

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  store i8* %11, i8** %3, align 8
  store i32 1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 45
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  store i32 -1, i32* %4, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %28

19:                                               ; preds = %10
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 43
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i8*, i8** %3, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sge i32 %31, 48
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp sle i32 %36, 57
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = call i64 @readU32FromCharChecked(i8** %3, i32* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @ENV_CLEVEL, align 4
  %43 = load i8*, i8** %2, align 8
  %44 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %43)
  %45 = load i32, i32* @ZSTDCLI_CLEVEL_DEFAULT, align 4
  store i32 %45, i32* %1, align 4
  br label %63

46:                                               ; preds = %38
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = mul nsw i32 %52, %53
  store i32 %54, i32* %1, align 4
  br label %63

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56, %33, %28
  %58 = load i32, i32* @ENV_CLEVEL, align 4
  %59 = load i8*, i8** %2, align 8
  %60 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %58, i8* %59)
  br label %61

61:                                               ; preds = %57, %0
  %62 = load i32, i32* @ZSTDCLI_CLEVEL_DEFAULT, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %61, %51, %41
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i64 @readU32FromCharChecked(i8**, i32*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
