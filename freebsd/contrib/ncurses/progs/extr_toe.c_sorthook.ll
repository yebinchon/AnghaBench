; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_toe.c_sorthook.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/progs/extr_toe.c_sorthook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32*)* @sorthook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sorthook(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = call %struct.TYPE_3__* (...) @new_termdata()
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @checksum_of(i32* %17)
  br label %20

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ %18, %16 ], [ 0, %19 ]
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strmalloc(i8* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i8* @term_description(i32* %28)
  %30 = call i8* @strmalloc(i8* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @new_termdata(...) #1

declare dso_local i32 @checksum_of(i32*) #1

declare dso_local i8* @strmalloc(i8*) #1

declare dso_local i8* @term_description(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
