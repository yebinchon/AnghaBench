; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvdisasm.c_CvPrintOneCommentList.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_cvdisasm.c_CvPrintOneCommentList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@AcpiGbl_RegCommentCache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CvPrintOneCommentList(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %5, align 8
  br label %8

8:                                                ; preds = %26, %2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @AcpiDmIndent(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %17, %11
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  %30 = load i32, i32* @AcpiGbl_RegCommentCache, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = call i32 @AcpiOsReleaseObject(i32 %30, %struct.TYPE_4__* %31)
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @AcpiDmIndent(i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32*) #1

declare dso_local i32 @AcpiOsReleaseObject(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
