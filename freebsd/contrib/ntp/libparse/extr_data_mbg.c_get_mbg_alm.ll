; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_data_mbg.c_get_mbg_alm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_data_mbg.c_get_mbg_alm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_mbg_alm(i8** %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i8**, i8*** %3, align 8
  %6 = call i64 @get_lsb_short(i8** %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 12
  store i64 %6, i64* %8, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = call i32 @get_lsb_int16(i8** %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 8
  %13 = load i8**, i8*** %3, align 8
  %14 = call i64 @get_lsb_short(i8** %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 10
  store i64 %14, i64* %16, align 8
  %17 = load i8**, i8*** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 9
  %20 = call i32 @get_mbg_tgps(i8** %17, i32* %19)
  %21 = load i8**, i8*** %3, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 8
  %24 = call i32 @FETCH_DOUBLE(i8** %21, i32* %23)
  %25 = load i8**, i8*** %3, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 7
  %28 = call i32 @FETCH_DOUBLE(i8** %25, i32* %27)
  %29 = load i8**, i8*** %3, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 6
  %32 = call i32 @FETCH_DOUBLE(i8** %29, i32* %31)
  %33 = load i8**, i8*** %3, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 5
  %36 = call i32 @FETCH_DOUBLE(i8** %33, i32* %35)
  %37 = load i8**, i8*** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  %40 = call i32 @FETCH_DOUBLE(i8** %37, i32* %39)
  %41 = load i8**, i8*** %3, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = call i32 @FETCH_DOUBLE(i8** %41, i32* %43)
  %45 = load i8**, i8*** %3, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = call i32 @FETCH_DOUBLE(i8** %45, i32* %47)
  %49 = load i8**, i8*** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @FETCH_DOUBLE(i8** %49, i32* %51)
  %53 = load i8**, i8*** %3, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @FETCH_DOUBLE(i8** %53, i32* %55)
  ret void
}

declare dso_local i64 @get_lsb_short(i8**) #1

declare dso_local i32 @get_lsb_int16(i8**) #1

declare dso_local i32 @get_mbg_tgps(i8**, i32*) #1

declare dso_local i32 @FETCH_DOUBLE(i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
