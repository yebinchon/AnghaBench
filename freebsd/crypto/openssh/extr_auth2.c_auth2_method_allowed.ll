; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_auth2_method_allowed.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_auth2.c_auth2_method_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i32* }

@options = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MATCH_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @auth2_method_allowed(%struct.TYPE_4__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @options, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %37

12:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %33, %12
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @list_starts_with(i32 %25, i8* %26, i8* %27)
  %29 = load i64, i64* @MATCH_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %4, align 4
  br label %37

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %13

36:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %31, %11
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @list_starts_with(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
