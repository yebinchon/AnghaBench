; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_fty_enum.c_Next_Enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_fty_enum.c_Next_Enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8**, i32, i32 }

@EXACT = common dso_local global i64 0, align 8
@dummy = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @Next_Enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Next_Enum(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %7, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i64 @field_buffer(i32* %22, i32 0)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %10, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = icmp ne i8** %25, null
  br i1 %26, label %27, label %68

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %9, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %7, align 8
  %35 = load i8*, i8** %33, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @Compare(i8* %35, i8* %36, i32 %37)
  %39 = load i64, i64* @EXACT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %43

42:                                               ; preds = %32
  br label %28

43:                                               ; preds = %41, %28
  %44 = load i32, i32* %9, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8**, i8*** %48, align 8
  store i8** %49, i8*** %7, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %9, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* @dummy, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @Compare(i8* %55, i8* %56, i32 %57)
  %59 = load i64, i64* @EXACT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %53, %50
  %62 = load i32*, i32** %4, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @set_field_buffer(i32* %62, i32 0, i8* %64)
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %3, align 4
  br label %70

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %2
  %69 = load i32, i32* @FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %61
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @field_buffer(i32*, i32) #1

declare dso_local i64 @Compare(i8*, i8*, i32) #1

declare dso_local i32 @set_field_buffer(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
