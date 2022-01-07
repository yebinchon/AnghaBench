; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509name_to_utf8_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_x509parse.c_x509name_to_utf8_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i32*)* @x509name_to_utf8_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @x509name_to_utf8_string(%struct.TYPE_13__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.TYPE_14__* @svn_string_ncreate(i8* %13, i32 %17, i32* %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %97 [
    i32 128, label %24
    i32 131, label %41
    i32 129, label %67
    i32 130, label %93
  ]

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @svn_utf__is_valid(i64 %27, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i8* @nul_escape(%struct.TYPE_14__* %34, i32* %35)
  store i8* %36, i8** %3, align 8
  br label %114

37:                                               ; preds = %24
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @fuzzy_escape(%struct.TYPE_14__* %38, i32* %39)
  store i8* %40, i8** %3, align 8
  br label %114

41:                                               ; preds = %2
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = urem i64 %45, 4
  %47 = icmp ne i64 0, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call i8* @fuzzy_escape(%struct.TYPE_14__* %49, i32* %50)
  store i8* %51, i8** %3, align 8
  br label %114

52:                                               ; preds = %41
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32* @svn_utf__utf16_to_utf8(%struct.TYPE_14__** %7, i8* %56, i32 %62, i32 %63, i32* %64, i32* %65)
  store i32* %66, i32** %8, align 8
  br label %101

67:                                               ; preds = %2
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = urem i64 %71, 4
  %73 = icmp ne i64 0, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i8* @fuzzy_escape(%struct.TYPE_14__* %75, i32* %76)
  store i8* %77, i8** %3, align 8
  br label %114

78:                                               ; preds = %67
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 4
  %88 = trunc i64 %87 to i32
  %89 = load i32, i32* @TRUE, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32* @svn_utf__utf32_to_utf8(%struct.TYPE_14__** %7, i8* %82, i32 %88, i32 %89, i32* %90, i32* %91)
  store i32* %92, i32** %8, align 8
  br label %101

93:                                               ; preds = %2
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32* @latin1_to_utf8(%struct.TYPE_14__** %7, %struct.TYPE_14__* %94, i32* %95)
  store i32* %96, i32** %8, align 8
  br label %101

97:                                               ; preds = %2
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i8* @fuzzy_escape(%struct.TYPE_14__* %98, i32* %99)
  store i8* %100, i8** %3, align 8
  br label %114

101:                                              ; preds = %93, %78, %52
  %102 = load i32*, i32** %8, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @svn_error_clear(i32* %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = call i8* @fuzzy_escape(%struct.TYPE_14__* %107, i32* %108)
  store i8* %109, i8** %3, align 8
  br label %114

110:                                              ; preds = %101
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = call i8* @nul_escape(%struct.TYPE_14__* %111, i32* %112)
  store i8* %113, i8** %3, align 8
  br label %114

114:                                              ; preds = %110, %104, %97, %74, %48, %37, %33
  %115 = load i8*, i8** %3, align 8
  ret i8* %115
}

declare dso_local %struct.TYPE_14__* @svn_string_ncreate(i8*, i32, i32*) #1

declare dso_local i32 @svn_utf__is_valid(i64, i32) #1

declare dso_local i8* @nul_escape(%struct.TYPE_14__*, i32*) #1

declare dso_local i8* @fuzzy_escape(%struct.TYPE_14__*, i32*) #1

declare dso_local i32* @svn_utf__utf16_to_utf8(%struct.TYPE_14__**, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_utf__utf32_to_utf8(%struct.TYPE_14__**, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @latin1_to_utf8(%struct.TYPE_14__**, %struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
