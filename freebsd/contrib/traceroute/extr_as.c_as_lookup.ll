; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_as.c_as_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/traceroute/extr_as.c_as_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aslookup = type { i64, i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"!r%s/%d,l\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"A%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"origin:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" AS%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as_lookup(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aslookup*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.aslookup*
  store %struct.aslookup* %14, %struct.aslookup** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @AF_INET6, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 128, i32 32
  store i32 %19, i32* %12, align 4
  %20 = load %struct.aslookup*, %struct.aslookup** %7, align 8
  %21 = getelementptr inbounds %struct.aslookup, %struct.aslookup* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i32, i32* %12, align 4
  %25 = call i32 (i64, i8*, ...) @fprintf(i64 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24)
  %26 = load %struct.aslookup*, %struct.aslookup** %7, align 8
  %27 = getelementptr inbounds %struct.aslookup, %struct.aslookup* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @fflush(i64 %28)
  br label %30

30:                                               ; preds = %83, %53, %3
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %32 = load %struct.aslookup*, %struct.aslookup** %7, align 8
  %33 = getelementptr inbounds %struct.aslookup, %struct.aslookup* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32* @fgets(i8* %31, i32 1024, i64 %34)
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %84

37:                                               ; preds = %30
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 1023
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  switch i32 %45, label %50 [
    i32 65, label %46
    i32 67, label %49
    i32 68, label %49
    i32 69, label %49
    i32 70, label %49
  ]

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %48 = call i32 (i8*, i8*, ...) @sscanf(i8* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %11)
  br label %50

49:                                               ; preds = %41, %41, %41, %41
  br label %50

50:                                               ; preds = %41, %49, %46
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 65
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %30

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %60 = load i8, i8* %59, align 16
  %61 = sext i8 %60 to i32
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 65
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %84

66:                                               ; preds = %62
  %67 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %68 = call i64 @strlen(i8* %67)
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = sub nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %77 = call i64 @strncasecmp(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %81 = getelementptr inbounds i8, i8* %80, i64 7
  %82 = call i32 (i8*, i8*, ...) @sscanf(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  br label %83

83:                                               ; preds = %79, %75, %66
  br label %30

84:                                               ; preds = %65, %30
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32* @fgets(i8*, i32, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
