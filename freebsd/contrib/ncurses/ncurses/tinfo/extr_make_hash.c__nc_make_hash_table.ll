; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_make_hash.c__nc_make_hash_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_make_hash.c__nc_make_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.name_table_entry = type { i32, i32 }

@HASHTABSIZE = common dso_local global i16 0, align 2
@CAPTABSIZE = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [39 x i8] c"/* %d collisions out of %d entries */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.name_table_entry*, i32*)* @_nc_make_hash_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_nc_make_hash_table(%struct.name_table_entry* %0, i32* %1) #0 {
  %3 = alloca %struct.name_table_entry*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.name_table_entry* %0, %struct.name_table_entry** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i16 0, i16* %5, align 2
  br label %8

8:                                                ; preds = %19, %2
  %9 = load i16, i16* %5, align 2
  %10 = sext i16 %9 to i32
  %11 = load i16, i16* @HASHTABSIZE, align 2
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load i32*, i32** %4, align 8
  %16 = load i16, i16* %5, align 2
  %17 = sext i16 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 -1, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i16, i16* %5, align 2
  %21 = add i16 %20, 1
  store i16 %21, i16* %5, align 2
  br label %8

22:                                               ; preds = %8
  store i16 0, i16* %5, align 2
  br label %23

23:                                               ; preds = %71, %22
  %24 = load i16, i16* %5, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @CAPTABSIZE, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %23
  %30 = load %struct.name_table_entry*, %struct.name_table_entry** %3, align 8
  %31 = load i16, i16* %5, align 2
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.name_table_entry, %struct.name_table_entry* %30, i64 %32
  %34 = getelementptr inbounds %struct.name_table_entry, %struct.name_table_entry* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @hash_function(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %29
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.name_table_entry*, %struct.name_table_entry** %3, align 8
  %60 = load i16, i16* %5, align 2
  %61 = sext i16 %60 to i64
  %62 = getelementptr inbounds %struct.name_table_entry, %struct.name_table_entry* %59, i64 %61
  %63 = getelementptr inbounds %struct.name_table_entry, %struct.name_table_entry* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %46
  %65 = load i16, i16* %5, align 2
  %66 = sext i16 %65 to i32
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %64
  %72 = load i16, i16* %5, align 2
  %73 = add i16 %72, 1
  store i16 %73, i16* %5, align 2
  br label %23

74:                                               ; preds = %23
  %75 = load i32, i32* %7, align 4
  %76 = load i16, i16* @CAPTABSIZE, align 2
  %77 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %75, i16 signext %76)
  ret void
}

declare dso_local i32 @hash_function(i32) #1

declare dso_local i32 @printf(i8*, i32, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
