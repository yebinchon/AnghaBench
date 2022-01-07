; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_strtofflags.c_fflagstostr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_strtofflags.c_fflagstostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i64 }

@nmappings = common dso_local global i32 0, align 4
@longestflaglen = common dso_local global i32 0, align 4
@mapping = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fflagstostr(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* @nmappings, align 4
  %10 = load i32, i32* @longestflaglen, align 4
  %11 = add nsw i32 %10, 1
  %12 = mul nsw i32 %9, %11
  %13 = call i64 @malloc(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %94

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %88, %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @nmappings, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %25, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %87

34:                                               ; preds = %24
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = icmp ugt i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %6, align 8
  store i8 44, i8* %39, align 1
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  br label %64

64:                                               ; preds = %56, %49
  %65 = phi i8* [ %55, %49 ], [ %63, %56 ]
  store i8* %65, i8** %5, align 8
  br label %66

66:                                               ; preds = %71, %64
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  %74 = load i8, i8* %72, align 1
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 %74, i8* %75, align 1
  br label %66

77:                                               ; preds = %66
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mapping, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %7, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %77, %24
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %20

91:                                               ; preds = %20
  %92 = load i8*, i8** %6, align 8
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %4, align 8
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %91, %16
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
