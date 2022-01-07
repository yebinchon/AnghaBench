; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_read_stream_uint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_packed_data.c_read_stream_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_ERR_CORRUPT_PACKED_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unexpected end of stream\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Integer representation too long\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*)* @read_stream_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @read_stream_uint(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %37, %2
  store i32 1, i32* %9, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @svn_stream_read_full(i32* %11, i8* %8, i32* %9)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* @SVN_ERR_CORRUPT_PACKED_DATA, align 4
  %18 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = call i32* @svn_error_create(i32 %17, i32* null, i32 %18)
  store i32* %19, i32** %3, align 8
  br label %45

20:                                               ; preds = %10
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 127
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 7
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 64
  br i1 %31, label %32, label %36

32:                                               ; preds = %20
  %33 = load i32, i32* @SVN_ERR_CORRUPT_PACKED_DATA, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %35 = call i32* @svn_error_create(i32 %33, i32* null, i32 %34)
  store i32* %35, i32** %3, align 8
  br label %45

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sge i32 %39, 128
  br i1 %40, label %10, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %41, %32, %16
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_read_full(i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
