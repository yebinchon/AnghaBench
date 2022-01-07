; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_status3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_status3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status3_wrapper_baton = type { i8*, i32, i32 }

@status3_wrapper_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_status3(i32* %0, i8* %1, i32* %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.status3_wrapper_baton, align 8
  store i32* %0, i32** %14, align 8
  store i8* %1, i8** %15, align 8
  store i32* %2, i32** %16, align 8
  store i32 %3, i32* %17, align 4
  store i8* %4, i8** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %28 = bitcast %struct.status3_wrapper_baton* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 16, i1 false)
  %29 = load i32, i32* %17, align 4
  %30 = getelementptr inbounds %struct.status3_wrapper_baton, %struct.status3_wrapper_baton* %27, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %18, align 8
  %32 = getelementptr inbounds %struct.status3_wrapper_baton, %struct.status3_wrapper_baton* %27, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i32*, i32** %16, align 8
  %36 = load i32, i32* @status3_wrapper_func, align 4
  %37 = load i32, i32* %19, align 4
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %22, align 4
  %41 = load i32, i32* %23, align 4
  %42 = load i32*, i32** %24, align 8
  %43 = load i32*, i32** %25, align 8
  %44 = load i32*, i32** %26, align 8
  %45 = call i32* @svn_client_status4(i32* %33, i8* %34, i32* %35, i32 %36, %struct.status3_wrapper_baton* %27, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32* %42, i32* %43, i32* %44)
  ret i32* %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @svn_client_status4(i32*, i8*, i32*, i32, %struct.status3_wrapper_baton*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
