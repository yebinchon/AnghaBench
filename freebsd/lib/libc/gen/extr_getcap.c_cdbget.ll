; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cdbget.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cdbget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)* }
%struct.TYPE_7__ = type { i8*, i64 }

@SHADOW = common dso_local global i8 0, align 1
@TCERR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8**, i8*)* @cdbget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdbget(%struct.TYPE_8__* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_7__, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %70

16:                                               ; preds = %3
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i64 %20, i64* %21, align 8
  br label %22

22:                                               ; preds = %44, %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_7__*, i32)** %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = call i32 %25(%struct.TYPE_8__* %26, %struct.TYPE_7__* %8, %struct.TYPE_7__* %9, i32 0)
  switch i32 %27, label %34 [
    i32 -1, label %28
    i32 1, label %31
  ]

28:                                               ; preds = %22
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @free(i8* %29)
  store i32 -2, i32* %4, align 4
  br label %70

31:                                               ; preds = %22
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 @free(i8* %32)
  store i32 -1, i32* %4, align 4
  br label %70

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @SHADOW, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %53

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %50, 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i64 %51, i64* %52, align 8
  br label %22

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8**, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @free(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @TCERR, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %53, %31, %28, %15
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
