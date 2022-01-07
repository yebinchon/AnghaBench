; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_herror.c_herror.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_herror.c_herror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iovec = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @herror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x %struct.iovec], align 16
  %4 = alloca %struct.iovec*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %3, i64 0, i64 0
  store %struct.iovec* %6, %struct.iovec** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @DE_CONST(i8* %15, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.iovec*, %struct.iovec** %4, align 8
  %20 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strlen(i8* %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.iovec*, %struct.iovec** %4, align 8
  %25 = getelementptr inbounds %struct.iovec, %struct.iovec* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.iovec*, %struct.iovec** %4, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 1
  store %struct.iovec* %27, %struct.iovec** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @DE_CONST(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.iovec*, %struct.iovec** %4, align 8
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.iovec*, %struct.iovec** %4, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i32 0, i32 1
  store i32 2, i32* %34, align 8
  %35 = load %struct.iovec*, %struct.iovec** %4, align 8
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %35, i32 1
  store %struct.iovec* %36, %struct.iovec** %4, align 8
  br label %37

37:                                               ; preds = %14, %9, %1
  %38 = call i32* (...) @__h_errno()
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @hstrerror(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @DE_CONST(i8* %40, i8* %41)
  %43 = load i8*, i8** %5, align 8
  %44 = load %struct.iovec*, %struct.iovec** %4, align 8
  %45 = getelementptr inbounds %struct.iovec, %struct.iovec* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.iovec*, %struct.iovec** %4, align 8
  %47 = getelementptr inbounds %struct.iovec, %struct.iovec* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @strlen(i8* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.iovec*, %struct.iovec** %4, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iovec*, %struct.iovec** %4, align 8
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 1
  store %struct.iovec* %54, %struct.iovec** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @DE_CONST(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.iovec*, %struct.iovec** %4, align 8
  %59 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load %struct.iovec*, %struct.iovec** %4, align 8
  %61 = getelementptr inbounds %struct.iovec, %struct.iovec* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* @STDERR_FILENO, align 4
  %63 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %3, i64 0, i64 0
  %64 = load %struct.iovec*, %struct.iovec** %4, align 8
  %65 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %3, i64 0, i64 0
  %66 = ptrtoint %struct.iovec* %64 to i64
  %67 = ptrtoint %struct.iovec* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 16
  %70 = add nsw i64 %69, 1
  %71 = trunc i64 %70 to i32
  %72 = call i32 @_writev(i32 %62, %struct.iovec* %63, i32 %71)
  ret void
}

declare dso_local i32 @DE_CONST(i8*, i8*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @hstrerror(i32) #1

declare dso_local i32* @__h_errno(...) #1

declare dso_local i32 @_writev(i32, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
