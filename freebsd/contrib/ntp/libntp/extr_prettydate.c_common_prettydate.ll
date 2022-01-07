; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_prettydate.c_common_prettydate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_prettydate.c_common_prettydate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.tm = type { i64, i64, i32, i32, i32, i64, i32 }
%struct.calendar = type { i64, i32, i32, i32, i32, i64, i32 }

@common_prettydate.pfmt0 = internal constant [47 x i8] c"%08lx.%08lx  %s, %s %2d %4d %2d:%02d:%02d.%03u\00", align 16
@common_prettydate.pfmt1 = internal constant [52 x i8] c"%08lx.%08lx [%s, %s %2d %4d %2d:%02d:%02d.%03u UTC]\00", align 16
@.str = private unnamed_addr constant [10 x i8] c"(no time)\00", align 1
@LIB_BUFLENGTH = common dso_local global i32 0, align 4
@daynames = common dso_local global i32* null, align 8
@months = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32)* @common_prettydate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @common_prettydate(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.calendar, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @LIB_GETBUF(i8* %12)
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* @LIB_BUFLENGTH, align 4
  %26 = call i32 @strlcpy(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %3, align 8
  br label %134

28:                                               ; preds = %18, %2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sdiv i64 %34, 4294967
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp uge i32 %37, 1000
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load i32, i32* %8, align 4
  %41 = sub i32 %40, 1000
  store i32 %41, i32* %8, align 4
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %39, %28
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @ntpcal_ntp_to_time(i64 %45, i32* null)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.tm* @get_struct_tm(i32* %10, i32 %47)
  store %struct.tm* %48, %struct.tm** %7, align 8
  %49 = load %struct.tm*, %struct.tm** %7, align 8
  %50 = icmp ne %struct.tm* %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %44
  %52 = call i32 @ntpcal_time_to_date(%struct.calendar* %11, i32* %10)
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @LIB_BUFLENGTH, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @common_prettydate.pfmt1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @common_prettydate.pfmt0, i64 0, i64 0)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** @daynames, align 8
  %68 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @months, align 8
  %73 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.calendar, %struct.calendar* %11, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @snprintf(i8* %53, i32 %54, i8* %58, i32 %62, i32 %66, i32 %71, i32 %78, i32 %80, i64 %82, i32 %84, i32 %86, i32 %88, i32 %89)
  br label %132

91:                                               ; preds = %44
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* @LIB_BUFLENGTH, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** @daynames, align 8
  %103 = load %struct.tm*, %struct.tm** %7, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** @months, align 8
  %109 = load %struct.tm*, %struct.tm** %7, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tm*, %struct.tm** %7, align 8
  %115 = getelementptr inbounds %struct.tm, %struct.tm* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tm*, %struct.tm** %7, align 8
  %118 = getelementptr inbounds %struct.tm, %struct.tm* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 1900, %119
  %121 = load %struct.tm*, %struct.tm** %7, align 8
  %122 = getelementptr inbounds %struct.tm, %struct.tm* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.tm*, %struct.tm** %7, align 8
  %125 = getelementptr inbounds %struct.tm, %struct.tm* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.tm*, %struct.tm** %7, align 8
  %128 = getelementptr inbounds %struct.tm, %struct.tm* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @snprintf(i8* %92, i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @common_prettydate.pfmt0, i64 0, i64 0), i32 %97, i32 %101, i32 %107, i32 %113, i32 %116, i64 %120, i32 %123, i32 %126, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %91, %51
  %133 = load i8*, i8** %6, align 8
  store i8* %133, i8** %3, align 8
  br label %134

134:                                              ; preds = %132, %23
  %135 = load i8*, i8** %3, align 8
  ret i8* %135
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @ntpcal_ntp_to_time(i64, i32*) #1

declare dso_local %struct.tm* @get_struct_tm(i32*, i32) #1

declare dso_local i32 @ntpcal_time_to_date(%struct.calendar*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
