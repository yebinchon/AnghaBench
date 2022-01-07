; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_fty_enum.c_Previous_Enum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/form/extr_fty_enum.c_Previous_Enum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8**, i32 }

@EXACT = common dso_local global i64 0, align 8
@dummy = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @Previous_Enum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Previous_Enum(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  store i8** %22, i8*** %8, align 8
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i64 @field_buffer(i32* %26, i32 0)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %78

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %46, %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %7, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i8**, i8*** %8, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i32 -1
  store i8** %38, i8*** %8, align 8
  %39 = load i8*, i8** %37, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @Compare(i8* %39, i8* %40, i32 %41)
  %43 = load i64, i64* @EXACT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %47

46:                                               ; preds = %36
  br label %32

47:                                               ; preds = %45, %32
  %48 = load i32, i32* %7, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %53, i64 %58
  store i8** %59, i8*** %8, align 8
  br label %60

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %7, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %60
  %64 = load i64, i64* @dummy, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i64 @Compare(i8* %65, i8* %66, i32 %67)
  %69 = load i64, i64* @EXACT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63, %60
  %72 = load i32*, i32** %4, align 8
  %73 = load i8**, i8*** %8, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @set_field_buffer(i32* %72, i32 0, i8* %74)
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %3, align 4
  br label %80

77:                                               ; preds = %63
  br label %78

78:                                               ; preds = %77, %2
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %71
  %81 = load i32, i32* %3, align 4
  ret i32 %81
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
