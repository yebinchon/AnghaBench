; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_perror.c_perror.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_perror.c_perror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.iovec = type { i8*, i32 }

@NL_TEXTMAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = common dso_local global %struct.TYPE_4__* null, align 8
@__SOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca [4 x %struct.iovec], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @NL_TEXTMAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %6, i64 0, i64 0
  store %struct.iovec* %11, %struct.iovec** %5, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %36

14:                                               ; preds = %1
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = load %struct.iovec*, %struct.iovec** %5, align 8
  %22 = getelementptr inbounds %struct.iovec, %struct.iovec* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i8* @strlen(i8* %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.iovec*, %struct.iovec** %5, align 8
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.iovec*, %struct.iovec** %5, align 8
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i32 1
  store %struct.iovec* %29, %struct.iovec** %5, align 8
  %30 = load %struct.iovec*, %struct.iovec** %5, align 8
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %32 = load %struct.iovec*, %struct.iovec** %5, align 8
  %33 = getelementptr inbounds %struct.iovec, %struct.iovec* %32, i32 0, i32 1
  store i32 2, i32* %33, align 8
  %34 = load %struct.iovec*, %struct.iovec** %5, align 8
  %35 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i32 1
  store %struct.iovec* %35, %struct.iovec** %5, align 8
  br label %36

36:                                               ; preds = %19, %14, %1
  %37 = load i32, i32* @errno, align 4
  %38 = trunc i64 %8 to i32
  %39 = call i32 @strerror_r(i32 %37, i8* %10, i32 %38)
  %40 = load %struct.iovec*, %struct.iovec** %5, align 8
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 0
  store i8* %10, i8** %41, align 8
  %42 = load %struct.iovec*, %struct.iovec** %5, align 8
  %43 = getelementptr inbounds %struct.iovec, %struct.iovec* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i8* @strlen(i8* %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.iovec*, %struct.iovec** %5, align 8
  %48 = getelementptr inbounds %struct.iovec, %struct.iovec* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.iovec*, %struct.iovec** %5, align 8
  %50 = getelementptr inbounds %struct.iovec, %struct.iovec* %49, i32 1
  store %struct.iovec* %50, %struct.iovec** %5, align 8
  %51 = load %struct.iovec*, %struct.iovec** %5, align 8
  %52 = getelementptr inbounds %struct.iovec, %struct.iovec* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %52, align 8
  %53 = load %struct.iovec*, %struct.iovec** %5, align 8
  %54 = getelementptr inbounds %struct.iovec, %struct.iovec* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stderr, align 8
  %56 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_4__* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stderr, align 8
  %58 = call i32 @__sflush(%struct.TYPE_4__* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stderr, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %6, i64 0, i64 0
  %63 = load %struct.iovec*, %struct.iovec** %5, align 8
  %64 = getelementptr inbounds [4 x %struct.iovec], [4 x %struct.iovec]* %6, i64 0, i64 0
  %65 = ptrtoint %struct.iovec* %63 to i64
  %66 = ptrtoint %struct.iovec* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 16
  %69 = add nsw i64 %68, 1
  %70 = trunc i64 %69 to i32
  %71 = call i32 @_writev(i32 %61, %struct.iovec* %62, i32 %70)
  %72 = load i32, i32* @__SOFF, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @stderr, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %79 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %79)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strlen(i8*) #2

declare dso_local i32 @strerror_r(i32, i8*, i32) #2

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_4__*) #2

declare dso_local i32 @__sflush(%struct.TYPE_4__*) #2

declare dso_local i32 @_writev(i32, %struct.iovec*, i32) #2

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
