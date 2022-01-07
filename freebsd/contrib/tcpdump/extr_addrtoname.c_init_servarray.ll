; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_servarray.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_init_servarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32, %struct.hnamemem*, i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)*, i64 }
%struct.servent = type { i8*, i32, i32 }

@HASHNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@tporttable = common dso_local global %struct.hnamemem* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@uporttable = common dso_local global %struct.hnamemem* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"init_servarray: strdup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @init_servarray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_servarray(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.servent*, align 8
  %4 = alloca %struct.hnamemem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [11 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  br label %8

8:                                                ; preds = %86, %41, %1
  %9 = call %struct.servent* (...) @getservent()
  store %struct.servent* %9, %struct.servent** %3, align 8
  %10 = icmp ne %struct.servent* %9, null
  br i1 %10, label %11, label %94

11:                                               ; preds = %8
  %12 = load %struct.servent*, %struct.servent** %3, align 8
  %13 = getelementptr inbounds %struct.servent, %struct.servent* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HASHNAMESIZE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = and i32 %16, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.servent*, %struct.servent** %3, align 8
  %21 = getelementptr inbounds %struct.servent, %struct.servent* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %11
  %26 = load %struct.hnamemem*, %struct.hnamemem** @tporttable, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %26, i64 %28
  store %struct.hnamemem* %29, %struct.hnamemem** %4, align 8
  br label %43

30:                                               ; preds = %11
  %31 = load %struct.servent*, %struct.servent** %3, align 8
  %32 = getelementptr inbounds %struct.servent, %struct.servent* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @strcmp(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.hnamemem*, %struct.hnamemem** @uporttable, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %37, i64 %39
  store %struct.hnamemem* %40, %struct.hnamemem** %4, align 8
  br label %42

41:                                               ; preds = %30
  br label %8

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %49, %43
  %45 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %46 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %51 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %50, i32 0, i32 1
  %52 = load %struct.hnamemem*, %struct.hnamemem** %51, align 8
  store %struct.hnamemem* %52, %struct.hnamemem** %4, align 8
  br label %44

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @snprintf(i8* %59, i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = getelementptr inbounds [11 x i8], [11 x i8]* %6, i64 0, i64 0
  %63 = call i8* @strdup(i8* %62)
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %66 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  br label %75

67:                                               ; preds = %53
  %68 = load %struct.servent*, %struct.servent** %3, align 8
  %69 = getelementptr inbounds %struct.servent, %struct.servent* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @strdup(i8* %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %74 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %73, i32 0, i32 2
  store i32* %72, i32** %74, align 8
  br label %75

75:                                               ; preds = %67, %58
  %76 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %77 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %82, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %85 = call i32 %83(%struct.TYPE_5__* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %89 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %91 = call %struct.hnamemem* @newhnamemem(%struct.TYPE_5__* %90)
  %92 = load %struct.hnamemem*, %struct.hnamemem** %4, align 8
  %93 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %92, i32 0, i32 1
  store %struct.hnamemem* %91, %struct.hnamemem** %93, align 8
  br label %8

94:                                               ; preds = %8
  %95 = call i32 (...) @endservent()
  ret void
}

declare dso_local %struct.servent* @getservent(...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local %struct.hnamemem* @newhnamemem(%struct.TYPE_5__*) #1

declare dso_local i32 @endservent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
