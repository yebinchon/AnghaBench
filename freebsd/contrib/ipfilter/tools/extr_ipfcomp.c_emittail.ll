; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipfcomp.c_emittail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ipfilter/tools/extr_ipfcomp.c_emittail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, %struct.TYPE_3__* }

@cfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"\0Aint ipfrule_add()\0A{\0A\09int err;\0A\0A\00", align 1
@groups = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"\09err = ipfrule_add_%s_%s();\0A\09if (err != 0)\0A\09\09return err;\0A\00", align 1
@FR_INQUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09return 0;\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\0Aint ipfrule_remove()\0A{\0A\09int err;\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"\09err = ipfrule_remove_%s_%s();\0A\09if (err != 0)\0A\09\09return err;\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @emittail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emittail() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load i32, i32* @cfile, align 4
  %3 = call i32 (i32, i8*, ...) @fprintf(i32 %2, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @groups, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %1, align 8
  br label %5

5:                                                ; preds = %22, %0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %5
  %9 = load i32, i32* @cfile, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FR_INQUE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %20)
  br label %22

22:                                               ; preds = %8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %1, align 8
  br label %5

26:                                               ; preds = %5
  %27 = load i32, i32* @cfile, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @cfile, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* @cfile, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @groups, align 8
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %1, align 8
  br label %34

34:                                               ; preds = %51, %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = load i32, i32* @cfile, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FR_INQUE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %46, i8* %49)
  br label %51

51:                                               ; preds = %37
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %1, align 8
  br label %34

55:                                               ; preds = %34
  %56 = load i32, i32* @cfile, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* @cfile, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
