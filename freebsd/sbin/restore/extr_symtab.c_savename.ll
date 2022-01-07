; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_savename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_symtab.c_savename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.strhdr* }
%struct.strhdr = type { %struct.strhdr* }

@.str = private unnamed_addr constant [10 x i8] c"bad name\0A\00", align 1
@strtblhdr = common dso_local global %struct.TYPE_2__* null, align 8
@STRTBLINCR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no space for string table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @savename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.strhdr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @strtblhdr, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @STRTBLINCR, align 8
  %16 = udiv i64 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.strhdr*, %struct.strhdr** %18, align 8
  store %struct.strhdr* %19, %struct.strhdr** %3, align 8
  %20 = load %struct.strhdr*, %struct.strhdr** %3, align 8
  %21 = icmp ne %struct.strhdr* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %10
  %23 = load %struct.strhdr*, %struct.strhdr** %3, align 8
  %24 = getelementptr inbounds %struct.strhdr, %struct.strhdr* %23, i32 0, i32 0
  %25 = load %struct.strhdr*, %struct.strhdr** %24, align 8
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @strtblhdr, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @STRTBLINCR, align 8
  %29 = udiv i64 %27, %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.strhdr* %25, %struct.strhdr** %31, align 8
  %32 = load %struct.strhdr*, %struct.strhdr** %3, align 8
  %33 = bitcast %struct.strhdr* %32 to i8*
  store i8* %33, i8** %5, align 8
  br label %43

34:                                               ; preds = %10
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @allocsize(i64 %35)
  %37 = call i8* @malloc(i32 %36)
  store i8* %37, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %34
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i8*, i8** %5, align 8
  %45 = load i8*, i8** %2, align 8
  %46 = call i32 @strcpy(i8* %44, i8* %45)
  %47 = load i8*, i8** %5, align 8
  ret i8* %47
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @allocsize(i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
