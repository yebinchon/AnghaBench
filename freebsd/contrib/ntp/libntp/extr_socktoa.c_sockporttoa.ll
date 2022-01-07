; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktoa.c_sockporttoa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_socktoa.c_sockporttoa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"[%s]:%hu\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:%hu\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sockporttoa(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = call i32 (...) @socket_errno()
  store i32 %6, i32* %3, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i8* @socktoa(i32* %7)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @LIB_GETBUF(i8* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @LIB_BUFLENGTH, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @IS_IPV6(i32* %13)
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %18 = load i8*, i8** %4, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @SRCPORT(i32* %19)
  %21 = call i32 @snprintf(i8* %11, i32 %12, i8* %17, i8* %18, i32 %20)
  %22 = load i32, i32* %3, align 4
  store i32 %22, i32* @errno, align 4
  %23 = load i8*, i8** %5, align 8
  ret i8* %23
}

declare dso_local i32 @socket_errno(...) #1

declare dso_local i8* @socktoa(i32*) #1

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @IS_IPV6(i32*) #1

declare dso_local i32 @SRCPORT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
