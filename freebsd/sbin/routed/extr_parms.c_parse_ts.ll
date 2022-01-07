; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_parse_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_parms.c_parse_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"| ,\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bad timestamp %.25s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%y/%m/%d@%H:%M\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8**, i8*, i8*, i8*, i32)* @parse_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_ts(i32* %0, i8** %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tm, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i8**, i8*** %9, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @parse_quote(i8** %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18, i32 %19)
  %21 = icmp sgt i64 0, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %6
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sub nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31, %22, %6
  %41 = load i8*, i8** %12, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @sprintf(i8* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %7, align 8
  br label %73

45:                                               ; preds = %31
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 @strcat(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32 @memset(%struct.tm* %14, i32 0, i32 4)
  %49 = load i8*, i8** %12, align 8
  %50 = call i8* @strptime(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.tm* %14)
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** %15, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53, %45
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @sprintf(i8* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %12, align 8
  store i8* %62, i8** %7, align 8
  br label %73

63:                                               ; preds = %53
  %64 = call i32 @mktime(%struct.tm* %14)
  %65 = load i32*, i32** %8, align 8
  store i32 %64, i32* %65, align 4
  %66 = icmp eq i32 %64, -1
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** %12, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load i8*, i8** %12, align 8
  store i8* %71, i8** %7, align 8
  br label %73

72:                                               ; preds = %63
  store i8* null, i8** %7, align 8
  br label %73

73:                                               ; preds = %72, %67, %58, %40
  %74 = load i8*, i8** %7, align 8
  ret i8* %74
}

declare dso_local i64 @parse_quote(i8**, i8*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
