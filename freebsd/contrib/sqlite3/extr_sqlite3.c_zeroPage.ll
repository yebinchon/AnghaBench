; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_zeroPage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_zeroPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i64, i64, i64, i8*, i8*, i8*, i64, i64, i32, i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }

@BTS_FAST_SECURE = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32)* @zeroPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zeroPage(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 14
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 13
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @sqlite3PagerPagenumber(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 8
  %31 = call i8* @sqlite3PagerGetExtra(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = bitcast %struct.TYPE_5__* %32 to i8*
  %34 = icmp eq i8* %31, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @sqlite3PagerGetData(i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = icmp eq i8* %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sqlite3PagerIswriteable(i32 %47)
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sqlite3_mutex_held(i32 %52)
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BTS_FAST_SECURE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %2
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memset(i8* %64, i32 0, i32 %70)
  br label %72

72:                                               ; preds = %61, %2
  %73 = load i32, i32* %4, align 4
  %74 = trunc i32 %73 to i8
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  store i8 %74, i8* %77, align 1
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PTF_LEAF, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 12, i32 8
  %85 = sext i32 %84 to i64
  %86 = add i64 %78, %85
  store i64 %86, i64* %8, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @memset(i8* %90, i32 0, i32 4)
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %93, 7
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add i64 %97, 5
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @put2byte(i8* %99, i64 %102)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = sub i64 %106, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 3
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @decodeFlags(%struct.TYPE_5__* %111, i32 %112)
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  store i64 %114, i64* %116, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 5
  store i8* %121, i8** %123, align 8
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** %5, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 12
  store i64 0, i64* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp sge i32 %140, 512
  br i1 %141, label %142, label %147

142:                                              ; preds = %72
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp sle i32 %145, 65536
  br label %147

147:                                              ; preds = %142, %72
  %148 = phi i1 [ false, %72 ], [ %146, %142 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @assert(i32 %149)
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 9
  store i64 %155, i64* %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 11
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 10
  store i32 1, i32* %161, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3PagerPagenumber(i32) #1

declare dso_local i8* @sqlite3PagerGetExtra(i32) #1

declare dso_local i8* @sqlite3PagerGetData(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put2byte(i8*, i64) #1

declare dso_local i32 @decodeFlags(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
