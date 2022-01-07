; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_terminal.c_terminal_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32****** (%struct.TYPE_7__*)* @terminal_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32****** @terminal_alloc_buffer(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32******, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32******, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = call i8* @el_calloc(i64 %14, i32 8)
  %16 = bitcast i8* %15 to i32******
  store i32****** %16, i32******* %4, align 8
  %17 = load i32******, i32******* %4, align 8
  %18 = icmp eq i32****** %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32****** null, i32******* %2, align 8
  br label %72

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  %32 = call i8* @el_calloc(i64 %31, i32 8)
  %33 = bitcast i8* %32 to i32*****
  %34 = load i32******, i32******* %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*****, i32****** %34, i64 %36
  store i32***** %33, i32****** %37, align 8
  %38 = load i32******, i32******* %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*****, i32****** %38, i64 %40
  %42 = load i32*****, i32****** %41, align 8
  %43 = icmp eq i32***** %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32******, i32******* %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*****, i32****** %50, i64 %52
  %54 = load i32*****, i32****** %53, align 8
  %55 = bitcast i32***** %54 to i32******
  %56 = call i32 @el_free(i32****** %55)
  br label %45

57:                                               ; preds = %45
  %58 = load i32******, i32******* %4, align 8
  %59 = call i32 @el_free(i32****** %58)
  store i32****** null, i32******* %2, align 8
  br label %72

60:                                               ; preds = %27
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load i32******, i32******* %4, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*****, i32****** %65, i64 %69
  store i32***** null, i32****** %70, align 8
  %71 = load i32******, i32******* %4, align 8
  store i32****** %71, i32******* %2, align 8
  br label %72

72:                                               ; preds = %64, %57, %19
  %73 = load i32******, i32******* %2, align 8
  ret i32****** %73
}

declare dso_local i8* @el_calloc(i64, i32) #1

declare dso_local i32 @el_free(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
