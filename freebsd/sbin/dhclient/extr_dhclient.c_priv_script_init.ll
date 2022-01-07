; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_priv_script_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dhclient.c_priv_script_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interface_info = type { i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32** }

@ifi = common dso_local global %struct.interface_info* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"script_init: no memory for environment\00", align 1
@CLIENT_PATH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"interface\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"medium\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"reason\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_script_init(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.interface_info*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.interface_info*, %struct.interface_info** @ifi, align 8
  store %struct.interface_info* %6, %struct.interface_info** %5, align 8
  %7 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %8 = icmp ne %struct.interface_info* %7, null
  br i1 %8, label %9, label %90

9:                                                ; preds = %2
  %10 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %11 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 100, i32* %13, align 8
  %14 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %15 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32**, i32*** %17, align 8
  %19 = icmp eq i32** %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %9
  %21 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %22 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32** @malloc(i32 %28)
  %30 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %31 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32** %29, i32*** %33, align 8
  br label %34

34:                                               ; preds = %20, %9
  %35 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %36 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = icmp eq i32** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* @CLIENT_PATH, align 4
  %45 = call i32* @strdup(i32 %44)
  %46 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %47 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  store i32* %45, i32** %51, align 8
  %52 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %53 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = getelementptr inbounds i32*, i32** %56, i64 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %43
  %63 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %64 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32**, i32*** %66, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 1
  store i32* null, i32** %68, align 8
  %69 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %70 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %73 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @script_set_env(%struct.TYPE_2__* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  %76 = load i8*, i8** %4, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %62
  %79 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %80 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @script_set_env(%struct.TYPE_2__* %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %78, %62
  %85 = load %struct.interface_info*, %struct.interface_info** %5, align 8
  %86 = getelementptr inbounds %struct.interface_info, %struct.interface_info* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @script_set_env(%struct.TYPE_2__* %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %84, %2
  ret void
}

declare dso_local i32** @malloc(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32* @strdup(i32) #1

declare dso_local i32 @script_set_env(%struct.TYPE_2__*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
