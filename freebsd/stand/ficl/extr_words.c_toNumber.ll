; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_toNumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_toNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @toNumber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toNumber(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = call i64 (...) @POPUNS()
  store i64 %12, i64* %3, align 8
  %13 = call i64 (...) @POPPTR()
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @u64Pop(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i64
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %51, %1
  %23 = load i64, i64* %3, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load i64, i64* %7, align 8
  %27 = icmp slt i64 %26, 48
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %58

29:                                               ; preds = %25
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %30, 48
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %32, 9
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load i64, i64* %7, align 8
  %36 = call signext i8 @tolower(i64 %35)
  %37 = sext i8 %36 to i32
  %38 = sub nsw i32 %37, 97
  %39 = add nsw i32 %38, 10
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %8, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %58

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @m64Mac(i32 %47, i64 %48, i64 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %4, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i64
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %3, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %3, align 8
  br label %22

58:                                               ; preds = %45, %28, %22
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @u64Push(i32 %61, i32 %62)
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @PUSHPTR(i8* %64)
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @PUSHUNS(i64 %66)
  ret void
}

declare dso_local i64 @POPUNS(...) #1

declare dso_local i64 @POPPTR(...) #1

declare dso_local i32 @u64Pop(i32) #1

declare dso_local signext i8 @tolower(i64) #1

declare dso_local i32 @m64Mac(i32, i64, i64) #1

declare dso_local i32 @u64Push(i32, i32) #1

declare dso_local i32 @PUSHPTR(i8*) #1

declare dso_local i32 @PUSHUNS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
