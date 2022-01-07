; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_timegm.c_timegm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_timegm.c_timegm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"TZ=\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"TZ=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timegm(%struct.tm* %0) #0 {
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  store %struct.tm* %0, %struct.tm** %2, align 8
  %6 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %4, align 8
  %7 = call i32 @putenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i32 (...) @tzset()
  %9 = load %struct.tm*, %struct.tm** %2, align 8
  %10 = call i32 @mktime(%struct.tm* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @snprintf(i8* %14, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @putenv(i8* %17)
  br label %21

19:                                               ; preds = %1
  %20 = call i32 @putenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = call i32 (...) @tzset()
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @putenv(i8*) #1

declare dso_local i32 @tzset(...) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
