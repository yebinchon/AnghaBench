; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_loader.c_ficlSetenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_loader.c_ficlSetenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Error: out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ficlSetenv(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @stackPopINT(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @stackPopPtr(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @stackPopINT(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @stackPopPtr(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i64 @ficlMalloc(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %3, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = call i32 @vmThrowErr(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @strncpy(i8* %37, i8* %38, i32 %39)
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 0, i8* %44, align 1
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i64 @ficlMalloc(i32 %46)
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %4, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = call i32 @vmThrowErr(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %36
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @strncpy(i8* %55, i8* %56, i32 %57)
  %59 = load i8*, i8** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i8*, i8** %3, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @setenv(i8* %63, i8* %64, i32 1)
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @ficlFree(i8* %66)
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 @ficlFree(i8* %68)
  ret void
}

declare dso_local i32 @stackPopINT(i32) #1

declare dso_local i64 @stackPopPtr(i32) #1

declare dso_local i64 @ficlMalloc(i32) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @ficlFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
