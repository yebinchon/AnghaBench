; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_match_alt_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_cert.c_match_alt_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@HX509_EXTENSION_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32*, i32*)* @match_alt_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_alt_name(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %57, %4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @find_extension_subject_alt_name(i32* %14, i64* %11, %struct.TYPE_8__* %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @HX509_EXTENSION_NOT_FOUND, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %58

20:                                               ; preds = %13
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %58

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24
  store i64 0, i64* %12, align 8
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %55

31:                                               ; preds = %26
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %34, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load i32*, i32** %7, align 8
  store i32 1, i32* %43, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %47
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @match_general_name(%struct.TYPE_9__* %44, %struct.TYPE_10__* %48, i32* %49)
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %42, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %12, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %26

55:                                               ; preds = %26
  %56 = call i32 @free_GeneralNames(%struct.TYPE_8__* %9)
  br label %57

57:                                               ; preds = %55
  br i1 true, label %13, label %58

58:                                               ; preds = %57, %23, %19
  %59 = load i32, i32* %10, align 4
  ret i32 %59
}

declare dso_local i32 @find_extension_subject_alt_name(i32*, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @match_general_name(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @free_GeneralNames(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
