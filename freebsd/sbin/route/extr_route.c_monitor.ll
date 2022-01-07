; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_monitor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/route/extr_route.c_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32 }

@defaultfib = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@numfibs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid fib number: %s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid fib number: %d\00", align 1
@verbose = common dso_local global i32 0, align 4
@debugonly = common dso_local global i64 0, align 8
@s = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"\0Agot message of size %d on %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2048 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* @defaultfib, align 4
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %81, %2
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %82

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %3, align 4
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i32 1
  store i8** %19, i8*** %4, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 45
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load i8**, i8*** %4, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @usage(i8* %27)
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i8**, i8*** %4, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = call i32 @keyword(i8* %32)
  switch i32 %33, label %77 [
    i32 128, label %34
  ]

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i8**, i8*** %4, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @usage(i8* %40)
  br label %42

42:                                               ; preds = %38, %34
  store i32 0, i32* @errno, align 4
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i32 1
  store i8** %44, i8*** %4, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strtol(i8* %45, i8** %9, i32 0)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @errno, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @numfibs, align 4
  %59 = icmp ne i32 %58, -1
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @numfibs, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %54, %49
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* @errno, align 4
  br label %67

67:                                               ; preds = %65, %60, %57
  br label %68

68:                                               ; preds = %67, %42
  %69 = load i32, i32* @errno, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* @EX_USAGE, align 4
  %73 = load i8**, i8*** %4, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i32, i8*, ...) @errx(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %71, %68
  br label %81

77:                                               ; preds = %29
  %78 = load i8**, i8*** %4, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @usage(i8* %79)
  br label %81

81:                                               ; preds = %77, %76
  br label %12

82:                                               ; preds = %12
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @set_sofib(i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @EX_USAGE, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 (i32, i8*, ...) @errx(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %82
  store i32 1, i32* @verbose, align 4
  %92 = load i64, i64* @debugonly, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = call i32 (...) @interfaces()
  %96 = call i32 @exit(i32 0) #3
  unreachable

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %98, %97
  %99 = load i32, i32* @s, align 4
  %100 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %101 = call i32 @read(i32 %99, i8* %100, i32 2048)
  store i32 %101, i32* %5, align 4
  %102 = call i32 @time(i32* null)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i8* @ctime(i32* %10)
  %105 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %103, i8* %104)
  %106 = getelementptr inbounds [2048 x i8], [2048 x i8]* %8, i64 0, i64 0
  %107 = bitcast i8* %106 to %struct.rt_msghdr*
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @print_rtmsg(%struct.rt_msghdr* %107, i32 %108)
  br label %98
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @keyword(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @set_sofib(i32) #1

declare dso_local i32 @interfaces(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @printf(i8*, i32, i8*) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @print_rtmsg(%struct.rt_msghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
