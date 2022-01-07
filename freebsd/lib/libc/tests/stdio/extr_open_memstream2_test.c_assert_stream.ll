; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_open_memstream2_test.c_assert_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/tests/stdio/extr_open_memstream2_test.c_assert_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"bad length %zd for \22%s\22\0A\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"bad buffer \22%s\22 for \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @assert_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_stream(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i64 @strlen(i8* %3)
  %5 = load i64, i64* @len, align 8
  %6 = icmp ne i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* @len, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %9, i8* %10)
  br label %24

12:                                               ; preds = %1
  %13 = load i8*, i8** @buf, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = call i64 @strncmp(i8* %13, i8* %14, i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i8*, i8** @buf, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %20, i8* %21)
  br label %23

23:                                               ; preds = %19, %12
  br label %24

24:                                               ; preds = %23, %7
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
