; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtTrim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtio.c_DtTrim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @DtTrim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @DtTrim(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %1
  %17 = call i8* @UtLocalCacheCalloc(i32 1)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %2, align 8
  br label %108

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 -1
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %45, %19
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ule i8* %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  br label %43

43:                                               ; preds = %41, %27
  %44 = phi i1 [ false, %27 ], [ %42, %41 ]
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  br label %27

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %67, %58, %48
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = icmp uge i8* %50, %51
  br i1 %52, label %53, label %70

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 -1
  store i8* %60, i8** %5, align 8
  br label %49

61:                                               ; preds = %53
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 32
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %70

67:                                               ; preds = %61
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 -1
  store i8* %69, i8** %5, align 8
  br label %49

70:                                               ; preds = %66, %49
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 34
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i8*, i8** %5, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 34
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 -1
  store i8* %85, i8** %5, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @ACPI_PTR_DIFF(i8* %87, i8* %88)
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i8* @UtLocalCacheCalloc(i32 %92)
  store i8* %93, i8** %6, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %86
  %98 = load i8*, i8** %6, align 8
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @strncpy(i8* %98, i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %97, %86
  %103 = load i8*, i8** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %6, align 8
  store i8* %107, i8** %2, align 8
  br label %108

108:                                              ; preds = %102, %16
  %109 = load i8*, i8** %2, align 8
  ret i8* %109
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @UtLocalCacheCalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ACPI_PTR_DIFF(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
