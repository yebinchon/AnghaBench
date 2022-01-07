; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_TCset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.screen.c_TCset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termcapstr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termcapstr*, i8*)* @TCset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TCset(%struct.termcapstr* %0, i8* %1) #0 {
  %3 = alloca %struct.termcapstr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.termcapstr* %0, %struct.termcapstr** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %8, %2
  %14 = load %struct.termcapstr*, %struct.termcapstr** %3, align 8
  %15 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @xfree(i32* %16)
  %18 = load %struct.termcapstr*, %struct.termcapstr** %3, align 8
  %19 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %38

20:                                               ; preds = %8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %5, align 8
  %25 = load %struct.termcapstr*, %struct.termcapstr** %3, align 8
  %26 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32* @xrealloc(i32* %27, i64 %28)
  %30 = load %struct.termcapstr*, %struct.termcapstr** %3, align 8
  %31 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.termcapstr*, %struct.termcapstr** %3, align 8
  %33 = getelementptr inbounds %struct.termcapstr, %struct.termcapstr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @memcpy(i32* %34, i8* %35, i64 %36)
  br label %38

38:                                               ; preds = %20, %13
  ret void
}

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @xrealloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
