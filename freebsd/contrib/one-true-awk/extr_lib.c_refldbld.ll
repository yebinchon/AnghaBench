; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_refldbld.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_refldbld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i32 }

@fieldssize = common dso_local global i32 0, align 4
@fields = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"out of space for fields in refldbld %d\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"into refldbld, rec = <%s>, pat = <%s>\0A\00", align 1
@nfields = common dso_local global i32 0, align 4
@fldtab = common dso_local global %struct.TYPE_7__** null, align 8
@FLD = common dso_local global i32 0, align 4
@STR = common dso_local global i32 0, align 4
@DONTFREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"refldbld: i=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"match %s (%d chars)\0A\00", align 1
@patbeg = common dso_local global i8* null, align 8
@patlen = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"no match %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @refldbld(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @fieldssize, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load i8*, i8** @fields, align 8
  %18 = call i32 @xfree(i8* %17)
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** @fields, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @FATAL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* @fieldssize, align 4
  br label %29

29:                                               ; preds = %27, %2
  %30 = load i8*, i8** @fields, align 8
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %143

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = call %struct.TYPE_6__* @makedfa(i8* %38, i32 1)
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %10, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @dprintf(i8* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %138, %37
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @nfields, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @growfldtab(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = call i64 @freeable(%struct.TYPE_7__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %62, i64 %64
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @xfree(i8* %68)
  br label %70

70:                                               ; preds = %61, %53
  %71 = load i32, i32* @FLD, align 4
  %72 = load i32, i32* @STR, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @DONTFREE, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %76, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %75, i32* %81, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @fldtab, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %83, i64 %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i8* %82, i8** %88, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = call i32 @dprintf(i8* %91)
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = call i64 @nematch(%struct.TYPE_6__* %93, i8* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %70
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i32 2, i32* %99, align 4
  %100 = load i8*, i8** @patbeg, align 8
  %101 = load i32, i32* @patlen, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @dprintf(i8* %103)
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %4, align 8
  %107 = load i8*, i8** @patbeg, align 8
  %108 = load i8*, i8** %4, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @strncpy(i8* %105, i8* %106, i32 %112)
  %114 = load i8*, i8** @patbeg, align 8
  %115 = load i8*, i8** %4, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = add nsw i64 %118, 1
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 %119
  store i8* %121, i8** %6, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 -1
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** @patbeg, align 8
  %125 = load i32, i32* @patlen, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8* %127, i8** %4, align 8
  br label %137

128:                                              ; preds = %70
  %129 = load i8*, i8** %4, align 8
  %130 = call i32 @dprintf(i8* %129)
  %131 = load i8*, i8** %6, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @strcpy(i8* %131, i8* %132)
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %141

137:                                              ; preds = %97
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %7, align 4
  br label %46

141:                                              ; preds = %128
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %141, %36
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @FATAL(i8*, i32) #1

declare dso_local %struct.TYPE_6__* @makedfa(i8*, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i32 @growfldtab(i32) #1

declare dso_local i64 @freeable(%struct.TYPE_7__*) #1

declare dso_local i64 @nematch(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
