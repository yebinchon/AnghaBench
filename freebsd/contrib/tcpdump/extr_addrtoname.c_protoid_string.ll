; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_protoid_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_protoid_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)* }
%struct.protoidmem = type { i8* }

@hex = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [28 x i8] c"protoid_string: strdup(buf)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @protoid_string(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.protoidmem*, align 8
  %10 = alloca [15 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.protoidmem* @lookup_protoid(%struct.TYPE_5__* %11, i32* %12)
  store %struct.protoidmem* %13, %struct.protoidmem** %9, align 8
  %14 = load %struct.protoidmem*, %struct.protoidmem** %9, align 8
  %15 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.protoidmem*, %struct.protoidmem** %9, align 8
  %20 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %3, align 8
  br label %102

22:                                               ; preds = %2
  %23 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  store i8* %23, i8** %8, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %25, 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load i8**, i8*** @hex, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = ptrtoint i8* %33 to i8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i8**, i8*** @hex, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %5, align 8
  %41 = load i32, i32* %39, align 4
  %42 = and i32 %41, 15
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %38, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %8, align 8
  store i8 %46, i8* %47, align 1
  store i64 4, i64* %6, align 8
  br label %49

49:                                               ; preds = %70, %37
  %50 = load i64, i64* %6, align 8
  %51 = add i64 %50, -1
  store i64 %51, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %8, align 8
  store i8 58, i8* %55, align 1
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i8**, i8*** @hex, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %66 to i8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %62, %54
  %71 = load i8**, i8*** @hex, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  %74 = load i32, i32* %72, align 4
  %75 = and i32 %74, 15
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %71, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = ptrtoint i8* %78 to i8
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  store i8 %79, i8* %80, align 1
  br label %49

82:                                               ; preds = %49
  %83 = load i8*, i8** %8, align 8
  store i8 0, i8* %83, align 1
  %84 = getelementptr inbounds [15 x i8], [15 x i8]* %10, i64 0, i64 0
  %85 = call i8* @strdup(i8* %84)
  %86 = load %struct.protoidmem*, %struct.protoidmem** %9, align 8
  %87 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load %struct.protoidmem*, %struct.protoidmem** %9, align 8
  %89 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %82
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = call i32 %95(%struct.TYPE_5__* %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %92, %82
  %99 = load %struct.protoidmem*, %struct.protoidmem** %9, align 8
  %100 = getelementptr inbounds %struct.protoidmem, %struct.protoidmem* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %3, align 8
  br label %102

102:                                              ; preds = %98, %18
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local %struct.protoidmem* @lookup_protoid(%struct.TYPE_5__*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
