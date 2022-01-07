; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_Enumerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.xmap.c_Enumerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Strbuf*, %struct.TYPE_3__*)* @Enumerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Enumerate(%struct.Strbuf* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.Strbuf*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  store %struct.Strbuf* %0, %struct.Strbuf** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %54

9:                                                ; preds = %2
  %10 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %11 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @unparsech(%struct.Strbuf* %13, i32 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp eq %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %9
  %23 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %24 = call i32 @Strbuf_append1(%struct.Strbuf* %23, i8 signext 34)
  %25 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %26 = call i32 @Strbuf_terminate(%struct.Strbuf* %25)
  %27 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %28 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @printOne(i32 %29, i32* %31, i32 %34)
  br label %41

36:                                               ; preds = %9
  %37 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  call void @Enumerate(%struct.Strbuf* %37, %struct.TYPE_3__* %40)
  br label %41

41:                                               ; preds = %36, %22
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %49 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.Strbuf*, %struct.Strbuf** %3, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  call void @Enumerate(%struct.Strbuf* %50, %struct.TYPE_3__* %53)
  br label %54

54:                                               ; preds = %8, %46, %41
  ret void
}

declare dso_local i32 @unparsech(%struct.Strbuf*, i32) #1

declare dso_local i32 @Strbuf_append1(%struct.Strbuf*, i8 signext) #1

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #1

declare dso_local i32 @printOne(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
