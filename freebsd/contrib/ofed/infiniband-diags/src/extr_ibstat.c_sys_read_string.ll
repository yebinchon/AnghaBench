; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibstat.c_sys_read_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibstat.c_sys_read_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_read_string(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @snprintf(i8* %13, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %14, i8* %15)
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %17, i8** %11, align 8
  br label %18

18:                                               ; preds = %31, %4
  %19 = load i8*, i8** %11, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i8*, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i8*, i8** %11, align 8
  store i8 46, i8* %29, align 1
  br label %30

30:                                               ; preds = %28, %23
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %12, align 8
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 1
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @sysctlbyname(i8* %37, i8* %38, i64* %12, i32* null, i32 0)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 (...) @ret_code()
  store i32 %42, i32* %5, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i64, i64* %12, align 8
  br label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  br label %55

55:                                               ; preds = %51, %49
  %56 = phi i64 [ %50, %49 ], [ %54, %51 ]
  %57 = getelementptr inbounds i8, i8* %44, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = call i8* @strrchr(i8* %58, i8 signext 10)
  store i8* %59, i8** %11, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i8*, i8** %11, align 8
  store i8 0, i8* %62, align 1
  br label %63

63:                                               ; preds = %61, %55
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #1

declare dso_local i32 @ret_code(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
