; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_preserve.c_ex_recover.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_preserve.c_ex_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64, i32 }

@E_C_FORCE = common dso_local global i32 0, align 4
@FR_RECOVER = common dso_local global i32 0, align 4
@FS_SETALT = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@SC_FSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_recover(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %12, i64 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i8*, i8** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @INT2CHAR(i32* %15, i32 %18, i64 %22, i8* %23, i64 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @set_alt_name(i32* %26, i8* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @E_C_FORCE, align 4
  %34 = call i64 @FL_ISSET(i32 %32, i32 %33)
  %35 = call i64 @file_m2(i32* %29, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %81

38:                                               ; preds = %2
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @INT2CHAR(i32* %39, i32 %42, i64 %46, i8* %47, i64 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32* @file_add(i32* %50, i8* %51)
  store i32* %52, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %81

55:                                               ; preds = %38
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @FR_RECOVER, align 4
  %58 = call i32 @F_SET(i32* %56, i32 %57)
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @FS_SETALT, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @E_C_FORCE, align 4
  %66 = call i64 @FL_ISSET(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %55
  %69 = load i32, i32* @FS_FORCE, align 4
  br label %71

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = or i32 %61, %72
  %74 = call i64 @file_init(i32* %59, i32* %60, i32* null, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %3, align 4
  br label %81

77:                                               ; preds = %71
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* @SC_FSWITCH, align 4
  %80 = call i32 @F_SET(i32* %78, i32 %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %76, %54, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @INT2CHAR(i32*, i32, i64, i8*, i64) #1

declare dso_local i32 @set_alt_name(i32*, i8*) #1

declare dso_local i64 @file_m2(i32*, i64) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32* @file_add(i32*, i8*) #1

declare dso_local i32 @F_SET(i32*, i32) #1

declare dso_local i64 @file_init(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
