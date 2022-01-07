; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c_adduarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_printf-pos.c_adduarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typetable = type { i32, i8** }

@INTMAXT = common dso_local global i32 0, align 4
@T_UINTMAXT = common dso_local global i8* null, align 8
@SIZET = common dso_local global i32 0, align 4
@T_SIZET = common dso_local global i8* null, align 8
@PTRDIFFT = common dso_local global i32 0, align 4
@LLONGINT = common dso_local global i32 0, align 4
@T_U_LLONG = common dso_local global i8* null, align 8
@LONGINT = common dso_local global i32 0, align 4
@T_U_LONG = common dso_local global i8* null, align 8
@T_U_INT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typetable*, i32)* @adduarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adduarg(%struct.typetable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.typetable*, align 8
  %5 = alloca i32, align 4
  store %struct.typetable* %0, %struct.typetable** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.typetable*, %struct.typetable** %4, align 8
  %7 = call i64 @_ensurespace(%struct.typetable* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %106

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @INTMAXT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load i8*, i8** @T_UINTMAXT, align 8
  %17 = load %struct.typetable*, %struct.typetable** %4, align 8
  %18 = getelementptr inbounds %struct.typetable, %struct.typetable* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load %struct.typetable*, %struct.typetable** %4, align 8
  %21 = getelementptr inbounds %struct.typetable, %struct.typetable* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8*, i8** %19, i64 %24
  store i8* %16, i8** %25, align 8
  br label %105

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SIZET, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i8*, i8** @T_SIZET, align 8
  %33 = load %struct.typetable*, %struct.typetable** %4, align 8
  %34 = getelementptr inbounds %struct.typetable, %struct.typetable* %33, i32 0, i32 1
  %35 = load i8**, i8*** %34, align 8
  %36 = load %struct.typetable*, %struct.typetable** %4, align 8
  %37 = getelementptr inbounds %struct.typetable, %struct.typetable* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8*, i8** %35, i64 %40
  store i8* %32, i8** %41, align 8
  br label %104

42:                                               ; preds = %26
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PTRDIFFT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load i8*, i8** @T_SIZET, align 8
  %49 = load %struct.typetable*, %struct.typetable** %4, align 8
  %50 = getelementptr inbounds %struct.typetable, %struct.typetable* %49, i32 0, i32 1
  %51 = load i8**, i8*** %50, align 8
  %52 = load %struct.typetable*, %struct.typetable** %4, align 8
  %53 = getelementptr inbounds %struct.typetable, %struct.typetable* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8*, i8** %51, i64 %56
  store i8* %48, i8** %57, align 8
  br label %103

58:                                               ; preds = %42
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @LLONGINT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load i8*, i8** @T_U_LLONG, align 8
  %65 = load %struct.typetable*, %struct.typetable** %4, align 8
  %66 = getelementptr inbounds %struct.typetable, %struct.typetable* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.typetable*, %struct.typetable** %4, align 8
  %69 = getelementptr inbounds %struct.typetable, %struct.typetable* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8*, i8** %67, i64 %72
  store i8* %64, i8** %73, align 8
  br label %102

74:                                               ; preds = %58
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @LONGINT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i8*, i8** @T_U_LONG, align 8
  %81 = load %struct.typetable*, %struct.typetable** %4, align 8
  %82 = getelementptr inbounds %struct.typetable, %struct.typetable* %81, i32 0, i32 1
  %83 = load i8**, i8*** %82, align 8
  %84 = load %struct.typetable*, %struct.typetable** %4, align 8
  %85 = getelementptr inbounds %struct.typetable, %struct.typetable* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8*, i8** %83, i64 %88
  store i8* %80, i8** %89, align 8
  br label %101

90:                                               ; preds = %74
  %91 = load i8*, i8** @T_U_INT, align 8
  %92 = load %struct.typetable*, %struct.typetable** %4, align 8
  %93 = getelementptr inbounds %struct.typetable, %struct.typetable* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = load %struct.typetable*, %struct.typetable** %4, align 8
  %96 = getelementptr inbounds %struct.typetable, %struct.typetable* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8*, i8** %94, i64 %99
  store i8* %91, i8** %100, align 8
  br label %101

101:                                              ; preds = %90, %79
  br label %102

102:                                              ; preds = %101, %63
  br label %103

103:                                              ; preds = %102, %47
  br label %104

104:                                              ; preds = %103, %31
  br label %105

105:                                              ; preds = %104, %15
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %9
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @_ensurespace(%struct.typetable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
