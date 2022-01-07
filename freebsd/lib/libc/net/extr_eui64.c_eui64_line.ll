; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_eui64.c_eui64_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_eui64.c_eui64_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eui64 = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.eui64*, i8*, i64)* @eui64_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eui64_line(i8* %0, %struct.eui64* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.eui64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.eui64* %1, %struct.eui64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strdup(i8* %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

18:                                               ; preds = %4
  %19 = load i8*, i8** %11, align 8
  store i8* %19, i8** %10, align 8
  br label %20

20:                                               ; preds = %35, %18
  %21 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  %24 = load i8*, i8** %12, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.eui64*, %struct.eui64** %7, align 8
  %31 = call i64 @eui64_aton(i8* %29, %struct.eui64* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %36

34:                                               ; preds = %28
  br label %75

35:                                               ; preds = %23
  br label %20

36:                                               ; preds = %33, %20
  br label %37

37:                                               ; preds = %54, %36
  %38 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %12, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %55

40:                                               ; preds = %37
  %41 = load i8*, i8** %12, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @strlcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = icmp ule i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %55

53:                                               ; preds = %45
  br label %75

54:                                               ; preds = %40
  br label %37

55:                                               ; preds = %52, %37
  br label %56

56:                                               ; preds = %71, %55
  %57 = call i8* @strsep(i8** %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %57, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i8*, i8** %12, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %72

65:                                               ; preds = %59
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %75

71:                                               ; preds = %65
  br label %56

72:                                               ; preds = %64, %56
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @free(i8* %73)
  store i32 0, i32* %5, align 4
  br label %78

75:                                               ; preds = %70, %53, %34
  %76 = load i8*, i8** %11, align 8
  %77 = call i32 @free(i8* %76)
  store i32 -1, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %72, %17
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @eui64_aton(i8*, %struct.eui64*) #1

declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
