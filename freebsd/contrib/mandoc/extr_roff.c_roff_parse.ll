; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_roff.c_roff_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff = type { i32, i32, i32, i32 }

@TOKEN_NONE = common dso_local global i32 0, align 4
@ROFF_USERDEF = common dso_local global i32 0, align 4
@ROFF_RENAMED = common dso_local global i32 0, align 4
@ROFFDEF_UNDEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff*, i8*, i32*, i32, i32)* @roff_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roff_parse(%struct.roff* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.roff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.roff* %0, %struct.roff** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 0, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %5
  %27 = load i8*, i8** %12, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 34, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 9, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 32, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36, %31, %26, %5
  %42 = load i32, i32* @TOKEN_NONE, align 4
  store i32 %42, i32* %6, align 4
  br label %97

43:                                               ; preds = %36
  %44 = load i8*, i8** %12, align 8
  store i8* %44, i8** %13, align 8
  %45 = load %struct.roff*, %struct.roff** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @roff_getname(%struct.roff* %45, i8** %12, i32 %46, i32 %47)
  store i64 %48, i64* %14, align 8
  store i32 129, i32* %15, align 4
  %49 = load %struct.roff*, %struct.roff** %7, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i32 @roff_getstrn(%struct.roff* %49, i8* %50, i64 %51, i32* %15)
  %53 = load %struct.roff*, %struct.roff** %7, align 8
  %54 = getelementptr inbounds %struct.roff, %struct.roff* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %15, align 4
  switch i32 %55, label %60 [
    i32 128, label %56
    i32 129, label %58
  ]

56:                                               ; preds = %43
  %57 = load i32, i32* @ROFF_USERDEF, align 4
  store i32 %57, i32* %16, align 4
  br label %67

58:                                               ; preds = %43
  %59 = load i32, i32* @ROFF_RENAMED, align 4
  store i32 %59, i32* %16, align 4
  br label %67

60:                                               ; preds = %43
  %61 = load %struct.roff*, %struct.roff** %7, align 8
  %62 = getelementptr inbounds %struct.roff, %struct.roff* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @roffhash_find(i32 %63, i8* %64, i64 %65)
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %60, %58, %56
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @TOKEN_NONE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %95

79:                                               ; preds = %67
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @ROFFDEF_UNDEF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load %struct.roff*, %struct.roff** %7, align 8
  %85 = getelementptr inbounds %struct.roff, %struct.roff* %84, i32 0, i32 1
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @roff_setstrn(i32* %85, i8* %86, i64 %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %89 = load %struct.roff*, %struct.roff** %7, align 8
  %90 = getelementptr inbounds %struct.roff, %struct.roff* %89, i32 0, i32 0
  %91 = load i8*, i8** %13, align 8
  %92 = load i64, i64* %14, align 8
  %93 = call i32 @roff_setstrn(i32* %90, i8* %91, i64 %92, i8* null, i32 0, i32 0)
  br label %94

94:                                               ; preds = %83, %79
  br label %95

95:                                               ; preds = %94, %71
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %41
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i64 @roff_getname(%struct.roff*, i8**, i32, i32) #1

declare dso_local i32 @roff_getstrn(%struct.roff*, i8*, i64, i32*) #1

declare dso_local i32 @roffhash_find(i32, i8*, i64) #1

declare dso_local i32 @roff_setstrn(i32*, i8*, i64, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
