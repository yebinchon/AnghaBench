; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_udpport_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtoname.c_udpport_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnamemem = type { i32, i8*, %struct.hnamemem* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*, i8*)* }

@uporttable = common dso_local global %struct.hnamemem* null, align 8
@HASHNAMESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"udpport_string: strdup(buf)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @udpport_string(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnamemem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [6 x i8], align 1
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.hnamemem*, %struct.hnamemem** @uporttable, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @HASHNAMESIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %10, i64 %15
  store %struct.hnamemem* %16, %struct.hnamemem** %6, align 8
  br label %17

17:                                               ; preds = %33, %2
  %18 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %19 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %18, i32 0, i32 2
  %20 = load %struct.hnamemem*, %struct.hnamemem** %19, align 8
  %21 = icmp ne %struct.hnamemem* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %24 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %30 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %3, align 8
  br label %66

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %35 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %34, i32 0, i32 2
  %36 = load %struct.hnamemem*, %struct.hnamemem** %35, align 8
  store %struct.hnamemem* %36, %struct.hnamemem** %6, align 8
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %40 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call %struct.hnamemem* @newhnamemem(%struct.TYPE_5__* %41)
  %43 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %44 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %43, i32 0, i32 2
  store %struct.hnamemem* %42, %struct.hnamemem** %44, align 8
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @snprintf(i8* %45, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %8, i64 0, i64 0
  %49 = call i8* @strdup(i8* %48)
  %50 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %51 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %53 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %37
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32 (%struct.TYPE_5__*, i8*)*, i32 (%struct.TYPE_5__*, i8*)** %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = call i32 %59(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %37
  %63 = load %struct.hnamemem*, %struct.hnamemem** %6, align 8
  %64 = getelementptr inbounds %struct.hnamemem, %struct.hnamemem* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %3, align 8
  br label %66

66:                                               ; preds = %62, %28
  %67 = load i8*, i8** %3, align 8
  ret i8* %67
}

declare dso_local %struct.hnamemem* @newhnamemem(%struct.TYPE_5__*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
