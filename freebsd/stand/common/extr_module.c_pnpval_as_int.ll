; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_pnpval_as_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_pnpval_as_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @pnpval_as_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpval_as_int(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strchr(i8* %13, i8 signext 59)
  store i8* %14, i8** %8, align 8
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8 32, i8* %15, align 16
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlcpy(i8* %20, i8* %21, i32 255)
  br label %41

23:                                               ; preds = %12
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memcpy(i8* %25, i8* %26, i32 %32)
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = add nsw i64 %38, 1
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %39
  store i8 0, i8* %40, align 1
  br label %41

41:                                               ; preds = %23, %18
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %43 = call i32 @strlcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 256)
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = call i32 @strlen(i8* %48)
  %50 = call i64 @strncmp(i8* %45, i8* %46, i32 %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = call i32 @strlen(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = call i32 @strtol(i8* %58, i32* null, i32 0)
  store i32 %59, i32* %6, align 4
  br label %75

60:                                               ; preds = %41
  %61 = load i8*, i8** %5, align 8
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %63 = call i8* @strstr(i8* %61, i8* %62)
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %74

67:                                               ; preds = %60
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i32 @strtol(i8* %72, i32* null, i32 0)
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %67, %66
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %11
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
