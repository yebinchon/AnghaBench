; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Error: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @type(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @stackPopUNS(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @stackPopPtr(i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  %16 = call i64 @ficlMalloc(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = call i32 @vmThrowErr(%struct.TYPE_5__* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  %24 = load i8*, i8** %5, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @strncpy(i8* %24, i8* %25, i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @vmTextOut(%struct.TYPE_5__* %32, i8* %33, i32 0)
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @ficlFree(i8* %35)
  ret void
}

declare dso_local i32 @stackPopUNS(i32) #1

declare dso_local i8* @stackPopPtr(i32) #1

declare dso_local i64 @ficlMalloc(i32) #1

declare dso_local i32 @vmThrowErr(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @vmTextOut(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @ficlFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
