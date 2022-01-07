; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_lock_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_local/extr_ra_plugin.c_lock_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_baton_t = type { i32, i32, i64 (i32, i8*, i32, i32*, i32*, i32*)*, i64, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*, i32*)* @lock_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lock_cb(i8* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lock_baton_t*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.lock_baton_t*
  store %struct.lock_baton_t* %13, %struct.lock_baton_t** %11, align 8
  %14 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %15 = icmp ne %struct.lock_baton_t* %14, null
  br i1 %15, label %16, label %48

16:                                               ; preds = %5
  %17 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %18 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %16
  %22 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %23 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %22, i32 0, i32 2
  %24 = load i64 (i32, i8*, i32, i32*, i32*, i32*)*, i64 (i32, i8*, i32, i32*, i32*, i32*)** %23, align 8
  %25 = icmp ne i64 (i32, i8*, i32, i32*, i32*, i32*)* %24, null
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %28 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i8* @svn_fspath__skip_ancestor(i32 %29, i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %33 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %32, i32 0, i32 2
  %34 = load i64 (i32, i8*, i32, i32*, i32*, i32*)*, i64 (i32, i8*, i32, i32*, i32*, i32*)** %33, align 8
  %35 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %36 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %40 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 %34(i32 %37, i8* %38, i32 %41, i32* %42, i32* %43, i32* %44)
  %46 = load %struct.lock_baton_t*, %struct.lock_baton_t** %11, align 8
  %47 = getelementptr inbounds %struct.lock_baton_t, %struct.lock_baton_t* %46, i32 0, i32 3
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %26, %21, %16, %5
  %49 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %49
}

declare dso_local i8* @svn_fspath__skip_ancestor(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
