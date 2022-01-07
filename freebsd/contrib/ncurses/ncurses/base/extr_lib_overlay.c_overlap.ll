; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_overlay.c_overlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_overlay.c_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"overlap(%p,%p,%d)\00", align 1
@curses = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"src : begy %ld, begx %ld, maxy %ld, maxx %ld\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"dst : begy %ld, begx %ld, maxy %ld, maxx %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i32)* @overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlap(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* @ERR, align 4
  store i32 %23, i32* %8, align 4
  %24 = call i8* @T_CALLED(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = bitcast %struct.TYPE_6__* %25 to i8*
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %28 = bitcast %struct.TYPE_6__* %27 to i8*
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @T(i8* %31)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %168

35:                                               ; preds = %3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = icmp ne %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %168

38:                                               ; preds = %35
  %39 = load i32, i32* @curses, align 4
  %40 = call i32 @_nc_lock_global(i32 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @T(i8* %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = call i32 @T(i8* %75)
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %12, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %13, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %99, %102
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %165

112:                                              ; preds = %38
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %165

116:                                              ; preds = %112
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp sge i32 %117, %118
  br i1 %119, label %120, label %165

120:                                              ; preds = %116
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %12, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %165

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %14, align 4
  %127 = call i32 @max(i32 %125, i32 %126)
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %127, %128
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @max(i32 %130, i32 %131)
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @max(i32 %135, i32 %136)
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @max(i32 %140, i32 %141)
  %143 = load i32, i32* %13, align 4
  %144 = sub nsw i32 %142, %143
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @min(i32 %145, i32 %146)
  %148 = load i32, i32* %14, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @min(i32 %150, i32 %151)
  %153 = load i32, i32* %13, align 4
  %154 = sub nsw i32 %152, %153
  store i32 %154, i32* %22, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* %20, align 4
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %22, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @copywin(%struct.TYPE_6__* %155, %struct.TYPE_6__* %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i32 %162, i32 %163)
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %124, %120, %116, %112, %38
  %166 = load i32, i32* @curses, align 4
  %167 = call i32 @_nc_unlock_global(i32 %166)
  br label %168

168:                                              ; preds = %165, %35, %3
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @returnCode(i32 %169)
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @T(i8*) #1

declare dso_local i8* @T_CALLED(i8*) #1

declare dso_local i32 @_nc_lock_global(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @copywin(%struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_nc_unlock_global(i32) #1

declare dso_local i32 @returnCode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
