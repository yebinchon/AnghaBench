; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c_getgrent_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getgrent.c_getgrent_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i32 }

@getgrent_r_dtab = common dso_local global i32 0, align 4
@NSDB_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"getgrent_r\00", align 1
@defaultsrc = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getgrent_r(%struct.group* %0, i8* %1, i64 %2, %struct.group** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.group**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.group* %0, %struct.group** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.group** %3, %struct.group*** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.group**, %struct.group*** %9, align 8
  store %struct.group* null, %struct.group** %12, align 8
  %13 = load %struct.group**, %struct.group*** %9, align 8
  %14 = load i32, i32* @getgrent_r_dtab, align 4
  %15 = load i32, i32* @NSDB_GROUP, align 4
  %16 = load i32, i32* @defaultsrc, align 4
  %17 = load %struct.group*, %struct.group** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @_nsdispatch(%struct.group** %13, i32 %14, i32 %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, %struct.group* %17, i8* %18, i64 %19, i32* %11)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @NS_SUCCESS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @_nsdispatch(%struct.group**, i32, i32, i8*, i32, %struct.group*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
