; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsefn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-nfs.c_parsefn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32*)* @parsefn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parsefn(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ND_TCHECK(i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %11, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @NTOHL(i32 %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 3
  %20 = and i32 %19, -4
  %21 = call i32 @ND_TCHECK2(i32 %17, i32 %20)
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 3
  %25 = and i32 %24, -4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 %27
  store i32* %29, i32** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str to %struct.TYPE_5__*))
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @fn_printn(%struct.TYPE_5__* %32, i32* %33, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %2
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str to %struct.TYPE_5__*))
  br label %47

43:                                               ; preds = %2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = call i32 @ND_PRINT(%struct.TYPE_5__* bitcast ([2 x i8]* @.str to %struct.TYPE_5__*))
  %46 = load i32*, i32** %5, align 8
  store i32* %46, i32** %3, align 8
  br label %48

47:                                               ; preds = %40
  store i32* null, i32** %3, align 8
  br label %48

48:                                               ; preds = %47, %43
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @NTOHL(i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_5__*) #1

declare dso_local i64 @fn_printn(%struct.TYPE_5__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
