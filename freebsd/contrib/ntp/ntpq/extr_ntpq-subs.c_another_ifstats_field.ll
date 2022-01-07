; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_another_ifstats_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_ntpq-subs.c_another_ifstats_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@IFSTATS_FIELDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%3u %-24.24s %c %4x %3u %2u %6u %6u %6u %5u %8d\0A    %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"    %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, i32*)* @another_ifstats_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @another_ifstats_field(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @IFSTATS_FIELDS, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %77

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 12
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 46, i32 68
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 11
  %56 = call i8* @sptoa(i32* %55)
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %20, i8* %23, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47, i32 %50, i32 %53, i8* %56)
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 10
  %60 = call i32 @SOCK_UNSPEC(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %16
  %63 = load i32*, i32** %6, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 10
  %66 = call i8* @sptoa(i32* %65)
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %62, %16
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %7, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = call i32 @ZERO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %68, %15
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @sptoa(i32*) #1

declare dso_local i32 @SOCK_UNSPEC(i32*) #1

declare dso_local i32 @ZERO(%struct.TYPE_4__* byval(%struct.TYPE_4__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
