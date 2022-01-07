; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgetln.c_fgetln.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fgetln.c_fgetln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@__SMOD = common dso_local global i32 0, align 4
@__SERR = common dso_local global i32 0, align 4
@OPTIMISTIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fgetln(%struct.TYPE_10__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_10__* %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = call i32 @ORIENT(%struct.TYPE_10__* %12, i32 -1)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ule i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %20 = call i64 @__srefill(%struct.TYPE_10__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64*, i64** %4, align 8
  store i64 0, i64* %23, align 8
  store i8* null, i8** %6, align 8
  br label %159

24:                                               ; preds = %18, %2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i8* @memchr(i8* %27, i8 signext 10, i64 %30)
  store i8* %31, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %24
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %39 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  store i64 %45, i64* %7, align 8
  %46 = load i64*, i64** %4, align 8
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* @__SMOD, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %159

60:                                               ; preds = %24
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %64

64:                                               ; preds = %145, %60
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 80
  %68 = call i64 @__slbexpand(%struct.TYPE_10__* %65, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %162

71:                                               ; preds = %64
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = inttoptr i64 %77 to i8*
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub i64 %82, %83
  %85 = call i32 @memcpy(i8* %78, i8* %81, i64 %84)
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %8, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = call i64 @__srefill(%struct.TYPE_10__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %71
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = call i64 @__sfeof(%struct.TYPE_10__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %151

95:                                               ; preds = %90
  br label %162

96:                                               ; preds = %71
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @memchr(i8* %99, i8 signext 10, i64 %102)
  store i8* %103, i8** %5, align 8
  %104 = icmp eq i8* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %96
  br label %145

106:                                              ; preds = %96
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %5, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = ptrtoint i8* %109 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  store i64 %115, i64* %9, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %7, align 8
  %118 = add i64 %117, %116
  store i64 %118, i64* %7, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i64 @__slbexpand(%struct.TYPE_10__* %119, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %106
  br label %162

124:                                              ; preds = %106
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %128, %129
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = load i64, i64* %9, align 8
  %136 = call i32 @memcpy(i8* %131, i8* %134, i64 %135)
  %137 = load i64, i64* %9, align 8
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %140, %137
  store i64 %141, i64* %139, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %151

145:                                              ; preds = %105
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %7, align 8
  %150 = add i64 %149, %148
  store i64 %150, i64* %7, align 8
  br label %64

151:                                              ; preds = %124, %94
  %152 = load i64, i64* %7, align 8
  %153 = load i64*, i64** %4, align 8
  store i64 %152, i64* %153, align 8
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i8*
  store i8* %158, i8** %6, align 8
  br label %159

159:                                              ; preds = %162, %151, %33, %22
  %160 = call i32 (...) @FUNLOCKFILE_CANCELSAFE()
  %161 = load i8*, i8** %6, align 8
  ret i8* %161

162:                                              ; preds = %123, %95, %70
  %163 = load i64*, i64** %4, align 8
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* @__SERR, align 4
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  store i8* null, i8** %6, align 8
  br label %159
}

declare dso_local i32 @FLOCKFILE_CANCELSAFE(%struct.TYPE_10__*) #1

declare dso_local i32 @ORIENT(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @__srefill(%struct.TYPE_10__*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i64 @__slbexpand(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @__sfeof(%struct.TYPE_10__*) #1

declare dso_local i32 @FUNLOCKFILE_CANCELSAFE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
