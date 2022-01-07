; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_data_mbg.c_get_mbg_eph.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_data_mbg.c_get_mbg_eph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_mbg_eph(i8** %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = call i64 @get_lsb_short(i8** %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 30
  store i64 %6, i64* %8, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = call i32 @get_lsb_int16(i8** %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 29
  store i32 %10, i32* %12, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = call i64 @get_lsb_short(i8** %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 28
  store i64 %14, i64* %16, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = call i64 @get_lsb_short(i8** %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 27
  store i8* %19, i8** %21, align 8
  %22 = load i8**, i8*** %3, align 8
  %23 = call i64 @get_lsb_short(i8** %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 26
  store i8* %24, i8** %26, align 8
  %27 = load i8**, i8*** %3, align 8
  %28 = call i64 @get_lsb_short(i8** %27)
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 25
  store i8* %29, i8** %31, align 8
  %32 = load i8**, i8*** %3, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 24
  %35 = call i32 @get_mbg_tgps(i8** %32, i32* %34)
  %36 = load i8**, i8*** %3, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 23
  %39 = call i32 @get_mbg_tgps(i8** %36, i32* %38)
  %40 = load i8**, i8*** %3, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 22
  %43 = call i32 @get_mbg_tgps(i8** %40, i32* %42)
  %44 = load i8**, i8*** %3, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 21
  %47 = call i32 @FETCH_DOUBLE(i8** %44, i32* %46)
  %48 = load i8**, i8*** %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 20
  %51 = call i32 @FETCH_DOUBLE(i8** %48, i32* %50)
  %52 = load i8**, i8*** %3, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 19
  %55 = call i32 @FETCH_DOUBLE(i8** %52, i32* %54)
  %56 = load i8**, i8*** %3, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 18
  %59 = call i32 @FETCH_DOUBLE(i8** %56, i32* %58)
  %60 = load i8**, i8*** %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 17
  %63 = call i32 @FETCH_DOUBLE(i8** %60, i32* %62)
  %64 = load i8**, i8*** %3, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 16
  %67 = call i32 @FETCH_DOUBLE(i8** %64, i32* %66)
  %68 = load i8**, i8*** %3, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 15
  %71 = call i32 @FETCH_DOUBLE(i8** %68, i32* %70)
  %72 = load i8**, i8*** %3, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 14
  %75 = call i32 @FETCH_DOUBLE(i8** %72, i32* %74)
  %76 = load i8**, i8*** %3, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 13
  %79 = call i32 @FETCH_DOUBLE(i8** %76, i32* %78)
  %80 = load i8**, i8*** %3, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 12
  %83 = call i32 @FETCH_DOUBLE(i8** %80, i32* %82)
  %84 = load i8**, i8*** %3, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 11
  %87 = call i32 @FETCH_DOUBLE(i8** %84, i32* %86)
  %88 = load i8**, i8*** %3, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 10
  %91 = call i32 @FETCH_DOUBLE(i8** %88, i32* %90)
  %92 = load i8**, i8*** %3, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 9
  %95 = call i32 @FETCH_DOUBLE(i8** %92, i32* %94)
  %96 = load i8**, i8*** %3, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 8
  %99 = call i32 @FETCH_DOUBLE(i8** %96, i32* %98)
  %100 = load i8**, i8*** %3, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 7
  %103 = call i32 @FETCH_DOUBLE(i8** %100, i32* %102)
  %104 = load i8**, i8*** %3, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 6
  %107 = call i32 @FETCH_DOUBLE(i8** %104, i32* %106)
  %108 = load i8**, i8*** %3, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  %111 = call i32 @FETCH_DOUBLE(i8** %108, i32* %110)
  %112 = load i8**, i8*** %3, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 4
  %115 = call i32 @FETCH_DOUBLE(i8** %112, i32* %114)
  %116 = load i8**, i8*** %3, align 8
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 3
  %119 = call i32 @FETCH_DOUBLE(i8** %116, i32* %118)
  %120 = load i8**, i8*** %3, align 8
  %121 = call i32 @get_lsb_uint16(i8** %120)
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load i8**, i8*** %3, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %124, align 8
  %127 = load i8, i8* %125, align 1
  %128 = zext i8 %127 to i32
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load i8**, i8*** %3, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %131, align 8
  %134 = load i8, i8* %132, align 1
  %135 = zext i8 %134 to i32
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  ret void
}

declare dso_local i64 @get_lsb_short(i8**) #1

declare dso_local i32 @get_lsb_int16(i8**) #1

declare dso_local i32 @get_mbg_tgps(i8**, i32*) #1

declare dso_local i32 @FETCH_DOUBLE(i8**, i32*) #1

declare dso_local i32 @get_lsb_uint16(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
