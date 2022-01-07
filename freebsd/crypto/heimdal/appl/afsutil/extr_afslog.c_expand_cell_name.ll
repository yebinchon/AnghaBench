; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_expand_cell_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/afsutil/extr_afslog.c_expand_cell_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_PATH_CELLSERVDB = common dso_local global i8* null, align 8
@_PATH_ARLA_CELLSERVDB = common dso_local global i8* null, align 8
@_PATH_OPENAFS_DEBIAN_CELLSERVDB = common dso_local global i8* null, align 8
@_PATH_ARLA_DEBIAN_CELLSERVDB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @expand_cell_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @expand_cell_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca [5 x i8*], align 16
  store i8* %0, i8** %3, align 8
  %8 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  %9 = load i8*, i8** @_PATH_CELLSERVDB, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds i8*, i8** %8, i64 1
  %11 = load i8*, i8** @_PATH_ARLA_CELLSERVDB, align 8
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  %13 = load i8*, i8** @_PATH_OPENAFS_DEBIAN_CELLSERVDB, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  %15 = load i8*, i8** @_PATH_ARLA_DEBIAN_CELLSERVDB, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds [5 x i8*], [5 x i8*]* %7, i64 0, i64 0
  store i8** %17, i8*** %6, align 8
  br label %18

18:                                               ; preds = %40, %1
  %19 = load i8**, i8*** %6, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i8**, i8*** %6, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %40

29:                                               ; preds = %22
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @expand_one_file(i32* %30, i8* %31)
  store i8* %32, i8** %5, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @fclose(i32* %33)
  %35 = load i8*, i8** %5, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  store i8* %38, i8** %2, align 8
  br label %45

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i8**, i8*** %6, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %6, align 8
  br label %18

43:                                               ; preds = %18
  %44 = load i8*, i8** %3, align 8
  store i8* %44, i8** %2, align 8
  br label %45

45:                                               ; preds = %43, %37
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @expand_one_file(i32*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
