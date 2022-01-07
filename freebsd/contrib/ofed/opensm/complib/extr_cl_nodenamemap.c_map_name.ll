; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_nodenamemap.c_map_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/complib/extr_cl_nodenamemap.c_map_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\22#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @map_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_name(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i8* @strtok(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  %18 = call %struct.TYPE_3__* @malloc(i32 8)
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strdup(i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = bitcast %struct.TYPE_3__* %34 to i32*
  %36 = call i32 @cl_qmap_insert(i32* %30, i32 %33, i32* %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %22, %21, %16
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @cl_qmap_insert(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
