; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_ensure_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_copy_foreign.c_ensure_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton_t = type { %struct.TYPE_2__*, i32, i32, i64, %struct.dir_baton_t* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.dir_baton_t*, i32*)* @ensure_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ensure_added(%struct.dir_baton_t* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dir_baton_t*, align 8
  %5 = alloca i32*, align 8
  store %struct.dir_baton_t* %0, %struct.dir_baton_t** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %7 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %11, i32** %3, align 8
  br label %54

12:                                               ; preds = %2
  %13 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %14 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %13, i32 0, i32 4
  %15 = load %struct.dir_baton_t*, %struct.dir_baton_t** %14, align 8
  %16 = icmp ne %struct.dir_baton_t* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %19 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %18, i32 0, i32 4
  %20 = load %struct.dir_baton_t*, %struct.dir_baton_t** %19, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32* @ensure_added(%struct.dir_baton_t* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32* %22)
  br label %24

24:                                               ; preds = %17, %12
  %25 = load i64, i64* @TRUE, align 8
  %26 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %27 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %26, i32 0, i32 3
  store i64 %25, i64* %27, align 8
  %28 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %29 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %34 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %37 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i64, i64* @TRUE, align 8
  %40 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %41 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dir_baton_t*, %struct.dir_baton_t** %4, align 8
  %46 = getelementptr inbounds %struct.dir_baton_t, %struct.dir_baton_t* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  %51 = call i32* @svn_wc_add_from_disk3(i32 %32, i32 %35, i32 %38, i64 %39, i32 %44, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32* %51)
  %53 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %53, i32** %3, align 8
  br label %54

54:                                               ; preds = %24, %10
  %55 = load i32*, i32** %3, align 8
  ret i32* %55
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc_add_from_disk3(i32, i32, i32, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
