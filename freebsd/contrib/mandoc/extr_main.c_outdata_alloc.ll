; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_outdata_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_main.c_outdata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curparse = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.curparse*)* @outdata_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outdata_alloc(%struct.curparse* %0) #0 {
  %2 = alloca %struct.curparse*, align 8
  store %struct.curparse* %0, %struct.curparse** %2, align 8
  %3 = load %struct.curparse*, %struct.curparse** %2, align 8
  %4 = getelementptr inbounds %struct.curparse, %struct.curparse* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %48 [
    i32 132, label %6
    i32 128, label %13
    i32 131, label %20
    i32 133, label %27
    i32 130, label %34
    i32 129, label %41
  ]

6:                                                ; preds = %1
  %7 = load %struct.curparse*, %struct.curparse** %2, align 8
  %8 = getelementptr inbounds %struct.curparse, %struct.curparse* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @html_alloc(i32 %9)
  %11 = load %struct.curparse*, %struct.curparse** %2, align 8
  %12 = getelementptr inbounds %struct.curparse, %struct.curparse* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.curparse*, %struct.curparse** %2, align 8
  %15 = getelementptr inbounds %struct.curparse, %struct.curparse* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @utf8_alloc(i32 %16)
  %18 = load %struct.curparse*, %struct.curparse** %2, align 8
  %19 = getelementptr inbounds %struct.curparse, %struct.curparse* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.curparse*, %struct.curparse** %2, align 8
  %22 = getelementptr inbounds %struct.curparse, %struct.curparse* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @locale_alloc(i32 %23)
  %25 = load %struct.curparse*, %struct.curparse** %2, align 8
  %26 = getelementptr inbounds %struct.curparse, %struct.curparse* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.curparse*, %struct.curparse** %2, align 8
  %29 = getelementptr inbounds %struct.curparse, %struct.curparse* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ascii_alloc(i32 %30)
  %32 = load %struct.curparse*, %struct.curparse** %2, align 8
  %33 = getelementptr inbounds %struct.curparse, %struct.curparse* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %49

34:                                               ; preds = %1
  %35 = load %struct.curparse*, %struct.curparse** %2, align 8
  %36 = getelementptr inbounds %struct.curparse, %struct.curparse* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pdf_alloc(i32 %37)
  %39 = load %struct.curparse*, %struct.curparse** %2, align 8
  %40 = getelementptr inbounds %struct.curparse, %struct.curparse* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %49

41:                                               ; preds = %1
  %42 = load %struct.curparse*, %struct.curparse** %2, align 8
  %43 = getelementptr inbounds %struct.curparse, %struct.curparse* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ps_alloc(i32 %44)
  %46 = load %struct.curparse*, %struct.curparse** %2, align 8
  %47 = getelementptr inbounds %struct.curparse, %struct.curparse* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  br label %49

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %48, %41, %34, %27, %20, %13, %6
  ret void
}

declare dso_local i32 @html_alloc(i32) #1

declare dso_local i32 @utf8_alloc(i32) #1

declare dso_local i32 @locale_alloc(i32) #1

declare dso_local i32 @ascii_alloc(i32) #1

declare dso_local i32 @pdf_alloc(i32) #1

declare dso_local i32 @ps_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
