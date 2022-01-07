; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_disabled.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"debug.acpi.disabled\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_disabled(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i8* @kern_getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %5, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

10:                                               ; preds = %1
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @freeenv(i8* %15)
  store i32 1, i32* %2, align 4
  br label %81

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %73, %17
  br label %20

20:                                               ; preds = %32, %19
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i8*, i8** %4, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @isspace(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ false, %20 ], [ %29, %25 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  br label %20

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %78

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i8*, i8** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isspace(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %50, %42
  %60 = phi i1 [ false, %42 ], [ %58, %50 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %42

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @strncmp(i8* %65, i8* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @freeenv(i8* %71)
  store i32 1, i32* %2, align 4
  br label %81

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8* %77, i8** %4, align 8
  br label %19

78:                                               ; preds = %40
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @freeenv(i8* %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %70, %14, %9
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @freeenv(i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
