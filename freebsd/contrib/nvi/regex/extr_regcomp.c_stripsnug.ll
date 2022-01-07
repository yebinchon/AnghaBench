; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_stripsnug.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_stripsnug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, i32*, i32* }
%struct.re_guts = type { i32, i32*, i32* }

@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.re_guts*)* @stripsnug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stripsnug(%struct.parse* %0, %struct.re_guts* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.re_guts*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.re_guts* %1, %struct.re_guts** %4, align 8
  %5 = load %struct.parse*, %struct.parse** %3, align 8
  %6 = getelementptr inbounds %struct.parse, %struct.parse* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %9 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.parse*, %struct.parse** %3, align 8
  %11 = getelementptr inbounds %struct.parse, %struct.parse* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load %struct.parse*, %struct.parse** %3, align 8
  %15 = getelementptr inbounds %struct.parse, %struct.parse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i64 @realloc(i8* %13, i32 %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %23 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %25 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %2
  %29 = load i32, i32* @REG_ESPACE, align 4
  %30 = call i32 @SETERROR(i32 %29)
  %31 = load %struct.parse*, %struct.parse** %3, align 8
  %32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %35 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  br label %36

36:                                               ; preds = %28, %2
  %37 = load %struct.parse*, %struct.parse** %3, align 8
  %38 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load %struct.parse*, %struct.parse** %3, align 8
  %42 = getelementptr inbounds %struct.parse, %struct.parse* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @realloc(i8* %40, i32 %46)
  %48 = inttoptr i64 %47 to i32*
  %49 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %50 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %52 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %36
  %56 = load i32, i32* @REG_ESPACE, align 4
  %57 = call i32 @SETERROR(i32 %56)
  %58 = load %struct.parse*, %struct.parse** %3, align 8
  %59 = getelementptr inbounds %struct.parse, %struct.parse* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %62 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  br label %63

63:                                               ; preds = %55, %36
  ret void
}

declare dso_local i64 @realloc(i8*, i32) #1

declare dso_local i32 @SETERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
