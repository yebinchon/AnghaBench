; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_atomic.c_svn_atomic__init_once_no_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_atomic.c_svn_atomic__init_once_no_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32 }

@str_init_func_wrapper = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Couldn't perform atomic initialization\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @svn_atomic__init_once_no_error(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* null, i8** %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @str_init_func_wrapper, align 4
  %16 = call i64 @init_once(i32* %14, i32 %15, %struct.TYPE_3__* %8)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %27

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %27

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %4, align 8
  br label %27

27:                                               ; preds = %24, %23, %18
  %28 = load i8*, i8** %4, align 8
  ret i8* %28
}

declare dso_local i64 @init_once(i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
