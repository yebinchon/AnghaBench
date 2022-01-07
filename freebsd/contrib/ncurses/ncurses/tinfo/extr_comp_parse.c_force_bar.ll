; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_comp_parse.c_force_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_comp_parse.c_force_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_NAME_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @force_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @force_bar(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i64 @strchr(i8* %6, i8 signext 124)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @MAX_NAME_SIZE, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i64, i64* @MAX_NAME_SIZE, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @strncpy(i8* %18, i8* %19, i64 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i64, i64* @MAX_NAME_SIZE, align 8
  %26 = call i32 @_nc_STRCPY(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i8*, i8** %3, align 8
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %17, %2
  %29 = load i8*, i8** %4, align 8
  ret i8* %29
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @_nc_STRCPY(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
