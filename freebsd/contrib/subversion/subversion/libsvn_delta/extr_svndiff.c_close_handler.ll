; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_close_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_delta/extr_svndiff.c_close_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decode_baton = type { i32, i32, i32, i32* (i32*, i32)*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@SVN_ERR_SVNDIFF_UNEXPECTED_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unexpected end of svndiff input\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @close_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_handler(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.decode_baton*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.decode_baton*
  store %struct.decode_baton* %7, %struct.decode_baton** %4, align 8
  %8 = load %struct.decode_baton*, %struct.decode_baton** %4, align 8
  %9 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load %struct.decode_baton*, %struct.decode_baton** %4, align 8
  %14 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = load %struct.decode_baton*, %struct.decode_baton** %4, align 8
  %19 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17, %12
  %25 = load i32, i32* @SVN_ERR_SVNDIFF_UNEXPECTED_END, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = call i32* @svn_error_create(i32 %25, i32* null, i32 %26)
  store i32* %27, i32** %2, align 8
  br label %41

28:                                               ; preds = %17, %1
  %29 = load %struct.decode_baton*, %struct.decode_baton** %4, align 8
  %30 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %29, i32 0, i32 3
  %31 = load i32* (i32*, i32)*, i32* (i32*, i32)** %30, align 8
  %32 = load %struct.decode_baton*, %struct.decode_baton** %4, align 8
  %33 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32* %31(i32* null, i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load %struct.decode_baton*, %struct.decode_baton** %4, align 8
  %37 = getelementptr inbounds %struct.decode_baton, %struct.decode_baton* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @svn_pool_destroy(i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32* %40, i32** %2, align 8
  br label %41

41:                                               ; preds = %28, %24
  %42 = load i32*, i32** %2, align 8
  ret i32* %42
}

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
