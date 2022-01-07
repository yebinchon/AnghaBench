; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_list_one_geom_by_provider.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/core/extr_geom.c_list_one_geom_by_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gmesh = type { i32 }
%struct.ggeom = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Cannot get GEOM tree\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot find provider '%s'.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Geom class: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @list_one_geom_by_provider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_one_geom_by_provider(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gmesh, align 4
  %4 = alloca %struct.ggeom*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i32 @geom_gettree(%struct.gmesh* %3)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @errc(i32 %10, i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %1
  %14 = load i8*, i8** %2, align 8
  %15 = call %struct.ggeom* @find_geom_by_provider(%struct.gmesh* %3, i8* %14)
  store %struct.ggeom* %15, %struct.ggeom** %4, align 8
  %16 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %17 = icmp eq %struct.ggeom* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @errx(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %24 = getelementptr inbounds %struct.ggeom, %struct.ggeom* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load %struct.ggeom*, %struct.ggeom** %4, align 8
  %30 = call i32 @list_one_geom(%struct.ggeom* %29)
  ret void
}

declare dso_local i32 @geom_gettree(%struct.gmesh*) #1

declare dso_local i32 @errc(i32, i32, i8*) #1

declare dso_local %struct.ggeom* @find_geom_by_provider(%struct.gmesh*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @list_one_geom(%struct.ggeom*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
