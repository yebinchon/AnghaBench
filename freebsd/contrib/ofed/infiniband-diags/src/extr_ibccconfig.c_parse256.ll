; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibccconfig.c_parse256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_ibccconfig.c_parse256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"0X\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid hex digit read\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"hex code too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @parse256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse256(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %38, %23
  %26 = load i8*, i8** %8, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @isxdigit(i8 signext %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %92

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  br label %25

41:                                               ; preds = %25
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 64
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8** %3, align 8
  br label %92

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sdiv i32 %47, 2
  %49 = sub nsw i32 32, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %88, %45
  %53 = load i32, i32* %9, align 4
  %54 = icmp sle i32 %53, 31
  br i1 %54, label %55, label %91

55:                                               ; preds = %52
  %56 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %56, i8 0, i64 3, i1 false)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = srem i32 %61, 2
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %66 = load i8*, i8** %4, align 8
  %67 = call i32 @memcpy(i8* %65, i8* %66, i32 1)
  %68 = load i8*, i8** %4, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %4, align 8
  br label %76

70:                                               ; preds = %60, %55
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @memcpy(i8* %71, i8* %72, i32 2)
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %70, %64
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %78 = call i8* @parseint(i8* %77, i32* %11, i32 1)
  store i8* %78, i8** %12, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %3, align 8
  br label %92

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %52

91:                                               ; preds = %52
  store i8* null, i8** %3, align 8
  br label %92

92:                                               ; preds = %91, %80, %44, %34
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @isxdigit(i8 signext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @parseint(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
