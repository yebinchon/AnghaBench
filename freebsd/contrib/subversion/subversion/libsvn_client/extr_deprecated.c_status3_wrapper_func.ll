; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_status3_wrapper_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_status3_wrapper_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.status3_wrapper_baton = type { i32, i32 (i32, i8*, i32*)* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32*, i32*)* @status3_wrapper_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @status3_wrapper_func(i8* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.status3_wrapper_baton*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.status3_wrapper_baton*
  store %struct.status3_wrapper_baton* %11, %struct.status3_wrapper_baton** %9, align 8
  %12 = load %struct.status3_wrapper_baton*, %struct.status3_wrapper_baton** %9, align 8
  %13 = getelementptr inbounds %struct.status3_wrapper_baton, %struct.status3_wrapper_baton* %12, i32 0, i32 1
  %14 = load i32 (i32, i8*, i32*)*, i32 (i32, i8*, i32*)** %13, align 8
  %15 = load %struct.status3_wrapper_baton*, %struct.status3_wrapper_baton** %9, align 8
  %16 = getelementptr inbounds %struct.status3_wrapper_baton, %struct.status3_wrapper_baton* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 %14(i32 %17, i8* %18, i32* %19)
  %21 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
