; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_os_pages_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_os_pages_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@os_page = common dso_local global i32 0, align 4
@BUFERROR_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"<jemalloc>: Error in munmap(): %s\0A\00", align 1
@opt_abort = common dso_local global i64 0, align 8
@MEM_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @os_pages_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @os_pages_unmap(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @os_page, align 4
  %9 = call i8* @ALIGNMENT_ADDR2BASE(i8* %7, i32 %8)
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @os_page, align 4
  %16 = call i64 @ALIGNMENT_CEILING(i64 %14, i32 %15)
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i8*, i8** %3, align 8
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @munmap(i8* %21, i64 %22)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load i32, i32* @BUFERROR_BUF, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %5, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %6, align 8
  %30 = call i32 (...) @get_errno()
  %31 = trunc i64 %27 to i32
  %32 = call i32 @buferror(i32 %30, i8* %29, i32 %31)
  %33 = call i32 @malloc_printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %29)
  %34 = load i64, i64* @opt_abort, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = call i32 (...) @abort() #4
  unreachable

38:                                               ; preds = %25
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  br label %40

40:                                               ; preds = %38, %2
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ALIGNMENT_ADDR2BASE(i8*, i32) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @buferror(i32, i8*, i32) #1

declare dso_local i32 @get_errno(...) #1

declare dso_local i32 @malloc_printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
