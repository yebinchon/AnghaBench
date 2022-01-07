; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_fileargs/extr_cap_fileargs.c_fileargs_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOTCAPABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@capflags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"operations\00", align 1
@allowed_operations = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@capmode = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"cap_rights\00", align 1
@caprightsp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @fileargs_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fileargs_limit(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @ENOTCAPABLE, align 4
  store i32 %9, i32* %3, align 4
  br label %28

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @dnvlist_get_number(i32* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @capflags, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @dnvlist_get_number(i32* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* @allowed_operations, align 4
  %17 = load i32, i32* @capflags, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @nvlist_get_number(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64 %23, i64* @capmode, align 8
  br label %25

24:                                               ; preds = %10
  store i64 0, i64* @capmode, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @dnvlist_get_binary(i32* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, i32 0)
  store i32 %27, i32* @caprightsp, align 4
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %8
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @dnvlist_get_number(i32*, i8*, i32) #1

declare dso_local i64 @nvlist_get_number(i32*, i8*) #1

declare dso_local i32 @dnvlist_get_binary(i32*, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
