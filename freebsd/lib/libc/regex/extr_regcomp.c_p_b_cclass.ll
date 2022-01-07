; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_b_cclass.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_b_cclass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i8* }

@REG_ECTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i32*)* @p_b_cclass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_b_cclass(%struct.parse* %0, i32* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.parse*, %struct.parse** %3, align 8
  %10 = getelementptr inbounds %struct.parse, %struct.parse* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %22, %2
  %13 = call i64 (...) @MORE()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i64 (...) @PEEK()
  %17 = trunc i64 %16 to i32
  %18 = call i64 @isalpha(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 (...) @NEXT()
  br label %12

24:                                               ; preds = %20
  %25 = load %struct.parse*, %struct.parse** %3, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp uge i64 %32, 15
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @REG_ECTYPE, align 4
  %36 = call i32 @SETERROR(i32 %35)
  br label %55

37:                                               ; preds = %24
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @memcpy(i8* %38, i8* %39, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %42
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %45 = call i32 @wctype(i8* %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = load i32, i32* @REG_ECTYPE, align 4
  %49 = call i32 @SETERROR(i32 %48)
  br label %55

50:                                               ; preds = %37
  %51 = load %struct.parse*, %struct.parse** %3, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @CHaddtype(%struct.parse* %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47, %34
  ret void
}

declare dso_local i64 @MORE(...) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @PEEK(...) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @wctype(i8*) #1

declare dso_local i32 @CHaddtype(%struct.parse*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
