; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_captoinfo.c_save_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_captoinfo.c_save_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@my_string = common dso_local global i8* null, align 8
@my_length = common dso_local global i64 0, align 8
@MSG_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @save_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @save_string(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** @my_string, align 8
  %9 = ptrtoint i8* %7 to i64
  %10 = ptrtoint i8* %8 to i64
  %11 = sub i64 %9, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @strlen(i8* %13)
  %15 = add i64 %12, %14
  %16 = add i64 %15, 2
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @my_length, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %2
  %21 = load i8*, i8** @my_string, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  store i64 %24, i64* @my_length, align 8
  %25 = call i64 @_nc_doalloc(i8* %21, i64 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** @my_string, align 8
  %27 = load i8*, i8** @my_string, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @MSG_NO_MEMORY, align 4
  %31 = call i32 @_nc_err_abort(i32 %30)
  br label %32

32:                                               ; preds = %29, %20
  %33 = load i8*, i8** @my_string, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %32, %2
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i64, i64* @my_length, align 8
  %40 = load i64, i64* %5, align 8
  %41 = sub i64 %39, %40
  %42 = call i32 @_nc_STRCPY(i8* %37, i8* %38, i64 %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  ret i8* %46
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @_nc_doalloc(i8*, i64) #1

declare dso_local i32 @_nc_err_abort(i32) #1

declare dso_local i32 @_nc_STRCPY(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
