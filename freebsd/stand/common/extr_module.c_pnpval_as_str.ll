; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_pnpval_as_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_module.c_pnpval_as_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pnpval_as_str.retval = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"MISSING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @pnpval_as_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pnpval_as_str(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pnpval_as_str.retval, i64 0, i64 0), align 16
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pnpval_as_str.retval, i64 0, i64 0), i8** %3, align 8
  br label %76

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 59)
  store i8* %13, i8** %7, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 32, i8* %14, align 16
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlcpy(i8* %19, i8* %20, i32 255)
  br label %40

22:                                               ; preds = %11
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8*, i8** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(i8* %24, i8* %25, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = add nsw i64 %37, 1
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %38
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %22, %17
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %42 = call i32 @strlcat(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 256)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i32 @strlen(i8* %47)
  %49 = call i64 @strncmp(i8* %44, i8* %45, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %40
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = call i32 @quoted_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pnpval_as_str.retval, i64 0, i64 0), i8* %57)
  br label %75

59:                                               ; preds = %40
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %62 = call i8* @strstr(i8* %60, i8* %61)
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = call i32 @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pnpval_as_str.retval, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %74

67:                                               ; preds = %59
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %70 = call i32 @strlen(i8* %69)
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = call i32 @quoted_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pnpval_as_str.retval, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %67, %65
  br label %75

75:                                               ; preds = %74, %51
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @pnpval_as_str.retval, i64 0, i64 0), i8** %3, align 8
  br label %76

76:                                               ; preds = %75, %10
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @quoted_strcpy(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
