; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_compute_offsets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_write_entry.c_compute_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABSENT_STRING = common dso_local global i8* null, align 8
@CANCELLED_STRING = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"put Strings[%d]=%s(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i16*)* @compute_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_offsets(i8** %0, i64 %1, i16* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8** %0, i8*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i16* %2, i16** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %63, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = load i8**, i8*** %4, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  %18 = load i8*, i8** @ABSENT_STRING, align 8
  %19 = icmp eq i8* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i16*, i16** %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i16, i16* %21, i64 %22
  store i16 -1, i16* %23, align 2
  br label %62

24:                                               ; preds = %13
  %25 = load i8**, i8*** %4, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i8*, i8** %25, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** @CANCELLED_STRING, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i16*, i16** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i16, i16* %32, i64 %33
  store i16 -2, i16* %34, align 2
  br label %61

35:                                               ; preds = %24
  %36 = load i32, i32* %7, align 4
  %37 = trunc i32 %36 to i16
  %38 = load i16*, i16** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i16, i16* %38, i64 %39
  store i16 %37, i16* %40, align 2
  %41 = load i8**, i8*** %4, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = trunc i64 %45 to i32
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i64, i64* %8, align 8
  %51 = trunc i64 %50 to i32
  %52 = load i8**, i8*** %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @_nc_visbuf(i8* %55)
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @TRACE_OUT(i8* %59)
  br label %61

61:                                               ; preds = %35, %31
  br label %62

62:                                               ; preds = %61, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  br label %9

66:                                               ; preds = %9
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @TRACE_OUT(i8*) #1

declare dso_local i32 @_nc_visbuf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
