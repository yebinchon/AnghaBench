; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_loader.c_pfopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_loader.c_pfopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@VE_GUESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @pfopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pfopen(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @stackPopINT(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @stackPopINT(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @stackPopPtr(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @stackPushINT(i32 %28, i32 -1)
  br label %53

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i64 @malloc(i32 %32)
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bcopy(i8* %35, i8* %36, i32 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @open(i8* %43, i32 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @stackPushINT(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %30, %25
  ret void
}

declare dso_local i32 @stackPopINT(i32) #1

declare dso_local i8* @stackPopPtr(i32) #1

declare dso_local i32 @stackPushINT(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
