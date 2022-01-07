; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwres.c_lwres_printname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-lwres.c_lwres_printname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64, i8*)* @lwres_printname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lwres_printname(%struct.TYPE_5__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = getelementptr inbounds i8, i8* %11, i64 %12
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = icmp ugt i8* %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str to %struct.TYPE_5__*))
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %35, %21
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %8, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @safeputchar(%struct.TYPE_5__* %29, i32 %33)
  br label %35

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %9, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load i8*, i8** %8, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %8, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %20
  store i32 -1, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i32 @safeputchar(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
