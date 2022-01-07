; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_numtoa.c_numtoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_numtoa.c_numtoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%lu.%lu.%lu.%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @numtoa(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @ntohl(i64 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @LIB_GETBUF(i8* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @LIB_BUFLENGTH, align 4
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = ashr i32 %12, 24
  %14 = and i32 %13, 255
  %15 = load i64, i64* %3, align 8
  %16 = trunc i64 %15 to i32
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = load i64, i64* %3, align 8
  %20 = trunc i64 %19 to i32
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = load i64, i64* %3, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 255
  %26 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18, i32 %22, i32 %25)
  %27 = load i8*, i8** %4, align 8
  ret i8* %27
}

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
