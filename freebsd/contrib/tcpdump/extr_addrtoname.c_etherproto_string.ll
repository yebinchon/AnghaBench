; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_etherproto_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_etherproto_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32, i8*, %struct.hnamemem* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)* }

@eprototable = common dso_local global %struct.hnamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@hex = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [31 x i8] c"etherproto_string: strdup(buf)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @etherproto_string(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hnamemem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [5 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.hnamemem*, %struct.hnamemem** @eprototable, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @HASHNAMESIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %11, i64 %16
  store %struct.hnamemem* %17, %struct.hnamemem** %7, align 8
  br label %18

18:                                               ; preds = %34, %2
  %19 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %20 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %19, i32 0, i32 2
  %21 = load %struct.hnamemem*, %struct.hnamemem** %20, align 8
  %22 = icmp ne %struct.hnamemem* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %25 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %31 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %3, align 8
  br label %108

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %36 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %35, i32 0, i32 2
  %37 = load %struct.hnamemem*, %struct.hnamemem** %36, align 8
  store %struct.hnamemem* %37, %struct.hnamemem** %7, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %41 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = call %struct.hnamemem* @newhnamemem(%struct.TYPE_5__* %42)
  %44 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %45 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %44, i32 0, i32 2
  store %struct.hnamemem* %43, %struct.hnamemem** %45, align 8
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  store i8* %46, i8** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @NTOHS(i32 %47)
  %49 = load i8**, i8*** @hex, align 8
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 12
  %52 = and i32 %51, 15
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %49, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = ptrtoint i8* %55 to i8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %6, align 8
  store i8 %56, i8* %57, align 1
  %59 = load i8**, i8*** @hex, align 8
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 8
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %59, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = ptrtoint i8* %65 to i8
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8**, i8*** @hex, align 8
  %70 = load i32, i32* %5, align 4
  %71 = ashr i32 %70, 4
  %72 = and i32 %71, 15
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %69, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %75 to i8
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %6, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i8**, i8*** @hex, align 8
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 15
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = ptrtoint i8* %84 to i8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %6, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %6, align 8
  store i8 0, i8* %88, align 1
  %90 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %91 = call i8* @strdup(i8* %90)
  %92 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %93 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %95 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %38
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = call i32 %101(%struct.TYPE_5__* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %98, %38
  %105 = load %struct.hnamemem*, %struct.hnamemem** %7, align 8
  %106 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %104, %29
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local %struct.hnamemem* @newhnamemem(%struct.TYPE_5__*) #1

declare dso_local i32 @NTOHS(i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
