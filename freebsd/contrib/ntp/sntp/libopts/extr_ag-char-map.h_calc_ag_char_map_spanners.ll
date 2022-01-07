; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_ag-char-map.h_calc_ag_char_map_spanners.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libopts/extr_ag-char-map.h_calc_ag_char_map_spanners.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ag_char_map_masks = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"no memory for char-mapper span map\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@ag_char_map_table = common dso_local global i32* null, align 8
@ag_char_map_spanners = common dso_local global i8** null, align 8
@ag_char_map_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @calc_ag_char_map_spanners to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @calc_ag_char_map_spanners(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %6 = load i32*, i32** @ag_char_map_masks, align 8
  %7 = load i32, i32* %2, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, i32* %6, i64 %8
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = call i8* @malloc(i32 256)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fputs(i32 %15, i32 %16)
  %18 = load i32, i32* @EXIT_FAILURE, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @memset(i8* %21, i32 0, i32 256)
  br label %23

23:                                               ; preds = %41, %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32*, i32** @ag_char_map_table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 1, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %26
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load i8*, i8** %5, align 8
  %46 = load i8**, i8*** @ag_char_map_spanners, align 8
  %47 = load i32, i32* %2, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8*, i8** %46, i64 %48
  store i8* %45, i8** %49, align 8
  %50 = load i8**, i8*** @ag_char_map_spanners, align 8
  %51 = load i32, i32* %2, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  ret i8* %54
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
